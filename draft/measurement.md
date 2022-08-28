---
title: Quantum Mechanics, Part 3 - The Measurement Problem
date: 2022-08-31
author: psu
---

In [part 1](mechanics.html) and [part 2](quantum.html) I tried to set up enough of the
mathematical background to describe the measurement paradox in quantum mechanics. If you
were smart and skipped ahead to here you can now get the whole answer without reading
through all that other tedious nonsense, or just doing it on a (need to
know basis)[reading-physics.html].

We'll start this last part of the story by describing a famous example of a two-state
quantum system.

### An Example

The most famous two-state system in the quantum mechanics literature is the so-called
"spin $1\over 2$" system. The behavior of these systems was first explored in the famous
[Stern-Gerlach](https://en.wikipedia.org/wiki/Stern–Gerlach_experiment) experiment. In
this experiment you shoot electrons (really atoms with a single free electron) through a
non-uniform magnetic field, and see where they end up on a screen on the other side. You
would expect them to end up in some continuous distribution of possible points, but it
turns out they end up in only one of two points, which we will call "up" and "down". We're
just going to take this result for granted rather than trying to explain it right now

We can imagine spin as being like a little arrow over the top of the electron pointing
either "up" or "down" along a certain spatial axis (e.g. $x$, $y$, or $z$). The state
space for this system is just $\mathbb C^2$. Each one of the spin states is some linear
combination of $| 0 \rangle$ and $| 1\rangle$ above.

It also turns out that there are exactly four operators that we can use as observables:
the identity, and a spin operator for each spatial axis which we will call $S_x$, $S_y$
and $S_z$. For all the details of where these come
from, you can read about the [Pauli
matrices](https://en.wikipedia.org/wiki/Pauli_matrices).[^3]

We measure spin using a box with a magnetic field in it. So, imagine that we have some box
with one hole on the left, and two holes on the right. We send an electron in the left
hole and it comes out the top hole if the spin is up, and the bottom hole if the spin is
down. We have three kinds of boxes that each measure the spin in a different direction
(again: $x$, $y$ or $z$).

So the $S_z$ box looks like this:

> <a href="../images/z-spin.pdf">
<img src="../images/z-spin.pdf"></a>

Electrons (say) go in the left hole and the spin up stuff comes out the top and the spin
down stuff comes out the bottom. For a particle in an unknown state, we get spin up half the
time and spin down half the time.

Now we can arrange these boxes in various ways and learn more about how quantum systems
behave when we measure them. Not surprisingly, if you put another $S_z$ box right after
the first one and capture the stream of spin up particles, you get nothing but spin up
particles. 

> <a href="../images/z-spin.pdf">
<img src="../images/z-z-spin.pdf"></a>

This behavior might make you think that $z$ spin is a property that we an attach to the
electron, perhaps for all time, like classical properties. Keep this thought in your brain.

Next, we can see that the relationship of $S_z$ to $S_x$ is also straightforward. A
particle that has a definite $z$ spin still has an undefined $x$ spin:

> <a href="../images/z-spin.pdf">
<img src="../images/z-x-spin.pdf"></a>

So here when we put a $S_x$ box right after the $S_z$ box we will get $x$ spin up and $x$
spin down half the time.

Interestingly though, measuring the $x$ spin also seems to wipe away whatever $z$ spin we
saw before. So here if we start with $S_z$, then follow it with $S_x$, then follow it
again with $S_z$ the particle somehow loses its $z$ spin after going through the $S_x$ box:

<a href="../images/z-spin.pdf">
<img src="../images/z-x-z-spin.pdf"></a>

This is a bit surprising. Somehow going through the $S_x$ box has made the $z$ spin
undefined again, and we go back to 50/50 instead of 100% spin up.

### The Problem

### Things I Left Out, Lies I Told

[^3]: The Pauli matrices are usually called $\sigma_1$, $\sigma_2$ and $\sigma_3$. You
could also write them as $\sigma_x$, $\sigma_y$ and $\sigma_z$. But I stayed with $S$ for
"Spin" in my text. I can't decide if it's a deep mathematical fact or just a strange
coincidence of nature that $\mathbb C^2$ should have exactly three operators for spin
measurements, one in each direction that we need. It seems a bit spooky that it worked out
that way.
