---
title: Why Don't They Just
date: 2023-10-24
author: psu
---

I have worked in commercial software now for a long time. And for a long time I have
observed user complaints about and desires for the software that I and others
build. Every software project has its own unique requirements and issues, but there is an
almost universal complaint that one will observe from almost every user community. I don't
even have to know the _particular_ feature that the person complaining wants. I can write
a generic template for the thing. It is always said, or posted online, with a slight
sideways sneer and goes like this: "Why don't they just do (_something_), how hard could
that be?"

The (_something_) here can be almost anything. But the assumption of the outside observer
is that the thing is obviously completely trivial to implement. Various large categories
of such features include:

- Copy and paste (ha!).
- Various kinds of notification handling.
- Correctly keeping track of unread messages.
- Progress bar behavior.
- Caching and syncing of remote data.
- My favorite graphical editing feature.
- My favorite key bindings.
- Be more efficient.
- Be faster.

And so on.

I have long fantasized about producing a podcast that I will never produce where each set
of episodes starts with a question like ths, which I present to actual engineers on the
product in question. Then the show would run as many two to three hour installments as
necessary to explain exactly why, in a horrific amount of detail, why "they don't just" do
the thing.

I have complete confidence that you could fill literal hours of podcast content with the
answer to even the most apparently trivial question about the most apparently trivial
feature.

I know this because if there is one thing that more than twenty years of working on
application software has taught me it is that there is nothing that is easy in large
software products. In addition, there is an order of magnitude difference in difficulty
between realizing that you want to be able to do a certain thing X, figuring out (maybe)
how to do X for yourself, and then figuring out how to do X in the context of a giant
complicated application stack that has to then ship to thousands or millions of people and
has to work for all of them too.
