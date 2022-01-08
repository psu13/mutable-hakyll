---
title: Quantum Mechanics Two Ways
date: 2022-01-10
author: psu
---

Almost every book or article about quantum mechanics seems to start with a passage like
this:

> Quantum mechanics is arguably the most successful physical theory in the history of
science but strangely, no one really seems to agree about how it works.

Then, depending on the point of view of the author, you will get a couple of different
explanations about the core puzzles of the theory. 

The classic path through the subject is historical and analytic. You are told that that at
the end of the 19th century various observations were made about the behavior of atomic
systems that could not be explained by the physics of the time. These include:

1. The appearance of spectral lines that discrete frequencies in the spectrum of an atom.

2. The interference patterns in the two slit experiment.

4. Radioactivity and other atomic behaviors that seemed to be inherently probabilistic.

3. Spin, and all that.

Then you are presented with an analytic framework and algorithm for converting one set of
differential equations (from Newton and Maxwell) into a different set of differential
equations (from Schrödinger) along with some strange rules about probability. Then you
solve the Schrödinger equation a bunch of times for different examples that model various
odd behaviors that you can observe in atomic particles. Sprinkled into all of this
computation might be some strange semi-mystical rumbling about "wave/particle duality" or
whatever, but there is not a lot of emphasis on the conceptual core of what's going on. By
the end of the class you might conclude that what is hard and mysterious about quantum
mechanics is the solving of differential equations.

When I took quantum mechanics in college, this is the course I got and I dropped out in a
month and took operating systems instead. We had spent a month talking about particles in
boxes, and I just did not understand what that had to do with anything. This is why I'm
now a programmer and not a physicist (maybe).

Later on, as I [took up physics as a hobby](reading-physics.html), I found a second path
to quantum mechanics that was very different. I'm going to call this the non-historical
and algebraic path. Books that take this path will often start out with just a few pages
of rules that read something like:

1. Quantum states are written $| \psi \rangle$ and come from a complex vector space called
   a _Hilbert_ space.

1. Something about observables being represented by linear operators on the Hilbert space.

1. A bunch of algebraic rules.

Eventually these two paths meet at the Schrödinger equation:

$$
H | \psi(x,t) \rangle = \frac{\partial}{\partial t} | \psi(x,t) \rangle
$$

But, you can cover a lot of the most interesting quantum puzzles without ever looking at a
differential equation like this.

In fact, if you ask noted computer scientist and quantum computing guy [Scott
Aaronson](https://www.scottaaronson.com/democritus/) to explain quantum mechanics what he
says doesn't even seem to be about _mechanics_ at all:

> Quantum mechanics is a beautiful generalization of the laws of probability: a
> generalization based on the 2-norm rather than the 1-norm, and on complex numbers rather
> than nonnegative real numbers.

Historically the name "quantum *mechanics*" derives from the fact that what the early
theories were trying to do is explain the motion of atoms (really electrons and photons)
and such through space, which is what *mechanics* is about. The surprising thing about the
development of quantum mechanics is that when the final shape of the theory was finally
understood, it had more to do with linear algebra and group theory than the standard bread
and butter calculus and differential equations that classical physics is based on.