---
title: Message to No One
date: 2022-02-22
author: psu
---

Long time readers of this site will know that I have spent a non-trivial portion of my
adult life writing Objective-C code for the NeXT\^H\^H\^H\^H MacOS and iOS platforms at
various stages of their development.

One quirk in the Objective-C runtime that every programmers needs to deal with is the
following strange behavior: if you call a method on an object that is `nil` the call just
falls through like nothing happened (usually).

That is, if you make a call like this:

```
[someObject someMethod:someArgument]
```

and `someObject` is the value `nil`, so it points at nothing, the behavior of the
Objective-C method dispatch system is just to ignore the call like nothing happened and
return a value similar to zero.

In the more modern versions of the runtime, the area that the runtime uses to write the
result of the method call is zero'd out no matter what the type of the return value will
be. In older versions of the runtime you could get into trouble because this "return 0"
behavior only worked if the method returned something that was the size of a pointer, or
integer, on the runtime platform. God help you if you called a method that returned a
`float` or `double`, because a lot of weird stuff could happen to you downstream.

Anyway, I was having a chat with a nerd friend of mine at work, and we both got curious if
this behavior dated back to the _original_ Objective-C runtime or if it was added at some
point. With the entire Internet at our fingertips surely this could not be that hard to
figure out.

So I poked around, and the earliest reference that I could find with straightforward
searches was a reference to this behavior on USENET in 1994:

You can read that
[here](https://groups.google.com/g/comp.lang.objective-c/c/P3MntDvO1BM/m/FfkH12mjIQUJ).

I did manage to find a copy of the original Objective-C manual on
[archive.org](https://archive.org/details/objectorientedpr00coxb), but there is no mention
of this behavior in that book.

Then I realized I should search [bitsavers.org](http://www.bitsavers.org/pdf/) but I
really wasn't sure what to look for and the site was loading slowly. Disappointed, and
feeling lazy, I decided to see [what twitter
thought](https://twitter.com/psu_13/status/1495849554108989444):

<img src="../images/nil-message.png" width=500>

This, it turned out, was the perfect thing to use the giant nerd village for.

Within a few minutes that was confirmation that [the behavior certainly existed and was
documented by 1995](https://twitter.com/mbessey/status/1495853524407701514)

Then later we got [back to 1993](https://twitter.com/vasprintf/status/1495854893898289160)

Then there was some [funny snarking by long time runtime
dorks](https://twitter.com/jckarter/status/1495853328420552708). This tweet, by the way,
is true. I have seen such code and will leave it at that.

Then, we got [this message which won the
day](https://twitter.com/helje5/status/1495861914605432837) with a reference back to a
post in the [Squeak forums, of all things](http://wiki.squeak.org/squeak/5962). The long
post verifies that the original Objective-C runtimes threw an error when sending messages
to `nil`, but that the current behavior was introduced in a release of the software called
"ICPack 201". I don't know exactly when "ICPack 201" was released by SteppingStone, which
owned the language at the time, but wikipedia says that the package was proposed to the
Open Software Foundation when they did their call for technology for what eventually
became [_Motif_](https://en.wikipedia.org/wiki/Motif_(software)) (shudder) ... and that
RTF happened in 1988, so that puts our date window at sometime around 1988 or 1989, which
is good enough for me.

Hooray!

Finally, a few hours later I got this reference to more [NeXT documentation from
1990](https://twitter.com/EricShapiro/status/1495915397069090816), which is of course on
Bitsavers, like I figured it would be. I guess in the end I could have found it myself,
but the great nerd convergence around this question was kinda fun.

But, don't let this apparently heartwarming story change your mind about twitter. It's
still a cesspool that [should mostly be
avoided](http://mutable-states.com/anti-social-social-networking.html). 

But once in a while it's not too bad.
