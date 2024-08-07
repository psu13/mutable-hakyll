---
title: Just use sRGB
date: 2006-10-09
author: psu
---

Color is confusing. This is a fundamental truth in the photographic universe. You can’t count on color to be a reliable constant. The film and the CCD capture color differently than you see it, turning scenes which look perfectly fine to your eye into seas of over-saturated orange, or veiling everything in sickly pale green. The gray shady day becomes a blue mess. One of the reasons I shot black and white film for so many years was to avoid problems with balancing color film for various lighting conditions. Digital cameras make this a bit easier when the automatic white balance works, but manipulating pictures on a computer screen brings up its own set of issues. Eventually, you have to deal with color management. Color management is a maze of confusion for anyone who uses computers to create and manipulate pictures. You read about color profiles, color spaces, device profiles, gamut, profile conversion, color calibration, but you gain no real enlightenment.

Here is the lazy guide to all the color management you need to know about to make decent
looking pictures for the web and prints.

#### The Big Picture

Just use sRGB.

#### A Bit More Detail

Unless you can write a coherent document about the requirements you have that would make you do otherwise, just use sRGB for everything, and don’t worry too much about calibration.

To most serious digital photographers, the above statement amounts to the highest form of heresy. You can’t make quality prints, they will say, without a workflow that is calibrated and color managed from end to end. To them I reply that the reality is that color management is complicated and expensive and not really worth it for most users. Most consumer imaging devices deal with pictures using the sRGB color space. This includes printing machines, web browsers, the screens on most personal computers that run Windows, and so on. Therefore, if you just follow my advice, you are in some sense “automatically” calibrated. It won’t be perfect, but it will work well enough.

Meanwhile, the rest of you are wondering exactly what sRGB is in the first place. I’m here
for you, too. The next time a gang of photo forum calibration weenies attacks you in an
alley, here is what you tell them.

#### Representing Color: Color Spaces

In simple terms, color management systems try to compensate for the fact that different devices interpret and display color in different ways. Colors generated by mixing phosphor look different than colors generated via filtered LCDs, and LCD colors look different than colors generated by mixing ink. The goal of the color management system is to provide you with information about how the bits you have collected will look on the target device when you look at the file on your working device. In theory, if you are managed end to end, you can be working on your laptop screen and adjust the color so that there are no huge surprises when you ship the picture to your large format ink jet printer for final output.

It turns out that a large international standards body called the ICC thought about this problem for a long time, and came up with some standard mechanisms for describing the characteristics of different devices for displaying color images.

