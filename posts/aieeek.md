---
title: AIeeek!
date: 2026-03-15
author: psu
---

This post is going to be filled with a lot of grumpy words about "AI", a word I will only
ever write in single (or double, or triple) scare quotes. Before we start through I should
put my bias front and center: I've never been interested in this stuff. I've had no
interest in this since I started learning how to program computers in the early 1980s. Of
all the different areas of academic Computer Science research this is by far my least
favorite. With all due respect to the people who love to do this kind of work I think the
area has mostly been driven by sloppy, often (mostly?) shallow fad following (especially
in the commercial sector). Futhermore, it holds almost zero interest for me from a
technical or _philosophical_ point of view. To me "AI" is always the shit you do before
you know how to solve a problem for real, and then once you figure it out it all becomes
Algorithms.

To emphasize this even more, here is my favorite Computer Science research joke:

A theory professor, a systems professor and an "AI" professor are sitting in a room and an
interviewer asks them what their least favorite kind computer science research is. So the
systems professor says "theory". The theory professor says "systems". The "AI" professor
sits and thinks and then notices a colleague of theirs walking down the hall and then
hurriedly points that the colleague and says "that person's AI research".

Happily for most of my life as a computer programmer I could also just ignore this
nonsense. Every once in a while some new black box would arrive that maybe did something
useful ("symbolic" reasoning! logic programming! neural nets! deep learning!) and then all
the "AI" goons would proclaim the arrival of a general solution to the whole problem. Some
folks would throw money down an arbitrarily large flaming toilet and it would turn out
that well actually it just does a few things well 75% of the time and we'd all get back to
our lives.

The last time this happened was "deep learning" and what we got out of it was face unlock
on your phone (mostly worse than the other ways), almost OK sometimes image search (except
it will often confuse things like, I dunno, soup and bathtubs) and the single OS level
feature in the Apple ecosystem that I have loved the most in the last 5 years: [screenshot
text copy/paste](https://support.apple.com/en-us/120004). Seriously the screenshot text
stuff is so useful I have a shortcut for it on my Mac that I probably use more than normal
text copy/paste because regular text selection fails in so many different situations.

Anyway, the important thing here is that _those people_ can work on this stuff and
sometimes do cool things with it. _I_ don't have to think about it, and when something
works well enough to be great, _poof_ it's an algorithm now.

Of course, now things are different because the fucking LLMs ("Large Language Models")
invaded.

For the past five or six years giant machine learning models that combine training sets as
large as the Internet (they just spider everything, or at least all of reddit and stack
exchange) and some novel internal structures (called _transformers_, which is the T in
GPT, I think) have taken the world by storm because among other things they are really
good at reading and writing text that is very much like "natural" language. Whatever that
means. As far as I understand it, among other things the transformers allow these engines
to use context clues to figure out what text "means" and also how to generate text that
at least appears to be related to the prompt in a relatively non-mechanical semantic way.

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
models the model building companies have mostly _stolen_ content to use as training data
in order to then enable their platforms to simulate the act of creating similar content in
a similar style later. We have not as yet had a larger ethical or legal discussion about
how people should be compensated for this. Which is puzzling and sad. As always in modern
power dynamics if you just do the thing that's wrong fast enough, it is soon too late to
be punished for having acted badly (I have been reading _The Power Broker_, where this
idea comes up a lot). To me this complete lack of concern for the ethics of using other
people's work for your own ends taints these engines in a pretty deep way. I am apparently
in a small minority though.

Another side note to get out of the way is to point out that I think most of the talk
about these bots taking over entire human jobs in the _short_ term is mostly nonsense. By
short term here I mean a time period as long as it was supposed to take for self-driving
cars to completely take over the world, which you might remember was supposed to be five
or ten years. Right now just the fact that these models spend most of their time outright
lying to you when you ask them questions, and no one seems to have improved that situation
in the last five years means to me that you'd have to be a pretty big dipshit to actually
use these machines to do real human jobs any time soon. On the other hand, I'm just a guy
who has been ignoring "AI" for 40 years. So what do I know?

Of course, as we all know, the computer industry is full of pretty huge dipshits who are
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

3. Finally, all of this "vibe coding" (or "vibe writing", for that matter) is stupid, and
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

On the input side they seem do much better at processing text queries that would cause most systems
before to either give up or perform really badly due to ambiguity and/or a lack of context
clues. Usually when using computers you have to be very specific about what you want, and
the results that are generated from the queries are kind of predictable and mechanistic.
You can almost see the finite state machine sitting in the back generating the canned
text.

LLMs are not like this. While you will still get better results with more specific and
directed queries, the machines seem to be able to pick up on a lot of context and other
environmental data "from the world" in a way that computers did not used to do.

I think this is what makes people conclude that this, indeed, is the path to "general
intelligence", whatever that means.

But, not so fast.

While the machines sort of _act_ smart and can generate text that _sounds_ smart a lot of
this hides the fact that when asked actual specific questions about things the answers
that you get, or at least that _I_ get are almost always not really right, and sometimes
comically wrong.

There are any number of easy examples. For some reason simple arithmetic is beyond reach.
But using the programming assistants I've also gotten a lot of really confident answers
that appear to be pretty good, but when unpacked are actually completely wrong. Claude is
pretty good at writing LaTeX though. No surprise. 

What is more spooky is that claude code is also better than the average engineer at
writing English descriptions about what complicated pieces of code do. These pieces of
text are never 100% right, but most engineer writing is not either. And the claude stuff
is more readable.

So anyway. These things _are_ spooky good at _something_. But it's not really clear what.
And different systems are good at different things.

What's too bad is that the popular discourse about these systems lumps all of this
different behaviors into the singularly useless umbrella term "AI". Now instead of
"googling" things we just "ask AI". Which somehow seems to have made the world worse.

### Part 2: They are Both Stupid, Mostly

Whatever it is that the bots actually do, humans who talk about appear to mostly say
stupid things.

There are two positions on this spectrum and hardly any discussion in the middle of the
two extremes.

1. Actual "AI" has arrived. If you do certain things having to do with either code or
   language generation professionally will soon be replaced with a machine. This is
   especially true if you mostly work with machines and not other people.

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
a reasonable replacement because even the most computery job is actually mostly about
interacting with humans in some kind of real time and space. And there is no evidence that
the bots can do the social part of the job yet. I know the nerds don't think this really
exists, but the nerds are wrong.

There are so many other fronts along which to have this argument that I don't even really
know where to start. But let's start with this: "but the models are so good at taking
tests that we give college students", etc.

My feeling about this is that the standardized tests in fact have never been a good
measure of competence or ability. They've mostly been a lazy and easy to grade measure.

Now, unquestionably the fact that the models can read and understand the questions and
also generate answers that make sense is a pretty large leap forward. But let's not kid
ourselves about what the tests themselves mean. If the computers get really good at those
then we have to change the tests to be things that actually reflect real ability. Probably
with pens on paper, and no Internet. The horror. I'll have more thoughts about this later,
because the existence of machines that write human language better than most humans does
bring up difficulties. But first I want to talk about machines writing computer programs.

### Part 3: Ignore The Vibes





