---
title: Old and New
date: 2021-09-24
author: psu
---

The computer programming industry is one that is full of apparent contradictions. On
the one hand, over the last forty years or so we have seen consumer computing evolve from
a hobby that engaged a few tens of thousands of people into an industry that has almost
literally put a stupid computer into every single aspect of our lives. And often that
stupid computer is hooked up to a giant world wide network of other stupid computers,
amplifying the stupid exponentially. The evolution has been so drastic that if you could
travel back in time and tell any computer nerd in the 80s what a pocket computer would
look like in the 2020s you'd get put in a hospital for the mentally ill.

On the other hand, when you abstract away enough of the details, computers these days are
almost exactly the same as they were in the 80s. Just more. You have a CPU, some memory,
some mass storage, a network connection, and a pretty cool graphical user interface for
programming the thing.

Tools for programming the dumb machines have also retained a very similar structure. There
are a collection of compilers that translate code in higher level languages to binary
machine code. There is a build system to mash all the machine code together in the right
order. There is a debugger that never quite works.

To the pessimistic soul it might seem as if nothing has changed and that we have created
very little new in the last forty years. Being a pessimistic soul I have some sympathy for
this point of view. In fact, earlier this year I even went through an exercise for an
article I never wrote where I cataloged a few dozen ideas that I called "cults" because of
the unbridled enthusiasm with which they were sold into the technology industry by their
adherents. The pessimist in me could not help but snark at the optimists from the past:

* Structured programming: If you write programs in small blocks where GOTO is not allowed,
  everything will be much better.

* LISP: Enough said.

* The Object cults: OO Languages, databases, patterns, OO Design, etc: Trying to bring the
  joy of LISP in the 70s and 80s to the corporate programming salt mines of the 90s.

* AI: This has risen and died multiple times. The current moar brute force gradient
  descent craze is the latest cycle.

* The Free Software Cults: Turns out these folks were mostly a bunch of jerks.

* Client-Server/OORPC/Middleware: This is how computers on networks talked to each
  other before HTTP.

* Web, Web 2.0, Web Mobile: The Internet is the best place to deploy software. Oh except
  it's actually the worst.

* Process cults, esp. Agile: If you just follow this simple state machine of rituals
  software becomes easy. Well ... no.

* The Type Theory Cult: I have talked about this before. Very useful for certain things.
  No silver bullet.

* The Silicon Valley Bro-Nerd Myth: Turns out these guys were mostly jerks too.

And on and on.

I am of course being maximally unfair. All of the cults above actually embody the kernel
of a good idea. But they are also all infected with the one true nerd idea that ruins
everything: _If it works well for me, it should generalize and work well for you too_.
But, this is in fact never true. Or rather it's only true if you decide that you can
ignore the details of each unique situation when you go in and start bashing your solution
hammer. In software this is the one thing you cannot do, because the whole world is in the
details. As we all know from reading our Fred Brooks, the complexity of software is
_essential_, not incidental. You can't just abstract them away without losing the ability
to solve part of the problem.

I never managed to write the full article about all the technology cults that we have seen
and tried to ignore over the years because in the end I realized that aside from some
small bits of pithy snark I had nothing else interesting to say about them. All that you
can say is that they all missed the point about not ignoring essential details, which is
why they don't really work out, and move on with your life.

I think the flip side of this story is more interesting though. It is easy and
lazy to decry the software industry as ultimately shallow and empty because at a high
level it seems like the tools we are using now are the same as we were using in the 80s
(and maybe even the 70s). It's easy to read, say, the Xerox Smalltalk papers, or the Lisp
Machine papers, or the Xerox (again!) Cedar papers [^1], and wonder about what grand new
tools could have evolved from _that_ basis instead of where we ended up. If you do this
with enough gusto, and ignore enough of the details, you can only conclude that we must
have missed some huge boat if we are still reading cored dumps, or splunk logs, or single
stepping through code in the terminal, or whatever we do these days.

But, I think if you dig into the details of the tools that are available these days,
instead of just staring that their abstracted exterior structure, you have to conclude
that we have made a lot of progress even if it is "only" linear.

I have a few recent examples of people working in the details to make things better:

* Pandoc - This is a truly useful tool and arguably the most useful thing to come out of
  the whole Haskell universe. Among other things this engine [generates the HMTML that you
  are reading now](http://mutable-states.com/a-new-face.html) with relatively little fuss.
  And, it's flexible enough to let me put in some of my own bibs and bobs in a way that
  isn't too much more difficult than in, say, Python. While you might say that file format
  conversion is not exactly _new technology_ it's hard to argue against the fact that
  applying the particular tricks available in higher order functional languages to this
  application, and doing it this well, is not a great and novel idea.

* https://pernos.co - Debuggers suck. They make you reason about what your giant system is
  doing by staring at them through a tiny peephole at particular moments in time, and then
  making a lot of guesses. [Pernosco](https://pernos.co/about/overview) captures
  everything about an entire execution of your program and lets you look at all of it at
  once. This is not just a tool that lets you debug forward and backward in time. It's
  more like a tool that lets you see all of time at once, and query it like a database.

* Github static analysis - A buddy of mine just deployed a giant system at github that
  lets you do semantic navigation of code in the github browser interface. That's scaling
  the compiler up to gigantic proportions. [Read about it
  here](https://queue.acm.org/detail.cfm?id=3487022).

* Cell phone cameras - This is not a programming tool, but has to be listed here. I don't
  know what deal these people made with the devil, but the laughing in the face of physics
  in the name of better image capture marches on. These cameras were impossible [five
  years ago](http://mutable-states.com/five-things-that-are-still-good-in-2016.html). They
  are even more so now.
  
If I can find these new and pretty cool things off the top of my head in 5 minutes I'm
pretty sure many more exist. No, they are not some exponentially powerful hammer that will
do away with the need to really understand things and do good work writing code. But that
was never going to happen anyway.[^2]

The whiners will always find some system from 30 years ago that has the same shape as
whatever you show them but doesn't really solve the same problem, or doesn't solve it as
well, or doesn't solve it for as many people. They are missing the whole picture, which is
what makes them whiners.

It turns out that while the pessimists and the optimists disagree with one another they
are both making the same mistake when forming their opposing views: they are ignoring the
details when thinking about software.

#### Notes

[^1]: It's hard to read some of the programming environment literature from the 80s,
especially from Xerox PARC, and not be a bit wistful when realizing that all of that stuff
existed, and it's the UNIX model that won.

[^2]: I know I get tedious about this, but Brooks really was right about [_No Silver
Bullet_](http://worrydream.com/refs/Brooks-NoSilverBullet.pdf).