The first thing you need to do this is a reference space of colors. Back in the day, the
[CIE color space](https://en.wikipedia.org/wiki/CIE_1931_color_space) was defined for this purpose.
Every color in this space is defined as three floating point values. Color profiles are
then defined in terms of mappings into and out of this space.

This brings us to [sRGB](https://en.wikipedia.org/wiki/SRGB). The sRGB color space is
defined as a mapping from one triple of values (R,G,B) to a point in the CIE color space
(X,Y,Z). The details are not that important. The key thing is that the mapping assigns a
specific color value in the CIE space to each RGB value. In other words, given an RGB
value in a digital picture (a JPEG file, for example), the sRGB color space provides
information about what color that RGB value represents.

The actual mapping defines the range of colors that can be represented using sRGB and things like the default gamma (2.2). The idea was to model the color response of a CRT monitor. Given this, it is easy to see why the hard core photographers sneer at this color space. They are interested in prints. They make prints for display, prints for books, prints for sales, and so on. Therefore, the professional photographer requires two critical things from his color management system:

1. A working color space that can represent “enough” colors, at least as many as the printer can reproduce.

2. A way to preview what a given file will look like on the output device in question without making a proof. Proofing might be expensive or impractical, so pre-proofing is critical.

The first requirement is why you hear people carping about Adobe RGB or whatever. That color space has a wider gamut than sRGB, so it is more useful when dealing with subjects that have a wide range of colors, and printers that can reproduce those colors. Most users do not have these requirements and so don’t really need to care about Adobe RGB.

The second requirement is what the rest of the color management system is for.

#### Color Profiles

Color profiles are like color spaces, but rather than defining the behavior of some abstract device, they are built by measuring an actual device and building a mapping from an ideal color space to that device. In other words, you can think of a color profile, or device profile as a mapping from the CIE color space back to the RGB that you should send to the device in order to get something close to the color you wanted. I say something close, because you can never exactly match these things. We’ll see why later.

There are two devices that most photographers need to deal with. The first is the screen on the computer that they use to edit their pictures. The second is the printer (or printers) that they use for output. Given a source color space and a device profile, the color management system can figure out how to display a given RGB value in an image file on the given output device. First, you use the color space to map to CIE, then you use the device profile to map back to RGB.

You build a device profile by sending the device a series of reference colors and then measuring its output in response to these reference colors. After you collect enough samples you can use some standard statistics to build the mapping that you need. When someone tells you that you need to “calibrate” your screen or printer, this is what they mean.

So, in practice, suppose you have carefully calibrated both your screen and your printer. What does this buy you? Well, suppose you want to print some picture, and you open it up in Photoshop on your screen and you think it looks too blue. You ask yourself, will it look too blue in the print? One way to find out is to just print it, then tweak it in Photoshop, then print it again. But, this is tedious and difficult because you are not even really sure how what you do in Photoshop will map to the final print.

Here is where Photoshop can rescue you. Photoshop has a special preview mode that will make your screen pretend that it is the printer, so you can see an approximation of the final print on the screen without wasting paper. The catch is that it needs those two device profiles that we talked about before in order to work. What it will do is first run the original image through the printer profile to see what RGB it would send the printer if it were printing. Then it will take that value, and display it using the profile for your screen. Here is the full pipeline:

> Image RGB ----> Printer profile ----> Printer ----> Screen profile ----> Screen

The result is an approximation of the final printer output on your screen. You need both profiles so that you can correctly compensate for the particular characteristics of both devices. Also, the results are never perfect because screen phosphors and printer ink do not behave the same way when mixed. Still, even though the system is imperfect, if you really need to match colors, it’s a lot easier to have this than do just do it by eye and trial and error.

#### Why You Should Just Use sRGB

From the above commentary, you might be thinking, “Wow, I should really calibrate my system from end to end, it will be so much easier to adjust my pictures to look great!”. To an extent you are correct. However, how often do you print to an arbitrary output device?

Think about the last 10,000 pictures you have taken. Oh wait, you’ve only taken a few hundred? Well, whatever. How many did you have printed to your special Epson Photo Ink Jet printer with the fancy and expensive pigment-based permanent color inks? What? You just put pictures on the web and get prints at Costco?

If this is that case, here is why you should be using sRGB. First, for web pictures, it is the only way to know that what the web browser on the other end of the internet will be looking at something that looks anything like what you were editing in Photoshop. There is one simple reason for this: Web browsers do not use color management. Neither Internet Explorer nor Firefox pay attention to the color space of a JPEG file when displaying it. They just default to whatever the default color space of the operating system is, which means they just default to sRGB.

Recall that a lot of people like to use Adobe RGB when working with pictures professionally. Suppose you put a lot of pictures up on the web and they are all in JPEG files that are tagged with the Adobe RGB color space. What will these pictures look like in your grandmother’s web browser? They will look like shit. The color spaces define different contrast and saturation curves, the result being that the pictures typically look washed out flat. Therefore, the rule for web pictures is clear: everything you put on the Web should be in sRGB or your pictures will look like crap.

Now, you could work in Adobe RGB and do you own conversions later when you post pictures to the web. But if your main target is web pictures, what’s the point? (See the wanky side note below).

For printing, the situation is similar. Almost all consumer output devices, including those huge digital printing mini-labs that they have at Costco assume that the incoming file is in the sRGB color space. If you give them anything else, the picture will look like crap. Home inkjet printers, even the fancy ones, have also been engineered to automatically make sRGB pictures look decent without much work on the part of the user. Of course, these devices will let you bypass this processing if you want to send raw bits processed with Photoshop’s color engine or Colorsync or whatever, but their default mode is to just print sRGB and do a decent job of it.

Therefore, my original advice stands. Just use sRGB for the web. And, if you do decide to make prints, use sRGB at first. If you can then point out exactly how this is failing for you, you can decide to start using Adobe RGB or whatever later. I will bet you a case of beer that for 90% of what you do, sRGB will work just fine.

#### Side Note for the Geeks in the Audience

The truth is that most digital cameras make this choice for you anyway. You shoot, you get sRGB JPEG files. The main exceptions are the up market point and shoots and the digital SLRs. With these cameras, you have more flexibility because you can either shoot RAW and put off the final choice of color space until later. This is what I do, but it’s pointless because I hardly ever work with anything but sRGB.

Alternatively, with many of these cameras you could also shoot Adobe RGB JPEG files and then convert them to sRGB for the web, and use the Adobe RGB for prints, but then you have defeated the one step convenience of shooting JPEG files, so you might as well be shooting RAW again anyway.

#### Summary

Don’t let the color management problem get you down. This does not have to be a complex brain-imploding process. Just like everything in photography, you can get away with being lazy as long as you understand a bit about how things work. sRGB works well for most of the pictures you will take. I have the 12x18 prints from Costco to prove it if you don’t believe me.