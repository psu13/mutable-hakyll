---
title: Workflow Adjustments
date: 2005-02-23
author: psu
---

It’s been [about a year](digital-picture-workflow.html), and every new year it’s a good
time to evaluate your digital picture workflow and try to streamline it. Well, that is, if
you are a complete dork. Anyway, I test workflow tools so you don’t have to.

I had been using two basic tools to process my pictures: iView Media Pro and Photoshop.
iView is a great cataloging tool, and Photoshop is very good at all kinds of image
processing. But, neither of them excels at quick proofing and editing of photos. I was
finding it tedious to import 300 shots, generate my proof jpegs, proof them, and then edit
both sets of files down. So, where would I find a good browsing tool? Reading
[www.robgalbraith.com](https://web.archive.org/web/20050223013343/http://www.robgalbraith.com/bins/index.asp),
I found that they use a program called [Photo Mechanic](https://home.camerabits.com), so I
tried it out. Turns out, it is really good at browsing, editing, and tagging.

#### Browsing

Once it loads your pictures, the Photo Mechanic browser is very very fast. It has a convenient import tool that lets you suck the pictures off the card, rename them the way you want and put them into a folder. For RAW files, PM conveniently lets you browse the pictures using the embedded preview thumbnails that are generally embedded in Nikon NEF files. For D70 files, these are full sized JPEG files, making browsing very nice. Generally I import pictures a few hundred at a time, which PM handles well, without bogging down.

So, where I used to bring my RAW files into iView just to run a batch conversion script, I can now browse the pictures directly in PM. This saves the import step and the conversion steps, and I can evaluate the pictures at full resolution. Which brings us to editing.

#### Editing

The editing UI in PM is great. As I said above, the browser is fast. It is easily 2 or 3 times faster than either iView or Photoshop. Also, it lets me edit full sized JPEGs and it has a nice side by side view for comparing similar shots. Love it.

#### Tagging

Finally, Photo Mechanic has a nice tool for tagging pictures with meta-data. This is different than iView, where annotating pictures in the catalog was easy, but applying those annotations to the files was a multi-step process. PM has a “stationery pad” where you can enter the meta-data for a bunch of pictures and tag them all in one batch. It’s easy and fast and supports all the prevailing EXIF and ITPC standards. PM, like all the other tools, does have problems with manufacturer specific EXIF tags. But this is all part of the meta-data problem on which I have ranted before. This won’t change unless the manufacturers stop deciding to screw users.

The only annoyance with Photo Mechanic is that at the time I started using it, there was no way to fire off a batch script to Photoshop to convert a large mass of high resolution RAW and JPEG files into the little thumbnails I use for my web site and auxiliary catalog. I spent some time trying to solve this problem with Photoshop scripts (The Dr. Brown script is nice), Nikon View, Nikon Capture and Capture One. I didn’t like any of these tools. I wanted to be able to fire off my old droplets using my browser.

As if to read my mind, the Photo Mechanic developer added this functionality to version 4.3.3 of the product.

#### New Workflow

Here’s what I do now:

* Copy pictures from the card to a dated folder using Photo Mechanic. Rename the pictures into a fixed scheme: prefix-date-serial-number.

* Edit and tag using Photo Mechanic

* Send the RAW files through my conversion droplet. Send the JPEG files through my resize droplet. This generates small proof JPEG files.

* Import the small proofs into iView for further selection and web site work.

This is pretty much the same as the previous workflow, but with only one iView catalog. I found I was always using the thumbnail catalog for everything anyway because none of it was ever offline. I keep everything else basically the same. Lots of backups, web site generation and so on can stay unchanged.

So there you have it. Photo Mechanic for import and editing, Photoshop for image processing, iView for cataloging. Someday someone will make one tool that does all three of these things well. But until then this toolset is pretty usable. Now if only there were a convenient way to link the thumbnail catalog back to the original files. Maybe next year.