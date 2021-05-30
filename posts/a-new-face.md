---
title: A New Face
date: 2021-04-28
author: psu
---

Even though I said [in my recent update](some-bookkeeping.html) that I would not migrate the site to a new content generation engine in my lifetime I went and did it anyway. This is fairly typical behavior for me. No one, least of all me, can tell if I'm going to disagree with myself five minutes after I declare something to be the truth.

Anyway, I couldn't very well waste all that time I had taken to set up [a stupid Haskell environment](short-names-make-the-compiler-faster.html). With [Hakyll in hand](https://jaspervdj.be/hakyll/tutorials/01-installation.html) I started messing around with the one thing that would have kept me from changing anything: the CSS.

Unlike some of the more popular site generators Hakyll does not come with a large collection of themes, none of which look quite right. It turns out this is both a curse and a blessing. The curse is that you have nowhere to start. The blessing is that you can find other [Haskell nerds](https://argumatronic.com) on the Internet and steal their code and then figure out what you need. So, step by step over a weekend I stole pieces of this and that until I had adapted the standard Hakyll layout into something that looked like a replica of the old site. The worst thing was trying to understand how CSS page layout works well enough to make the site not look completely idiotic on my phone. I assume it will still look shitty on some device somewhere. I have decided not to care.

Next I had to adjust the HTML generator inside Hakyll (and thus really inside [pandoc](https://pandoc.org)) to generate [$\KaTeX$](https://katex.org) markup for math and also to generate URLs and feeds that match the layout of the old site. Can't be making broken links.

Finally, along the way I also made a new improvements:

1. Got rid of the dumb sidebar that I never liked.

1. With the sidebar gone I could make the font size slightly larger for old eyes.

1. Got rid of the post categories that I never really used for anything.

1. Fixed some old text conversion errors.

1. Made all the links to other pages on the site relative.

1. Simplified the top level page to remove the useless teaser text for each post. Sharp
   eyed readers will now note that the home page and the archive page are basically the
   same. So why have both? Maybe some day I'll change the home page to something else.

Things I like about the new setup:

1. There is only one small file of CSS that I can now just forget about.

1. I like how the simpler layout eventually turned out. It's very much in spirit of the 1998 "Blue on White" Internet look that I've always been after.

1. Hakyll has a nice mode where it watches the file system and regens the site when you edit things. I'm sure pelican had this too but I never set it up. This made fooling with the site CSS almost tolerable.

1. No python nonsense to worry about.

1. Something is turing all the quote marks into "smart" quote marks.

1. With the various changes the site can actually run mostly locally on any computer you want. This also makes spot testing changes to the site a lot easier since all of the navigation stays local now. I should have set things up like this before, but was too lazy.

1. Now I can explain to people what the difference is between `let` binding and the `<-` operator in Haskell.

1. I like that after decades of research and development arguably the most useful thing that Haskell does is ... convert markdown and $\TeX$ to HTML (or PDF!) for web sites. If nothing else this new site is a celebration of the idea that Haskell is truly the perl of the 2020s. If you know me you know that this is a compliment of the highest order 🙂.

I will now resist the urge to tinker further. There are still a few inconsistencies in the text and layout of some pages. But it's not serious enough to keep me up at night. If this change broke your feeds, I apologize. But, you can just update them using the new link.

