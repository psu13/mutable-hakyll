---
title: aieeek!
date: 2026-03-14
author: psu
---

This post is going to be filled with a lot of grumpy words about "AI", a word I will only
ever write in single (or double, or triple) scare quotes. Before we start through I should
put my bias front and center: I've never been interested in this stuff. I've had no
interest in this since I started learning how to program computers in the early 1980s. Of
all the different areas of academic Computer Science research this is by far my least
favorite. With all due respect to the people who love to do this kind of work I think the
area has been driven by sloppy, often shallow fad following (especially
in the commercial sector). Futhermore, it holds almost zero interest for me from a
technical or _philosophical_ point of view. To me "AI" is always the shit you do before
you know how to solve a problem for real, and then once you figure it out it all becomes
Algorithms.

Happily for most of my life as a computer programmer I could also just ignore this
nonsense. Every once in a while some new black box would arrive that maybe did something
useful ("symbolic" reasoning! logic programming! neural nets! deep learning!) and then all
the "AI" goons would proclaim the arrival of a general solution to the whole problem. Some
folks would throw money down an arbitrarily large flaming toilet and it would turn out
that well actually it just does a few things well 75% of the time and we'd all get back to
our lives.

The last time this happened was "deep learning" and what we got out of it was face unlock
on your phone (mostly worse than the other ways), almost OK sometimes image search (except
it will often confuse things like, I dunno, soup and bathtubs), a few interesting image
editing hacks, and the single OS level feature in the Apple ecosystem that I have loved
the most in the last 5 years: [screenshot text
copy/paste](https://support.apple.com/en-us/120004). Seriously the screenshot text stuff
is so useful I have a shortcut for it on my Mac that I probably use more than normal text
copy/paste because regular text selection fails in so many different situations.

Anyway, the important thing here is that _those people_ can work on this stuff and
sometimes do cool things with it. _I_ don't have to think about it, and when something
works well enough to be great, _poof_ it's an algorithm now.

Of course, now things are different because the fucking LLMs ("Large Language Models")
invaded.

For the past five or six years giant machine learning models that combine training sets as
large as the Internet (they just spider everything, or at least all of reddit and stack
exchange) and some novel internal structures (called _transformers_, which is the T in
GPT, I think) have taken the world by storm because among other things they are really
good at reading and writing text that is very much like human language. As far as I
understand it, among other things the transformers allow these engines to use context
clues to figure out what text "means" and also how to generate text that at least appears
to be related to the prompt in a relatively non-mechanical semantic way.

The fact that the bots can _sound_ human is kinda spooky and has a lot of people freaked
out. More on that later.

Various companies have built various models to do various things, and the idea that they
are pushing in the capital markets is that these models will actually be "smart" enough to
replace humans at doing a lot of tedious drudge work that we make humans do for money,
because everyone has to have a job to be a valid member of society after all.

In addition there has been a giant gold rush to incorporate features based on these
engines into traditional "productivity" software (e.g. Office type things) because that's
the software most used to perform the tedious drudge work that we make mid-level humans do
to get paid mid-level money in our corporate hellscapes. So far it does not appear that
anyone has figured out how to make any of these models _actually_ do anything interesting
or useful in those software platforms. 

One note that we should get out of the way early is to point out that to build these
models the model building companies have _stolen_ data to use as training data
in order to then enable their platforms to simulate the act of creating similar content in
a similar style later. We have not as yet had a larger ethical or legal discussion about
how people should be compensated for this. Which is puzzling and sad. As always in modern
power dynamics if you just do the thing that's wrong fast enough, it is soon too late to
be punished for having acted badly (I have been reading _The Power Broker_, where this
idea comes up a lot). To me this complete lack of concern for the ethics of using other
people's work for your own ends taints these engines in a pretty deep way. I am apparently
in a small minority though.

Another side note to get out of the way early is my apoplectic and borderline irrational
hatred for the use of the completely useless and generic moniker, \"\"\"AI\"\"\" to
describe these systems. This serves no one well. You have to call them what they are so people
know what the fuck you are talking about. Do better.

A final side note to get out of the way is to point out that I think the talk about these
bots taking over entire human jobs in the _short_ term is nonsense. By short term here I
mean a time period as long as it was supposed to take for self-driving cars to completely
take over the world, which you might remember was supposed to be five or ten years
starting around 15 years ago. Right now just the fact that these models spend a lot of
their time outright lying to you when you ask them questions, and no one seems to have
improved that situation in the last five years means to me that you'd have to be a pretty
big dipshit to actually use these machines to do real human jobs any time soon. On the
other hand, I'm just a guy who has been ignoring "AI" for 40 years. So what do I know?

Of course, as we all know, the computer industry is full of huge dipshits who are
somehow running things. But I would still be willing to bet anyone almost any number of
cases of beer, against cases of CDs of classical music, that the bots will not actually be
doing a _good_ job of replacing humans at anything any time soon.

All of these "side" points are actually really important and deserve their own time and
space. I just don't have the time or space to cover them in more detail now.

The three things that I actually want to talk about today in more detail and hopefully
with some level of coherence are the following kind of independent but also kind of
related issues:

1. There _is_ something going on here that is deeper and more spooky than what has come
   before. But no one really knows what it is.

2. However, for some reason no one talks about these systems in a way that seems to be to be very
   ... well ... intelligent. People who love the bots say a ton of dumb shit, but people
   who (like me) hate the bots also say a lot of really dumb shit. I will try to not say
   too much dumb shit, but some will leak out I'm sure.

3. Finally, all of this "vibe coding" (and "vibe writing", for that matter) is stupid, and
   destructive, and actively harmful. As an extension of this, the idea of using these
   machines as "creative" tools is as insulting to actual acts of creativity as it is
   idiotic.

Points 2 and 3 above reflect the fact that while I'm trying to give the advocates of these
systems a fair chance, the truth is I hate them and I think they should shut up. So there
you go. OK let's get into it.

### Part 1: Ghost in the Machine

No matter what your thoughts are on the larger questions that swirl around these new LLM
systems if you actually use one, or watch one being used you do have to admit that they
are really good at not acting like a computer.

On the input side they seem do much better at processing text queries that would cause
most systems before to either give up or perform really badly due to ambiguity and/or a
lack of context clues. Usually when using computers you have to be very specific about
what you want, and the results that are generated from the queries are kind of predictable
and mechanistic. You can almost see the finite state machine sitting in the back
generating the canned text.

LLMs are not like this. While you will still get better results with more specific and
directed queries, the machines seem to be able to pick up on a lot of context and other
environmental data "from the world" in a way that computers did not used to do.

I think this is what makes people conclude that this, indeed, is the path to "general
intelligence", whatever that means.

But, not so fast.

While the machines sort of _act_ smart and can generate text that _sounds_ smart a lot of
this hides the fact that when asked actual specific questions about things the answers
that you get, or at least that _I_ get, are almost always not really right, and sometimes
comically wrong.

There are any number of easy examples. For some reason simple arithmetic is beyond reach.
But using the programming assistants I've also gotten a lot of really confident answers
that appear to be pretty good, but when unpacked are actually completely wrong. Claude is
pretty good at writing $\LaTeX$ though. No surprise. 

What is more spooky is that (say) claude code is also better than the average engineer at
writing English descriptions about what complicated pieces of code do. These pieces of
text are never 100% right, but most engineer writing is not either. And the claude stuff
is more readable.

So anyway. These things _are_ spooky good at _something_. But it's not really clear what.
And different systems are good at different things.

What's too bad is that the popular discourse about these systems lumps all of these
different behaviors into the singularly useless umbrella term "AI". Now instead of
"googling" things we just "ask AI". Which somehow seems to have made the world worse.

### Part 2: They are Both Stupid, Mostly

Whatever it is that the bots actually do, the humans who talk about them appear to
say mostly stupid things.

There are two positions on this spectrum and hardly any discussion in the middle of the
two extremes.

1. Actual "AI" has arrived. If you do certain things having to do with either code or
   language generation professionally you will soon be replaced with a machine. This is
   especially true if you work with machines more than other people.

or

2. These LLM (and related) systems are just a probabilistic smoke screen and do nothing
   new compared to the standard computer models for these things that we have seen before.
   Plus they are wrong all the time and no one should ever use them for anything.

I will admit to being sympathetic to position (2). But it's probably not true. These
things unquestionably understand and generate text at a higher level than previous
systems. And they seem spooky good at doing certain kinds of translation from one language
system (e.g. English) to another (e.g. scripting languages for webs sites, or whatever). I
understand the hard liners who want nothing in the computer systems that they use to have
been generated from these models. There are reasons I would feel similarly. But it's a
bit unhinged to deny the things that these models are in fact good at. But of course most
of the anti-LLM discourse insists on taking only the maximal position against, because
that's the easiest thing to scream into the Internet. Sigh.

On the other hand I find position (1) completely and utterly unhinged. First I will invoke
Amdahl's law and say that even if the machine were _perfectly right_ and 100x as fast as
the human at all the computery things in the human's job, it probably _still_ would not be
a reasonable replacement because even the most computery job is actually primarily about
interacting with humans in some kind of real time and space. And there is no evidence that
the bots can do the social part of the job yet. I know the nerds don't think this really
exists, but the nerds are wrong.

There are so many other fronts along which to have this argument that I don't even really
know where to start. But let's start with this: "but the models are so good at taking
tests that we give college students", etc.

My feeling about this is that the standardized tests in fact have never been a good
measure of competence or ability. They've been a lazy and easy to grade measure.

Now, unquestionably the fact that the models can read and understand the questions and
also generate answers that make sense is a pretty large leap forward. But let's not kid
ourselves about what the tests themselves mean. If the computers get really good at those
then we have to change the tests to be things that actually reflect real ability. Probably
with pens on paper, and no Internet. The horror.

I'll have more thoughts about this later, because the existence of machines that write
human language better than most humans does bring up difficulties. But first I want to
talk about machines writing computer programs.

### Part 3: Ignore The Vibes

"Vibe Coding", of course, is the other current craze related to the LLMs. Here we have
people just typing "natural language" at the robots and having them poop out software on
the other side of the token generating neural network. Breathless Internet testimonials
proclaim that programmers are an order of magnitude more "productive" working this way.
Which mostly means (apparently) that they can generate a lot of code that (I guess) builds
a user interface that can run a few vaguely specified features very quickly. Apparently
what this means to them is that they don't need to hire whole teams of programmers to try
and get to the same place. What it means to me is that they can write a huge number of
future bugs really fast.

I think all you have to do to realize that this is bullshit is to just concentrate on the
name. Here we have an entire population of "engineers" proudly proclaiming that they can
produce applications "just on vibes" without actually needing any skill or knowledge
whatsoever. This alone should let you know that these people don't know what they are
talking about.

Anyone who actually does know what they are talking about knows the most important fact
about writing code in large scale production software environments:

- The _code_ is the easiest part of the project. And also the more code you write the more
  bugs you have.

The _hard_ part is not _generating the code_. The hard part is writing the code _you
actually wanted_ and having it do _what you actually wanted it to do_.

It is in fact that case that if you work carefully with the "prompts" and know how the
larger LLM programming models (like claude code) work, they _can_ do some kind
of amazing things, as noted in the previous section. But the interesting thing about this
is what you need to do to make this happen is to produce something we have never in
the entire history of software engineering been able to get programmers to produce,
because they always said it was too hard: a fairly detailed human language
document about what you want the system to do.

Oh the bitter irony. It turns out that [documentation is no longer an
anti-pattern](https://x.com/allenholub/status/1269331595292364800?s=21).

Vibe coding is just the latest in a long line of industry cargo cults whose main goal has
always been to make the pipeline from idiotic management ideas to horrific
implementations of said ideas as short and shallow as possible. You know the other ones:

- Extreme programming.
- Agile.
- Mob programming.
- Web 1.0, then 2.0, then 3.0, then whatever.0
- OOP/OOD

and on and on.

The goal here has always been to be able to get rid of the annoying part of the software
process where you actually have to think about what you want the thing to do and
communicate that thing to other humans so they understand it in the same way that you do so that
you and your team of humans can tell the stupid machine what to do.

Now, they say, instead all you have to do is type words at the stupid machine and the
stupid machine will do all the "hard" work for you.

But, joke is on you. It turns out the hard work was all that human language the whole
time. So we quickly progress from "vibes" to "prompt engineering" to "agentic framework
languages" and now you are back in exactly the same spot you were before, except instead
of writing a fairly precise and specific language and having it be translated in a limited
but specific and predictable way to something the machine understands you are writing
vague and almost meaningless words that even other humans might not interpret the right
way and putting that slop into a probabilistic code generator that might never actually
even generates the same answer twice.

Good job.

To pile stupidity on stupidity, the geniuses working on vibes alone have also concluded
that they can use the machines to do all of the low level relatively mechanical ass-work
that we used to make "junior" engineers do until they had learned their way around the
system to be able to work on their own. So now "senior" engineers talk to the idiot bots
instead of teaching less experienced folks how to become more experienced folks. And then
they die or quit and then what do you do?

Good job.

[This recent breathless profile in the
NYT](https://www.nytimes.com/2026/03/12/magazine/ai-coding-programming-jobs-claude-chatgpt.html?unlocked_article_code=1.TFA.ywyu.eqcsLPv-87le&smid=url-share)
(also [here](https://archive.ph/S2nMA))
pretty much encapsulates every single piece of incorrect thinking that you could possibly
come up with about this into one easy package. So really I didn't need to do any of this
work at all. I could have just had ChatGPT transcribe that stupid article for me.

And here is the money quote:

>With A.I., though, programmers ascend to an even higher level of abstraction. They describe, in regular language, what the program should do, and the agents translate that idea — that human intent — into code. Writing software no longer means mentally juggling the nuances of a language like Python, say, or JavaScript or Rust. Coding no longer involves messing up an algorithm and then trying to figure out where your error lies. That part, too, has been abstracted away.

Basically, "you don't need all those pesky nerds who you do not understand". You can just
abstract them away. Fuck you.

This kind of nonsense has always made me mad. It's been making me mad for more than 40
years. My anger is about the fact that even after all these decades of history people in
this god forsaken industry (both normals _and_ the nerds) seem to have so little clue
about what the nature of the problems we try to solve with computers _actually_ is. What
it _actually_ is: 

> Combining the _technical_ understanding of how the dumb machines and their equally dumb
software stacks work with the _social_ understanding of what the people who want to use
the dumb machines to do something smart actually want the machine to do. 

You cannot write and deploy software [without this understanding in your
brain](./brainless.html) and expect it to work well for anyone. But the constant idiotic
drum beat of our cursed industry is to tell people exactly the opposite story. Before they
said "just point and click". Now they say "just type words at this bot" and the machine
will ["Do What I Mean"](https://en.wikipedia.org/wiki/DWIM) and the right thing will
happen without you needing to know _anything_ about how it works.

Over and over and over again during my programming lifetime we have learned hard lessons
about how this is simply not the case. And over and over and over again the industry tries
yet again to make the untrue be true. 40 years ago [Fred Brooks told
you](https://worrydream.com/refs/Brooks_1986_-_No_Silver_Bullet.pdf) it would never be
true:

> The complexity of software is an essential property, not an accidental one. Hence, descriptions of a software entity that abstract away its complexity often abstract away its essence. For three centuries, mathematics and the physical sciences made great strides by constructing simplified models of complex phenomena, deriving properties from the models, and verifying those properties by experiment. This paradigm worked because the complexities ignored in the models were not the essential properties of the phenomena. It does not work when the complexities are the essence. 

But the idiots will keep trying to cheat this fact over and over again. This, my friends, is
a recipe for destruction.

### Part 4: We've Been Here Before

We have, of course, seen this whole movie before. The history of the computing (and
non-computing for that matter) is filled with the disruptions that happen when we figure
out how to mechanize something that had previously escaped mechanization. This is
especially true in computing. Every time we figure out how to make computers do something
that we used to think took a highly trained set of skills to do we land in a discussion
like the one we are having now about the LLMs. 

In computing it has happened with both deep conceptual advances and what these days seems
relatively mundane:

- Assembly language programming vs. compilers (Compilers let you vibe code assembly
  language!).

- Manual memory management vs. garbage collection.

- Going back even further, basic arithmetic vs. calculators. 

- Doing symbolic algebra and calculus by hand vs. the various symbolic computing systems
  that now do most of it automatically.

In each of these cases the _real_ answer was that what we _thought_ was some highly
skilled thing was actually something fairly mundane that you could make almost completely
mechanical.

Examined through this lens, LLMs are just the latest instance of computers apparently
learning how to do something that we thought only humans could be good at: reading and
generating language, be it human language or computer languages. There is, justifiably in
my opinion, more angst about this because the facile manipulation of language is a thing
that is deeply associated with what we call "education", "skill", "training", and
"intelligence". One of the smartest people I knew in graduate school spoke with a very
country drawl accent which, if you were not careful, might make you think less of his
abilities. This is unfair but also something that we are taught to do at a deep level in
society. It's a thing you have to work hard to unlearn.

So now we have built computer systems that at least seem to be able to:

- Understand what you say to them in human language.
- "Talk" back to you in well formed human language that is actually more well formed and
  polished than many (most?) humans can generate without a great deal of effort.

and

- Translate your human language into code in computer languages that at least on the
  surface and (right now) for relatively simple tasks do the things that you asked the
  computer to do.

So the first question is: which bits of these things were mechanical all along?

And the second question is: how do we change how we think about these kinds of tasks to
account for this?

From my more angry thoughts in the previous section you know where I stand on this. I
think most of the tests and proxies that we have used to stand in for "skill" and
"training" for these tasks were actually bullshit. You need to do that stuff differently
and in ways that account for the parts of the problem that are actually hard. Code
generation is not the actually the hard part. We've had automatic code generation for
decades (see: compilers).

My more angry self also has to be realistic about what the current LLMs _are_ good at
(besides generating text that sounds great, but is actually a lie, which they do a
_lot_... wait ... stay on target). Again, given careful specifications and used with
careful oversight I've seen these systems do a lot of mundane code writing and code
analysis that you would not have thought possible for an automated system. It's pretty
spooky to ask claude a question and watch the system search through the code base to learn
the answer in exactly the way you would have if you were "learning" the answer again from
scratch, which everyone who writes code for large systems does a lot.

After observing this, and not evaluating the results too critically it's easy to see why
people stood up to proclaim the silver bullet had arrived. But it's really not the case.
The analysis looks good, and sounds good, but is often wrong and has a lot of the same
kind of of limitations that all _static_ analysis for code will have. I have not
experimented with letting claude learn things by _running_ the code in the debugger. That
might be scary too.

We run into a lot of these same issues when using LLMs to write the kind of mechanical
text that corporations appear to need their employees to generate, even though no one
wants to do it and 90% of it is meaningless boilerplate. The models seem to be _very_ good
at this but again this is only when not examined deeply and critically.

_Do not_ have the bots actually write text that you put your name to. At best they are a
tool for generating a not even first draft that you edit to _turn it into_ a first draft,
which you then edit to turn it into something good.

As for evaluating humans in these tasks, the challenge is to actually do the hard work to
figure out what really matters instead of doing what we have done up until now, which is
to do the lazy thing that is easy to grade. Standardized tests, short essays, whiteboard
programming problems and even most of the traditional job interview process are mostly
things that the bots will be able to figure out how to game. The things that are actually
important are very difficult to test and evaluate in ways that you can call "objective"
and not problematic in a lot of ways. Oh well. This is the world that we (well, not me, I
was never interested, remember?) have built. Good luck living in it.

### Part 5: Epilogue

The final part of this semi-tirade is to expand on the thought I've touched a few times
here but not addressed directly: using LLM systems for "creative" work. That is actual
writing, or photography, or music, or illustration or creative computer programming,
whatever that might be (that is the subject for another article).

My attitude is simple: just don't. That is, don't use the machine to generate most of what
you put out into the world as your own. There are ways to use it as a tool but your things
should be your own.

I will quote myself about [photography](./the-digital-archive-of-everything.md):

> Now, imagine that the machine is making these \[photo selection\] choices for you. Why
would you want that? I think that the key thing that makes important memories important is
that _I_ picked them to be important. I want to sift through my life on my own. I want to
look at it all and pick out what <em>I</em> think is interesting <em>by myself</em> and
then synthesize it into some story that I can go share with the world. Outsourcing this to
a machine is tantamount to calling down the robot holocaust and replacing all the people
on earth with little a collection of machine learning robots. No thanks.

I think this applies universally.

Thinking that these systems are appropriate for being the _main_ producer of actually
creative work is, as I said before, insulting and idiotic. It is also mostly suffering
from the fallacy that the final artifact is what matters instead of the final artifact's
relationship to the _people_ who made it and the _people_ who will use, read, listen,
watch, and otherwise absorb it into their human selves. The only creative works that are
_actually_ valuable are the things that have these connections as their both their origin
and their destination. Everything else is just bullshit.

Admittedly a lot of people have to spend a lot of time and a lot of energy doing things
that at a surface level seem similar to these more singular acts of creation but which are
actually not at the same level (see all of the corporate hellscape stuff I mentioned
above). This is a sad gray area that I don't really have an answer for. These things have
to be done (they have value, just not _creative_ value, whatever that is), and people will
use the LLMs to do these things. All we can do is hope that they use them correctly (e.g.
very carefully and under heavy amounts of human supervision). But my observation of the
current evidence is that this will not be the case and we are in for some epic amounts of
stupid.
