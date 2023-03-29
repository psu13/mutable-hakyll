---
title: Digital Picture Workflow
date: 2004-03-22
author: psu
---

One of the big [digital photography web
sites](https://web.archive.org/web/20040318235548/http://www.robgalbraith.com/bins/multi_page.asp?cid=7-6453-6821&print=true)
recently published an article on how Sports Illustrated manages its digital photographs.
The piece described the process of shooting and editing 16,000 pictures during the Super
Bowl. After reading it, I realized that the workflow that I’ve come up with for managing
my own personal digital pictures is similar to SI. Workflow is a word that gets tossed
around a lot when referring to the management of digital pictures. But, there is nothing
really new going on here. Even in the film days, we all had a workflow. To wit:

1. Shoot the film. Organize the shot film into buckets.

2. Process the film buckets. I always used Tri-X and D76 1:1.

3. When the film was dry, cut it into strips, but the strips into storage containers. Organize the storage sheets somehow.

4. Make contact sheets. Pick the frames you like. Label and organize the contact sheets to relate them to the stored film.

5. Make proofs of the good frames, pick the ones you want to print well. Label the proofs and final prints so you can find the negative when you need to make others.

And so on.

The idea here is to be systematic about how the pictures are processed and stored so that you find the pictures you need later.

It turns out you need to do exactly the same sort of thing with digital pictures. The
medium makes some of this easier and some more tedious. But, it’s important to have a
structured and repeatable process, since you don’t to be losing that one file with a
favorite picture in it.

#### The Big Picture

I shoot with 2 cameras, a small point and shoot that makes JPEG files and a bigger digital SLR that can make JPEG files, but also allows me to store the pictures in a “RAW” format. The following is what I do with the pictures from shooting to final print.

1. With the SLR, I shoot RAW files only, except when I know I might need to shoot more than 100 pictures before downloading. I have a single 1GB flash card, which fits 100 RAW pictures. With the P&S, I shoot JPEG.

2. Every once in a while, I take the card out of the camera and stick it in a card reader. I use iView Media Pro to download and catalog the initial pictures. All pictures for a given year are downloaded to a single folder on my laptop called “2004”.

3. I use iView to rename the picture files to be unique by adding on the capture date. iView automatically keeps track of this date for me, so it’s handy.

4. For the RAW pictures, I convert each picture from RAW to a small proofing JPEG file using a batch script and Adobe Camera RAW inside photoshop. For JPEG files, I also make a small proofing JPEG, just to be consistent. All the JPEG proofs go to a different folder called “2004-JPEG”. The JPEG files are tagged with an sRGB color profile. More on this later.

5. I browse the JPEG proofs to pick pictures I like.

6. The good ones get reconverted and then turned into files for printing or for display on the web. I have a script that generates the albums on the web site. These albums are driven off another collection of JPEG files that are completely separate from the main catalog. That way if I need to back up the web site it’s easy. Also, the image file names on the site match the ones in my catalog so the RAW file or JPEG that the picture came from are easy to find. iView also lets me tag pictures with keywords and such to make them easier to find.

7. All RAW and original JPEGs are backed up to 3 external hard drives stored in two places. I keep the originals online on my laptop for a year, and then move them offline and just keep them on the backup drives.

For prints, I have to come up with a way to organize the print files and attach them to the originals. I don’t make many prints, so I haven’t worked this out yet.

#### The Rationale

I came to this particular workflow after about a year of fussing around with a few different schemes. So here is the rationale for the steps I take above.

1. iView is simply the fastest and most straightforward cataloging program I’ve found. It doesn’t have server features, but I don’t need that. It reads EXIF keywords, keeps track of color profiles correctly, and so on. It also automaticlaly lets me browse the archives by date, keyword, and other queries. Very nice.

2. JPEG proofs turn out to be very handy to have for multiple reasons. First, browsing a ton of small jpegs to find the good ones is a lot faster and easier than browsing RAW files or larger JPEG files. My wfe likes to do this using the slide show feature in iView, and this is only really usable with smaller JPEGs. Second, the small JPEGs make a good base image for the web albums, so I’d be making them anyway. Finally, having the small JPEGs lets me carry around my whole picture archive on my laptop. The laptop disk isn’t really big enough to hold more than a single year of RAW pictures, but I can hold many years of JPEGs and still have enough room to keep my RAW files for the current year online.

3. I use hard disks for backup because burning CDs or DVDs just takes too much time and is no more archival. My plan is to just buy a big firewire drive every year and cycle the entire archive to it. For the forseeable future, disks will keep getting bigger faster than I can shoot more pictures.

4. The only manipulation I do with the image file names is to tag them with the capture date of the picture. Putting any more meta-data into the filename is problematic in various ways. Better to have it in the iView catalog. It’s also handy to know that your file names are always unique so you can use them as database keys. The main thing to do is to make sure you use the same filename for the same picture everywhere the picture appears.

5. I like shooting RAW files on the SLR because it’s really easy to post- process the things to fix things like color balance under mixed lighting and general underexposure if I or the camera messed up. Doing this with JPEG files is trickier.

Someone asked me how I keep the two catalogs I make in sync. The answer is that I don’t, really. The JPEG catalog is for proofing only and I only use it to navigate to the actual NEF files in the main catalog.

But, most of the meta-data (dates, keywords, labels, etc) that I might attach to a file gets put into the EXIF part of the file which is preserved when I convert from NEF to JPEG. If I change a lot of this info, all I have to do to sync the catalogs is reconvert the NEF files and then rebuild the JPEG catalog based on the new information.

Oh, so for reference, what I do that is similar to SI is:

1. Keep both JPEG and RAW around.

2. Proof using JPEG

3. Reconvert the RAW file and process for printing.

4. Use a good fast catloging program for meta-data.

My final thoughts are a quick meditation on color profiles.

#### Why sRGB?

Color profiling and color spaces are a large and confusing topic. Rather than get into a long and abstract discussion about color spaces, device profiles, gamut and so on, I’ll outline my reason for using sRGB for everything via a simple problem that I was trying to solve:

I use a Mac. My wife uses a PC. I needed my web pictures to look at least similar on the two machines.

It turns out that the easiest way to do this is to always convert pictures into the sRGB color space, and make sure that the JPEG files on the web site are correctly tagged with this color space. Why should this be?

Historically, Macs and PCs have displayed images very differently. Apple’s default display setups use a gamma of 1.8 and some pre-defined color balance. PCs use a gamma of 2.2 and some other predefined color balance. It turns out that sRGB is a color space that is defined to model a sort of generic PC display. What does this mean?

Basically what it means is that for every (r,g,b) value in the image file, the display software will look at the sRGB profile and transform the numbers into a new (r,g,b) so that the whole image displays with an overall gamma of 2.2 and a certain color balance. The exact transformation that takes place depends on the display device. On a Mac, the transformation makes everything a bit darker and more contrasty. On the PC, the transform does almost nothing.

But, the overall result is that if I look at the picture on my Mac with software that respects the color profile, it will look similar to what my wife sees on her PC. Happily, most of the display software on the Mac does the right thing because it all hooks into Colorsync. Earlier versions of Mac OS X didn’t have this universality, so if you look at my pictures in Safari under Jaguar, they will look too bright and washed out.

In digital photography circles, sRGB is scorned as a poor least common denominator color space. You’ll hear a lot of complaints about lack of color gamut for example. This all might be true, but for me, sRGB makes perfect sense because:

1. I’m mostly concerned with web display, and this makes sure that the pictures look right even on PCs that don’t have color management.

2. Most inkjet printers and digital minilab machines do automatic color balance based on an assusmption that you are using sRGB. Sticking with this saves me an extra calibration headache. I haven’t noticed that I’m losing a lot in sRGB. But if I did, I’d just redo the job in another color space if I had to.

3. Most point and shoot cameras implicitly capture in sRGB and tag their JPEGs as such, so I don’t have to do anything special.

So there you have it. Maybe another time we’ll talk about color calibration some more. Except it gives me a headache.