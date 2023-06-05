---
title: Need To Know
date: 2023-06-03
author: psu
---

When I was a graduate student in the late 1900s (if you must know, it was 1987 until
around 1993) I used to use an old programming language called `perl`[^1] to do a lot of my
"work". That is, I wrote programs in <code>perl</code> to automate various tedious tasks
that I had to do a lot as a graduate student: converting text files from one sort of
format to another, reducing and summarizing data from some "experiments" that I ran,
generating pictures in $\LaTeX$ for my thesis. That sort of thing.

At the time `perl` had a reputation for being a very powerful but difficult to learn and
use system. It had some strange syntax and for any given problem there always seemed to be
five to ten different ways to write down an idiomatic solution in `perl`. People also made
claims about how `perl` was hard to learn because it had no simple to understand
conceptual core. It was just a lot of different utilities thrown together into one big
mess.

These things never bothered me. My approach to using `perl` was to always use it on a
"need to know" basis. That is, never learn anything new about the tool unless you really
need to know. This saves you a lot of time and mental energy. You avoid the intellectual
paralysis that comes with trying to understand the "big picture" about a system for which
there is no big picture. This policy also lets you avoid some of the darker and sharper
edges of the system that you should have really stayed away from anyway (see also:
[typeglobs](https://en.wikipedia.org/wiki/Perl_language_structure#Typeglob_values)).

I think using most computer systems like this is a rational way to go about your life.
Unless you have some sort of unhealthy and uncontrollable intellectual curiosity about the
things computers do computers are not really fun things to learn about, and you should
minimize the amount of time in your life you spend learning to interact with them. God
knows you should never get into programming unless you have just lost all hope and have
nothing better to do. Or maybe you just [like the
punishment](https://mutable-states.com/code-souls.html).

Of course, I am one of the cursed ones who enjoys suffering. So I have spent most of my
adult life programming computers for money. But this has just made my attachment to the
"need to know" method for managing computer knowledge even stronger. I spend my life
knowing stupid and obscure things about a giant meta-recursive ball of mud made out of
code that is now almost old enough drink in most states. I need to allocate my brain space
very carefully.

So it is surprising to me that there is so much recent discourse and pearl clutching about
how "the youngs" don't understand computers "the right way". The thinking goes,
apparently, that modern computer systems are so good at hiding the obscure and archaic
mechanisms by which they actually work that many younger users of these systems have
little or no understanding of these critical bits of ancient lore. This, people say, means
that they will be mentally and intellectually crippled in their later lives because they
lack all of this foundational knowledge. What, you may ask, are these poor people missing
out on? I'm not _exactly sure_ but a few things I've seen include:

- Primitive UI for organizing their data into ad hoc and impossible to navigate
  hierarchical databases made up of "files" and "directories", but no real way to actually
  find the data you want at any given time by any attribute except maybe the name of the
  file you happened to put it in.

- Building up their core intellectual strength by understanding the ancient language of
  "the command line shells" and pondering why we still have to put up with syntax built
  when creating a parser for something usable would have used more then the 64K of memory
  available to us at the time.

- Automating simple things using "batch files".

- Special syntax in search engines that does not actually work anymore.

- Learning to manually allocate and keep track of memory buffers using a language and
  runtime that will silently shoot you in the head when you fuck up is apparently very
  important for your development as a software engineer.
  
- Pick any tool stack and you will find dozens of people saying that it is the most
  important thing in the world to know all of the details of how said stack can make your
  life a living hell.

- If we were living in the year 2045, I imagine that the olds then would be scolding the
  youngs about how they have no understanding about how basic and foundational things like
  @-replies in chat rooms and #-tags work because the interfaces for online interaction
  have gotten so advanced ... wait that will never happen never mind.

What is going on here is yet another instance of the universal standard nerd intellectual
interaction, which in this form is phrased: "What I had to learn, and I found very
interesting, must be the most foundational and important thing in the world and everyone
must also learn it."[^2]

Of course this is just not true. Most of these things were just bad puzzles that
people had to solve back in the day because nothing better had been implemented yet. Folks
were forced to use a lot of awkward implementations of a lot of marginal ideas. There is
nothing _good_ or _foundational_ about them. Like `perl` they were a set of imperfect
tools and often painful to use tools that happened to solve some problems people needed
solving. 

However, often old nerds just can't tell the difference between having learned something
actually interesting and having been beaten in the face with the limitations of the stupid
machines and learning how to work around the pain. It changes your perspective if you
think of all the weird and complicated technical things that you have learned over the
years as brain damage/trauma instead of intellectual trophies to be proud of. The truth is
that _most_ things are the former instead of the latter.

So as I said in the open, it is perfectly rational for people to ignore this bullshit
until such time as they are forced to deal with it. There is no reason to waste brain
space on stupid technical puzzles from the past when you could be using to store the
things you really need to solve your problems.

With that main point out of the way you might now be wondering to yourself: "But psu, what
_are_ the important things related to computer systems that you _should_ waste brain
space on"? If you have read this web site for a long time you would have a pretty good
idea about what my answer would be. But here are a few things:

- [Abstraction](https://mutable-states.com/the-abstraction-distraction-part-1.html).
- [Models](https://mutable-states.com/software-models-and-hello-world.html).
- [Universal Machines](https://mutable-states.com/turing-complete.html).
- [Functional Representations of
  Programs](https://mutable-states.com/the-ultimate-goto.html).
- [Tools vs. Problems](https://mutable-states.com/what-programming-languages-say.html).
- [Making up Names For Things](https://mutable-states.com/what-computers-do.html).

If you find these ideas too technical and theoretical I would not blame you. They do lean
to that side. But what makes them important to me is that they are all general
_conceptual_ issues rather than solutions to specific technical puzzles. I like having a
nice set of general boxes to put problems into rather than just a list of specific
solutions to things. There are a lot of patterns in computing and programming and thinking
that way lets you take advantage of that.

Most other things you run into in our industry are just hype for some specific solutions
to a particular set of specific issues, and are thus less interesting. Learn that stuff if
you need to know it, but otherwise there is no shame in ignoring it. With the right
foundations you can figure it out when forced to. And if you are never forced to then you
will not have wasted your time.

#### Notes

[^1]: It is an old joke that "perl" stands for "Pathologically Eclectic Rubbish Lister".
    Which fits. See
    [https://en.wikipedia.org/wiki/Perl](https://en.wikipedia.org/wiki/Perl) for details.
    
[^2]: Other forms of this line of thinking include: "this works fine for me, it should be fine
for you too" and also "oh, we designed the system that way because we don't see a reason
to want to be able to do X easily, so you should not either", and finally, "making sure
that the system design maintains technical attribute Y is more important than anything
else even if no other single person in the universe cares about that." Finally, I guess in
the FromSoft community there is a more concise way of saying this, which is just "git gud,
scrub."