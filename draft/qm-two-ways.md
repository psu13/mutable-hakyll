---
title: Quantum Mechanics Two Ways
date: 2022-01-21
author: psu
---

Almost every book or article about quantum mechanics seems to start with a passage like
this:

> Quantum mechanics is arguably the most successful physical theory in the history of
science but strangely, no one really seems to agree about how it works.

Then, depending on the point of view of the author, you will get a couple of different
explanations about the core puzzles of the theory. 

The classic path through the subject is historical and analytical. You are told that that at
the end of the 19th century various observations were made about the behavior of atomic
systems that could not be explained by the physics of the time. These include:

1. The black body radiation problem and $\hbar$.

1. The appearance of spectral lines at discrete frequencies in the spectrum of an atom.

2. The interference patterns in the two slit experiment.

4. Radioactivity and other atomic behaviors that seemed to be inherently probabilistic.

3. Spin, and all that.

Then you are presented with a framework and an ad-hoc algorithm for converting one set of
differential equations (from Newton and Maxwell) into a different set of differential
equations (from Schrödinger) along with some strange rules about probability. The
_mechanics_ in quantum mechanics refers to the fact that these analytical models are
supposed to describe the _motion_ of atomic systems through space. But if you dig into
this it's not really clear that they do this at all. Instead there is a strange mish-mash
of apparently ad hoc rules involving differential equations, "observables" and
probability.

Anyway, after this setup what you then do is solve the Schrödinger equation a bunch of
times for different examples that model various odd behaviors that you can observe in
atomic particles. There are particles in boxes, particles tunneling through walls, the
ubiquitous harmonic oscillator, and so on. Sprinkled into all of this computation might be
some strange semi-mystical rumbling about "wave/particle duality" and random observations
about how microscopic particles combine discrete and continuous behaviors in strange ways.
But there is never much of a systematic discussion of the conceptual core of what's going
on. By the end of the class you might conclude that what is hard and mysterious about
quantum mechanics is the solving of differential equations.

When I took quantum mechanics in college, this is the course I got and I dropped out in a
month and took operating systems instead. We had spent a month talking about particles in
boxes, and I just did not understand what that had to do with anything. This is why I'm
now a programmer and not a physicist (maybe).

Later on, as I [took up physics as a hobby](reading-physics.html), I found a second path
to quantum mechanics that was very different.  This path starts out with just a few pages
of rules that read something like:

1. Quantum states are written $| \psi \rangle$ and come from a complex vector space called
   a _Hilbert_ space.

1. Observables are represented by a special class of linear operators on the Hilbert space.

1. Time evolution is determined by something called unitary operator.

1. Maybe some ad hoc rules about probability and "measurement".

These rules seem very abstract and far removed from our original puzzle of decoding the
_motion_ of particles. But, it turns out that you can start with this formalism in your
right hand, and the differential equations framework above in your left hand and
eventually find out that they run into each other somewhere around when you figure out
what is going on with the Schrödinger equation:

$$
H | \psi(x,t) \rangle = \frac{\partial}{\partial t} | \psi(x,t) \rangle
$$

I will have a bit more to say about this below as well, but a full accounting of the
subject requires more expertise in functional analysis than I have to offer.

Still, you can cover a lot of the most interesting quantum puzzles without ever looking at
a differential equation like this. In fact, all you need is a system with two states: $|0
\rangle$ and $| 1 \rangle$ ("quantum bits", or qubits, if you will). As we will see below,
using these two states and a couple of straightforward rules about how to combine them,
you can derive all of the apparently strange conceptual problems in quantum mechanics for
yourself.

In any case, I'm going to call this second path the non-historical and algebraic path, or
maybe the computer nerd path, since the quantum information theory and quantum computing
types to take this point of view. If you ask noted computer scientist and quantum
computing guy [Scott Aaronson](https://www.scottaaronson.com/democritus/) to explain
quantum mechanics what he says doesn't even seem to be about _mechanics_ at all:

> Quantum mechanics is a beautiful generalization of the laws of probability: a
> generalization based on the 2-norm rather than the 1-norm, and on complex numbers rather
> than nonnegative real numbers.

Needless to say, my programmer brain finds this idea much easier to get a hold on than all
the combination of differential equations and metaphysics that we started with. In fact,
this algebraic viewpoint is also the quickest path to understanding the two puzzles about
quantum mechanics that no one can seem to get a handle on, even after almost 100 years:
measurement and entanglement.

### The Rules

### Superposition

### Entanglement

### Measurement

### The Problem

### Appendix
