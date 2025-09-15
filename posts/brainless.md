---
title: Brainless Computering
date: 2025-09-15
author: psu
---

A thing we have done for going on the last 25 to 30 years is go to music concerts at the
Carnegie Music Hall in Pittsburgh, the one attached to the Carnegie Museums and Library in
the Oakland part of town. Lots of non-local name collisions there.

There are a lot of parking options for these buildings, but in a pinch the closest lot is
the one behind the museums off of Forbes Ave. What you would do is drive up to the booth,
hand the bored student $10 or whatever and then park your car. After the show they leave
the gates up because everyone in the lot paid the bored student when they came in. So it
would take 5 or 10 minutes to clear the whole space, even if everyone decided to leave at
the same time.

This scheme worked _fine_ for _everyone_, except perhaps some dipshit administrator at the
Carnegie Museums who decided that the way to make the organization more profitable would
be to do revenue extraction from the parking operation. So they made two classic mistakes.

1. Fired the bored student in the booth.

2. Installed a computer to do with student's job.

So yesterday after a sublime and inspiring concert of symphonic wonders presented by the
CMU Philharmonic (side note: if you are after a low pressure and low cost way to begin to
navigate classical concert going, these shows are the best thing in town) we spent almost
a full half and hour trying to get out of the lot because the parking robot would not let
people leave.

Here's how the system is supposed to work.

1. Instead handing $10 to the bored student, you get a ticket from the robot.

1. In tiny little type the ticket there is some text declaring that you can pay your
   parking by following the QR code on the ticket. No app required!

1. The QR code on the ticket takes you to a payment web site built in a late
   1990s style where you have to fill in your credit card number and billing address into a tiny
   little form.

1. Having pre-paid the ticket, to exit the lot you drive up to the exit robot and, in the
   dark, put the ticket under the QR code scanner in just the right orientation in order
   for the robot to let you leave. 
   
Let us review all the things wrong with this scheme.

1. They have made _entering_ the parking lot fast and _exiting_ the parking lot slow. This
   is exactly the wrong way around. No one cares if it takes a a minute or two extra to
   park their car. They care a lot if late at night after a long show they can't fucking
   leave the parking lot. 

1. For some reason they think interacting with this god forsaken web interface on a
   tiny phone screen is a thing that people want to do in the year 2025 instead of handing
   $10 to a bored student. I have used and programmed computers for more than 40 years and
   I can assure you that not a single person wants this.

1. The system does not make it clear that if you do not pre-pay the ticket you will have
   to sit in front of the exit robot for upwards of 10 minutes trying to pay the ticket
   either using their shitty web site interface in your phone or using their shitty kiosk
   interface in front of your face from your car. Either way 25 other annoyed people who
   just want to fucking leave the parking lot will be breathing down your neck while you
   try to do this. Again, not a single person wants this.

1. Finally, _even if you paid the ticket_ the exit robot requires that you present the QR
   code to its face in a very specific orientation that you must figure out while staring
   at it in the dark while 25 other annoyed people who just want to fucking leave the
   parking lot are breathing down your neck. Again, not a single person wants this.

So how did we end up here? While it's pure and unjustified speculation on my part I think
the root cause for this failure is as I said at the top: some dipshit administrator
thought this would be a great way to do a bit more revenue extraction for the museums.
After all, this is America and in America arts organizations have to make a profit. If
the customer here is really the parking lot instead of the people _using_ the parking lot,
then it all makes sense.

But let's say the people who installed this system were actually trying to do a good job,
instead of just trying to obtain a few extra pennies of parking lot revenue for their
balance sheets. In that context, what went wrong here?

This is a classic case of installing a computing system to automate a manual workflow
without understanding what made the manual workflow work in the first place. The number
one rule of building computer systems is:

_Understand your requirements_.

What people want from a parking lot is for payment to be easy so that exit is fast. What
this Carnegie Museum system has done is exactly the opposite of this. They have made
payment inscrutable so that getting _out_ of the parking lot is hard and slow. This is a
pretty fundamental mistake, but is of a sort that is all too common when people do grand
projects to automate "simple" tasks. Probably all of the great failures of software
engineering happened because ultimately people did not understand the problems they were
trying to solve, or through some other misunderstanding spent years solving a problem no
one cared about [^1].

Sadly this aspect of automated parking payment seems to be universal. Probably this is
because the problem that the people running the lots see is "how do we get more money"
instead of "how do we make the parking lot not be a hellscape".

The garage we use downtown also works this way, but is not quite this bad because it's
_more clear_ that you have to pay ahead of time to get out. Mostly this was because there
used to be this guy in the lobby of the garage who would spend 45 minutes saying "keep
your ticket and pay ahead of time" at the start of every event night. Recently they
upgraded the machines in that garage and got rid of that guy in the lobby, but they still
have to employ people to _help people exit_ the garage so that it does not take all night
on on busy event days. The QR code scanner on their exit robots is also a lot more clear
than the one at the Carnegie lot. But I doubt this really helps if people are in big
trouble (like they forgot to pre-pay).

So the second mistake the Carnegie Museums have made is making this system completely
unattended, because they wanted to stop paying the bored students to sit in the booth.
When computers are involved the one thing that you know will happen with 100% probability
is that there will be confused users who cannot figure out your stupid UI. This is true
even for high quality systems, and it's doubly true for the contract programmed 1990s web
page hell-scape that was on offer in this new parking lot system.

Thus, last night, we got to sit in the parking lot and watch vehicle after vehicle get
stuck in front of the parking lot exit robot in the dark while 25 other annoyed people who
just want to fucking leave the parking lot are breathing down their necks.

No one wants this.

Summary: if you are going to a show at the Carnegie in Oakland, don't use their parking
lot for a while. It's sort of a shit show right now.

**Notes**

[^1]: I was going to add an appendix about how the above mentality is also
indicative of the idiocy that is going on in the current LLM bubble. But I will spare you
that extra 800 words because it sort of writes itself. And what's the point anyway.

