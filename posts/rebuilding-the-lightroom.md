---
title: Rebuilding The Lightroom
date: 2021-06-28
author: psu
---

Back in the late 90s I bought a pair of books called _Darkroom_ and _Darkroom 2_
originally published in the late 70s that interviewed a couple of dozen "fine art"
photographers about the nature of their work in black and white darkrooms. In retrospect
the 70s and 80s were probably a peak, of sorts, for fine art photographers who worked in
black and white darkrooms. This peak held on through to the 90s, with enthusiastic
enthusiasts still willing to gobble up behind the scenes "how to" information about
building a perfect room in your house to sit alone in the dark to make pictures. This
enthusiasm started to wane by the end of the 90s and then was completely destroyed by the
[consumer digital SLR](http://kvdpsu.org/d70.html) in the early 2000s and now you never
hear about people's darkrooms anymore except when they are selling the pieces on ebay.

This timing is an interesting personal coincidence for me because my personal digital
picture archive stretches back to exactly around 2002 when I started using a shitty
digital point and shoot for kid pictures while still shooting black and white film with my
"real cameras". It is notable that I still have most of the digital pictures, but never
look at the film ones at all.

My working method with these pictures was never really that interesting. Until about 2007
I used an ad-hoc and cobbled together set of tools to store full sized pictures on my
laptop and work with reduced size pictures on my web site. After 2007 I started using
Lightroom as a single tool that did all three previous jobs. Since then I have moved from
Lightroom to Lightroom and never really thought about it. I even stuck with the tool after
Adobe committed the unforgivable sin of switching to a more sustainable subscription-based
business model in the 2010s. For better or worse Lightroom had my data in it, and I didn't
want to move it.

Of course, the Lightroom landscape has been a bit confusing in the past few years. Let me
summarize...

1. First, the subscription Lightroom became "Lightroom CC" ... for Creative Cloud (barf).

1. Then Adobe released a simplified and mobile-syncing version of Lightroom that is
   completely different from the old Lightroom. And confusingly called *that* Lightroom CC
   and called the old one Lightroom "Classic" or "Classic CC" (I think, I can't actually
   remember). I think this convention bounced back and forth multiple times.

1. Since that was confusing, later they changed it up again and called the new Lightroom
   CC just "Lightroom" and the old one just "Lightroom Classic". So it all ended up in a
   good place.

I watched all this with detached amusement and ignored it because this new Cloud (Fog)
tool seemed half baked and using a far away server as the way to get pictures from one
device to another device when both devices are in my house always seemed dumb.

So of course in around 2019 I started to noodle with using the new Lightroom as my main
tool because using a far away server to get pictures from my phone to my laptop even
though they are both in my house right next to each other is actually easier than any
other possible solution ... sigh. I waited 10 years for something better and it never
came, so I gave up.

I ran the catalogs for my 2019 pictures in parallel for a while until it was clear this
new Lightroom did most of the things that I needed it to do. Digital cameras are so good
these days that even a photo dork's needs for elaborate post processing are pretty limited
now. My main gripes about the new tool are that the navigation through the user interface
is weird, they moved a few key commands around, and there is no clear way to make a
*local* backup of a catalog (more on this later), although backing up the photos so you
can remake a catalog (except for albums) later is easy enough.

After a couple of years with the new tool, and a new computer where I could store all of
the picture files in one place, I also finally got started on a project that I had been
putting off for ten years or so: rebuilding the old reduced sized picture albums I had
made in the early 2000s before disk space was infinite. This is where you really find out
how different the new and old tools are.

My old catalogs are split into three groups: one catalog covers all the old pictures that
I did not originally deal with in Lightroom between 2001 and 2004. Then there is one LR
catalog per year until 2015. And then 2015 to 2018 are all in one catalog.

Old Lightroom to new Lightroom migration is mostly straightforward except for the
following hiccups:

1. In old Lightroom catalogs stored only meta-data and album/file structure, not the photo
   files themselves. This means that various bits of auxiliary data could be stored both
   in the LR catalog and in the file system so they would be constantly out of sync. The
   migration engine is picky about this, so you are in for some tedium in trying to get
   rid of these conflicts before moving things.

1. You can only migrate a given catalog once. So don't fuck up.

1. Sometimes the migration engine will tell you that it migrated 0 pictures, when it
   actually copied all of them. I'm not sure what this means, but it's a bit upsetting.

1. Related to the above, after migrating a catalog you can't migrate *copies* of the
   catalog, or copies of the copies. So if you made new catalogs from year to year by
   copying the old one and removing all the pictures you will be sad. Luckily you can
   workaround this by making a *new* catalog in old LR and importing the original catalog
   into it, and then migrating *that*. Sigh.

1. Most migrated pictures seem to start in a state where they have "legacy" settings,
   which makes new Lightroom throw up a warning which you have to click off by hand before
   you can edit them. Sadly there is no way that I can find to clear this flag except
   picture by picture. Which is kinda tedious if you have around 70K pictures.

1. Finally, some obscure bits of meta-data, like old camera profiles, migrate to the
   desktop version of the new LR but not the mobile versions. And again, because of the
   warning above there is no easy way to fix this in a big batch in the new LR. So it's
   best to do as much of this batch editing as you can in the original catalog before
   moving it.

Overall the migration process is pretty painless and except for the very earliest catalogs
had the advantage that it brought over my old albums so I did not have to go through the
pictures one by one and rebuild those. It takes a few minutes to suck in the original
files, and then a few hours to sync them to the fog.

I *did* have to spend a bit of time reconstructing the oldest albums (2002-2006 or 7) and
while this is a sort of tedious exercise in principle, in practice it turned out to be
great fun to reacquaint myself with what I was interested in taking pictures of back them.
It's mostly kid pictures, and a lot of people who I have not seen as much of lately for
various reasons. If you ever have time to do a leisurely scan of your old photographs I
recommend it. It was also an opportunity to add some photos that I edited out before for
various reasons, but mostly because I tried not to have too many similar pictures of
things taking up space. Now space is not really a concern, so I can toss a few extras in
for the fun of it. There were also a lot of pictures that I just missed before, so overall
this whole exercise has been enlightening and fulfilling.

I also have to say that the old D100 and the D70 cameras were incredible machines for the
time. I have been constantly amazed as how well those old image files hold up. The D200 is
a distinct step *down* in many ways. And of course the D700 was a big step up. Having
looked through all these old pictures I also conclude that I probably could have just shot
JPEGs this whole time. And yet I still shoot camera RAW files with my new non-iPhone
cameras. Stupid brains.

The only remaining bit of anxiety that I have with this new tool is the lack of a more
transparent local backup solution. This was my major reason for not moving to it before,
and at some point I just decided to solve the problem later rather than worry about it
now.

In theory the Adobe Lightroom web service *is* the backup. But we all know better than to
trust *that* to work out, given [the fog](http://mutable-states.com/to-the-fog.html) and
all. You can tell the desktop version of the new LR to store a copy of each original in
your local file system. But this is more to facilitate offline editing and exporting at
full resolution than backups. The new Lightroom explicitly forbids you from *copying* your
local library to a new machine and then opening it there. Instead you have to login to the
service on the new machine and download the catalog from there.

This weird and arbitrary limitation is similar to the strange thing about only being able
to migrate an old LR catalog once, even though it's actually easy to migrate an old
catalog as many times as you want. It feels like a UI decision dictated by some obscure
part of their database schema rather than being something that you would want to do on
purpose.

I think what I will end up doing is exporting copies of all the pictures that are in the
yearly albums so that one could easily make a new catalog from those, so at least I have a
second backstop for the most important stuff.

Or, maybe I'll do a backup export of all the photos, but as JPEGs or HEIFs instead of RAW.
This has the twin advantages of both being more universally readable and baking in the
current processing parameters. Even with the great job Adobe has done preserving my
processing instructions there are still some subtle differences caused by the evolution of
their imaging engines ... so baking in the current state is not a bad tradeoff to make.

In any case, after all this work it will be nice to have full resolution versions of all
the old pictures, and some new old pictures besides. In addition to looking better just by
being full size, they also look better because I could not resist tweaking them a bit to
match how I make pictures look more recently. 

In this way the spirit of the old darkrooms lives on in the new Lightroom.
