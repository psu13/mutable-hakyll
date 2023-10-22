---
title: Why Don't They Just
date: 2023-10-22
author: psu
---

I have worked in software now for a long time. And for a long time I have observed user
complaints about and desires for the software that I and others build. Every software
project has its own unique requirements and issues, but there is an almost universal
complaint that one will observe from almost every user community. I don't even have to
know the _particular_ feature that the person complaining wants. I can write a generic
template for the thing. It is always said, or posted online, with a slight sideways sneer
and goes like this: "Why don't they just (_something_), how hard could that be?"

The (_something_) here can be almost anything. But the assumption of the outside observer
is that the thing is obviously completely trivial to implement. Various large categories
of such features include:

- Copy and paste (ha!).
- Free text search.
- Various kinds of notification handling.
- Correctly keeping track of unread messages.
- Progress bar behavior.
- Caching and syncing of remote data.
- My favorite graphical editing feature.
- My favorite key bindings.
- Be more memory efficient.
- Be faster.

And so on.

I have long fantasized about producing a podcast that I will never produce where each set
of episodes starts with a question like this, which I present to actual engineers on the
product in question. Then the show would run as many two to three hour installments as
necessary to explain exactly why, in a horrific amount of detail, why "they don't just" do
the thing.

I have complete confidence that I could fill hundreds hours of riveting [^1] podcast content with the
answer to even the most apparently trivial question about the most apparently trivial
feature.

I know this because if there is one thing that more than twenty years of working on
application software has taught me it is that there is nothing that is easy in large
software products. In addition, there is an order of magnitude difference in difficulty
between realizing that you want to be able to do a certain thing X, figuring out (maybe)
how to do X for yourself, and then figuring out how to do X in the context of a giant
complicated application stack that has to then ship to thousands or millions of people and
has to work for all of them too.

Here is a list of issues that your favorite "why don't they just" feature probably has to
deal with in order to work in a modern application. This is just off the top of my head.

- Undo and redo.
- Copy and paste of whatever data is involved.
- Help and other documentation.
- Localization of the user interface and all of the Help and other documentation into 20
  or more languages.
- Accessibility of the feature for folks who can't access it the normal way.
- Scripting, if applicable.
- Online features like syncing, or multi-user editing, or a web version of the
  interface.
- For web features: dealing with browser portability.
- For non-web features: dealing with OS portability (or even just portability to older
  versions of the same platform).
- Backward compatibility with older versions of the application (e.g. the file format and
  loads of other possible issues).
- Making the feature work consistently with the rest of the user model.
- If the feature requires new model, integrating that model (and its rendering and UI)
  into the rest of the system consistently.
- Automatic testing.
- End user testing and tuning.

Now, on the one hand, it is an old maxim that no one should care, least of all the end
user, [how hard you
worked](https://theonlinephotographer.typepad.com/the_online_photographer/2011/05/no-one-cares-how-hard-you-worked.html)
to put the product on the table. That is not the end user's concern.

But, on the other hand, I can't help but think about how hard literally everything is to
do when some arrogant but incredibly ignorant tech-bro dude gets up on his (almost always this person is
male) Internet blow horn and declares how completely trivial it should be to _just do_ X,
whatever X is.

I can almost tolerate specific complaints about specific systems. But the very worst sort
of "why don't they just" whining is the kind that makes broad and historical declarations
about the nature of software development. Usually these are filled with derision and snark but
actually do little but illustrate how little the commenter understands about how we got to
this particular place in the history of end user software.

A recent set of such takes on twitter (I will not use the other stupid name) took one of
the standard forms: "boy programmers these days sure are stupid. All they do is write
giant slow bloatware. Can you imagine them trying to do anything useful on some old
machine from the past with less memory in it than a modern microwave oven?"

Which is of course why I am writing this page now, after sitting on it for years.

What statements like this generally ignore is that while software developers of the past
certainly did a lot of interesting things in assembly language on that machine that only
had 1MB of memory nothing that they did even comes close to reaching the base minimum
level of user expectations for the simplest free application that runs on your phone
today. 

Here are some things old applications were really bad at:

- Displaying their UI on a giant large screen (even on laptops) for showing you what you
  were working on. Go back to an 80x24 terminal window some day to see how that feels.
- Standard copy and paste.
- Multi-level undo and redo (most older apps had one level if you were lucky).
- Help and other documentation.
- Localization of all the above.
- Rich text and Unicode rendering, esp. of non-European languages.
- Accessibility.
- Online features of any kind.
- ...

Oh hey that list looks familiar.

Anyway. The final thing to say is that I am in no way denying the existence of true
shitware. All over the software universe there is stuff that is put together by people who
truly don't care and barely even do anything. These things obviously do and will continue
to exist. I will also confess to being guilty of asking the question I am complaining
about there dozens or hundreds of times in my life. But I like to think that I've learned
my lesson over the years.

I am just making a gentle (and useless) plea for the Internet commentariat to think
harder the next time they decide to rip into some long standing product built by a large
team of people with a searing hot take about what they should "just do." The people on the
team probably want to do the thing you want even more than you want them to do it. But
nothing is easy.

#### Notes

[^1]: OK it would not be _riveting_. OTOH have you seen what some podcasts these days use
    their hundreds of minutes of runtime to talk about? It would be better than that.
