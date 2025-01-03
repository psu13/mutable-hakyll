---
title: Backups
date: 2010-03-30
author: psu
---

<p>You need to do backups. Back when computers were primitive and useless, backups were not as much of a problem because no one was storing anything in the machines. But these days, <a href="/moore-and-me.html">computers have grown up</a> and it&#8217;s possible that your entire life is stored in your laptop. So you should back it up. I came up with the following backup scheme primarily to archive my digital pictures. But I think it&#8217;s useful for most general use too. The scheme sounds complicated, but it&#8217;s actually fairly simple.<br />
<span id="more-2415"></span></p>
<p>Rule number one about backups is simple: don&#8217;t think. Back it <em>all</em> up. The less you have to think the better. </p>
<p>Rule number two about backups is that the best place to put them is on an external hard disk. In the old days, optical disks were big enough for people to consider using them, but DVDs only hold at most 8GB each which means it would take three or four to do a full backup of a circa 2001 Apple Powerbook with a 20GB drive. Disk storage has grown by an order of magnitude since then, so you are talking about burning a few hundred DVDs for a backup. I was too lazy to even do four back in the day. So avoid optical disks because they make it too hard to apply rule number one (backup everything).</p>
<p>The best thing about external disks is that they get bigger every couple of years. So every couple of years you buy a new set and copy all the old data to the new disks. This is rule number three about backups: no matter how you store the backups, the bits will rot. The only way to make sure they do not rot is to copy them over and over again. Copying everything to a new set of disks every year or two is therefore a good idea. Don&#8217;t worry about the cost, you can buy a terabyte external drive for $100 now. Compared to losing your entire digital life, that&#8217;s free.</p>
<p>The next best thing about external hard drives is that they are so cheap you can buy lots of them and use them for different backup purposes. At a minimum you should have two external drives that are about the same size as the main drive in the machine you are concerned about. My main machine is a laptop, so here is what I do:</p>

<p>1. Whenever I get a new laptop, I buy two bus powered portable drives that are about the same size as the main drive in the laptop.</p>

<p>2. When I get the laptop set up, I take one of these drives and make a complete bootable copy of the drive in the laptop. On Macs, there are various pieces of software that allow you to do this easily. You can use Disk Utility to do it. I use something called SuperDuper! because it has some other handy features. I then label this drive as the &#8220;mirror&#8221; drive. I carry this drive on trips in case the disk in the laptop goes bad and I need an emergency boot drive. </p>
<p>The mirror drive is also handy for when you need to undo some disaster that you have perpetrated on your main machine. You can mirror your machine before every major OS update, for example, in case you need to back it out. If it all goes bad, you can boot from your mirror and copy it all back to the main drive on the laptop. Macs make this easy. I would assume and hope that there is some way to do this in Windows too, but I don&#8217;t really know.</p>

<p>3. I use the second external drive for Time Machine. Time machine is handy for automatically keeping track of all the new files I&#8217;ve created without me needing to do anything. And it keeps multiple versions of all those files. So in a disaster, I can boot with the mirror drive and restore all my data from the Time Machine drive if the mirror drive is out of date.</p>

<p>My backup scheme follows this main pattern. I generally do a backup whenever I have a add batch of pictures to my laptop. I do this a lot, and digital photographs make up the bulk of the data that I want to back up, so this makes sense for me. Here is how the flow works.</p>

<p>1. Load pictures into laptop. Do all the picture workflow stuff on them.</p>

<p>2. Hook up the mirror drive. Sync the new data to the pictures folder there. SuperDuper! has an incremental update feature which makes this easy.</p>

<p>3. Hook up the Time Machine drive, let Time Machine do its thing.</p>

<p>At this point, the first level backups are done. But, there is more to consider. </p>
<p>In addition to the two small drives, I also have two large desktop drives that have my complete photo archive on them. The laptop and portable drives really only have enough room for a year or two of pictures, and I&#8217;m up to eight years of pictures now. These two large drives are specifically dedicated to the photo archive. So whenever I add pictures, I use a script to copy the new pictures to these drives. In addition, I keep one of these drives at work, just in case my house burns down. This forms the second level of my backup archives.</p>
<p>As a side note, the one time I had a serious disk crash (knock wood) on my laptop, it was the work backup drive that saved me from losing about a month of photos. I generally bring my laptop to work about once a week to sync it.</p>
<p>The fourth rule about backups is that if you can make two backups of something, it&#8217;s just as easy to make four. I have a desktop machine at home that is used mostly for iTunes. But I also use it as a third level of backups. Whenever I add pictures to the mirror drive, I also sync them to my home directory on the iMac. Then I let Time Machine on the iMac copy them to yet another external drive.</p>
<p>So now each new photo is stored seven times:</p>

<p>1. On the laptop.</p>

<p>2. On pocket drives #1 and #2.</p>

<p>3. On desktop drives #1 and #2.</p>

<p>4. On the iMac.</p>

<p>5. On the Time Machine disk for the iMac.</p>

<p>When I run out of space on the laptop and the smaller external disks, I delete older photos. So for the long term, I have the entire photo archive stored four times. As before, every couple of years I upgrade all these disks.</p>
<p>Most recently, I also decided to sign up for one of these online backup services. I picked <a href="http://www.backblaze.com/">Backblaze</a>. I told it to backup my iMac to some data center somewhere. So if Pittsburgh burns down and takes all of my local drives with it, I can still call them up and get my photos back. It only took a month for the iMac to copy everything over the network.</p>
<p>To summarize. There are four things you need to know about backups:</p>

<p>1. Backup everything. Even what you don&#8217;t need. Backup the important stuff more.</p>

<p>2. Use disk drives. Other media are too inconvenient, which means you won&#8217;t make backups.</p>

<p>3. You must make new copies of the data every year or two. Conveniently, you need new disk drives once in a while anyway.</p>

<p>4. If you are going to back everything up once, you might as well do it twice. And if you are going to do it twice, you might as well do it four times.</p>