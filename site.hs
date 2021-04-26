--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll

import qualified Text.Pandoc.Options as Options
import qualified Text.Pandoc.Extensions as Extensions
import qualified Data.Set as Set

--------------------------------------------------------------------------------
main :: IO ()
main = hakyll $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match (fromList ["about.md", "contact.md"]) $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls

    match "posts/*" $ do
        route $ setExtension "html"
        compile $ postCompiler

    create ["archive.html"] $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll "posts/*"
            let archiveCtx =
                    listField "posts" postCtx (return posts) `mappend`
                    constField "title" "Archives"            `mappend`
                    defaultContext

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
                    defaultContext

            getResourceBody
                >>= applyAsTemplate indexCtx
                >>= loadAndApplyTemplate "templates/index.html" indexCtx
                >>= relativizeUrls

    match "templates/*" $ compile templateBodyCompiler


--------------------------------------------------------------------------------
postCtx :: Context String
postCtx =
    dateField "date" "%B %e, %Y" `mappend`
    defaultContext

-- options for katex math
-- this generates <span> tags for the math. you need to put the right script into
-- the templates for this to work out.
withKaTexMathOptions :: Extensions.Extensions -> Options.WriterOptions
withKaTexMathOptions mathExtensions = Hakyll.defaultHakyllWriterOptions 
    { 
        Options.writerExtensions = mathExtensions,
        Options.writerHTMLMathMethod =  Options.KaTeX ""
    }


-- compiler for posts
-- captures tags from tag field
-- uses the pandocCompilerWith instead of regular pandocCompiler to allow you
-- to add options. writerOptions is defined below, as is the postCtxWithTags
postCompiler :: Compiler (Item String)
postCompiler = 
    let defaultExtensions = Options.writerExtensions defaultHakyllWriterOptions
        writerOptions = withKaTexMathOptions defaultExtensions
    in pandocCompilerWith defaultHakyllReaderOptions writerOptions
              >>= saveSnapshot "content"
              >>= loadAndApplyTemplate "templates/post.html"    postCtx
              >>= loadAndApplyTemplate "templates/default.html" postCtx
              >>= relativizeUrls
