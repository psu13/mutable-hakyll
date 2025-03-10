--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll
import           Hakyll.Web.Feed

import qualified Text.Pandoc.Options as Options
import qualified Text.Pandoc.Extensions as Extensions
import qualified Data.Set as Set

import           System.FilePath.Posix  (takeBaseName,takeDirectory
                                         ,(</>),splitFileName)

--------------------------------------------------------------------------------
main :: IO ()
main = hakyll $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "robots.txt" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match (fromList ["about.md", "contact.md"]) $ do
        route $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/default.html" mutableCtx
            >>= relativizeUrls

    match "posts/*" $ do
        route   $ flatRoute
        compile $ postCompiler

    create ["archive.html"] $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll "posts/*"
            let archiveCtx =
                    listField "posts" postCtx (return posts) `mappend`
                    constField "title" "Archives"            `mappend`
                    mutableCtx

            makeItem ""
                >>= loadAndApplyTemplate "templates/archive.html" archiveCtx
                >>= loadAndApplyTemplate "templates/default.html" archiveCtx
                >>= relativizeUrls


    match "index.html" $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll "posts/*"
            let indexCtx =
                    listField "posts" postCtx (return posts) `mappend`
                    mutableCtx

            getResourceBody
                >>= applyAsTemplate indexCtx
                >>= loadAndApplyTemplate "templates/index.html" indexCtx
                >>= relativizeUrls

    match "templates/*" $ compile templateBodyCompiler

    create ["atom.xml"] $ do
        route idRoute
        compile $ do
            let feedCtx = baseFeedCtx `mappend` bodyField "description"
            posts <- fmap (take feedSize) . recentFirst =<<
                loadAllSnapshots "posts/*" "content"
            renderAtom myFeedConfiguration feedCtx posts

    create ["feeds/all.atom.xml"] $ do
        route idRoute
        compile $ do
            let feedCtx = baseFeedCtx `mappend` bodyField "description"
            posts <- fmap (take feedSize) . recentFirst =<<
                loadAllSnapshots "posts/*" "content"
            renderAtom myFeedConfiguration feedCtx posts

    create ["feeds/all.rss.xml"] $ do
        route idRoute
        compile $ do
            let feedCtx = baseFeedCtx `mappend` bodyField "description"
            posts <- fmap (take feedSize) . recentFirst =<<
                loadAllSnapshots "posts/*" "content"
            renderRss myFeedConfiguration feedCtx posts
--------------------------------------------------------------------------------

feedSize = 20

myFeedConfiguration = FeedConfiguration
    { feedTitle       = "Mutable States"
    , feedDescription = "Things I Write About the States of Things"
    , feedAuthorName  = "psu"
    , feedAuthorEmail = "psu"
    , feedRoot        = "https://mutable-states.com"
    }

copyright = "2025"

-- default post context for things here. this is mostly just to hold
-- the default ending copyright date above for convenience in the templates.
mutableCtx :: Context String
mutableCtx =
    constField "copyright" copyright `mappend`
    defaultContext

postCtx :: Context String
postCtx =
    dateField "date" "%B %e, %Y" `mappend`
    mutableCtx

-- this is a dirty hack to work around some weird time handling in the RSS/ATOM
-- feed generation code. If you don't provide an explicit time stamp for these
-- meta-data keys they get a time of "00:00:00 UT" which is ... useless. So hardwire
-- the time for 8pm UT which is when I usually post things anyway. It's
-- still a useless lie, but unfolding the date code on Context.hs is too hard.
baseFeedCtx :: Context String
baseFeedCtx =
    dateField "published" "%Y-%m-%d 20:00:00" `mappend`
    dateField "updated" "%Y-%m-%d 20:00:00" `mappend`
    postCtx

-- remove the parent directory "posts" from the URL path of the
-- final HTML pages to match the current convention at the old site.
-- this leaves the site a bit cluttered but who cares.
flatRoute :: Routes
flatRoute = customRoute createIndexRoute
  where
    createIndexRoute ident =
        takeBaseName p ++ ".html"
        where p=toFilePath ident

-- options for KaTeX math
-- this generates <span> tags for the math. you need to put the right script into
-- the templates for this to work out.
withKaTexMathOptions :: Extensions.Extensions -> Options.WriterOptions
withKaTexMathOptions mathExtensions = Hakyll.defaultHakyllWriterOptions
    {
        Options.writerExtensions = mathExtensions,
        Options.writerHTMLMathMethod =  Options.KaTeX ""
    }


-- compiler for posts, uses the options above to turn on math and stuff.
postCompiler :: Compiler (Item String)
postCompiler =
    let defaultExtensions = Options.writerExtensions defaultHakyllWriterOptions
        writerOptions = withKaTexMathOptions defaultExtensions
    in pandocCompilerWith defaultHakyllReaderOptions writerOptions
              >>= loadAndApplyTemplate "templates/post.html"    postCtx
              >>= saveSnapshot "content"
              >>= loadAndApplyTemplate "templates/default.html" postCtx
              >>= relativizeUrls
