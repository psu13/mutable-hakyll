---
title: The Most Important Idea in Quantum Mechanics
date: 2021-12-15
author: psu
---

If you spend any time reading about quantum mechanics you will inevitably come across a
dozen or two books that start with a sentence that reads like this:

> Quantum mechanics is arguably the most successful physical theory in the history of
science but strangely, no one really seems to agree about how it works.

Then the book will try to explain quantum mechanics to you but generally speaking when you
get to the end you will probably also not really understand how quantum mechanics is
supposed to work.

My favorite books about quantum mechanics own up to this fact and also spend a lot of time
trying to explain exactly *why* no one seems to agree about how quantum mechanics works.
Doing this in detail, of course, takes a whole book. But, like all nerds who think they
are smarter than they are, I think the highlights can be sketched in a shorter amount of
time, like two blog posts. So, let's try, shall we?

### The Big Picture

Quantum mechanics is arguably the most successful physical theory in the history of
science. Strangely, no one really seems to agree about how it works (see?).

As a physical theory quantum mechanics was constructed in the first couple of decades of
the 20th century, as physicists came to realize that Newtonian mechanics, relativity, and
Maxwell's electromagnetism (which most books now bundle together under the umbrella term
*classical mechanics* or *classical physics*) could not explain the behaviors that they
observed in experiments involving what we now know as atoms and their constituent parts.

Historically the name "quantum *mechanics*" derives from the fact that what the early
theories were trying to do is explain the motion of atoms (really electrons and photons)
and such through space, which is what *mechanics* is about. The surprising thing about the
development of quantum mechanics is that when the final shape of the theory was finally
understood, it had more to do with linear algebra and group theory than the standard bread
and butter calculus and differential equations that classical physics is based on.

I think physicists find the algebraic view to be disconcertingly abstract. In fact, there
are even many modern books on quantum physics that stick pretty closely to the analytical
viewpoint, perhaps thinking that it's more steeped in "physics intuition". [Jim Baggot's
excellent historical
treatment](https://www.amazon.com/Quantum-Cookbook-Mathematical-Foundations-Mechanics/dp/0198827865/)
is a good example of this viewpoint.

Personally, I find the view from linear algebra to be a lot easier to understand. When I
tried to take quantum in college the first month or so was filled with a lot of mysterious
calculations involving complicated differential equations but providing no real insight. It
wasn't until I decades later when read the algebraic treatment of the harmonic oscillator
that I realized what that professor had been going on about. Besides, differential
equations and various kinds of algebra have a deep mathematical friendship, so it should
not be that surprising that they turn up together in the most important physical theory of
our time (there I go again).

Anyway, here is what we'll do from here. First, I'll describe some experiments that
require quantum mechanics to explain. Then I'll describe the mathematical formalism
proposed to describe those experiments. Then I'll tell you the most important thing about
quantum mechanics.

### Experimental Prelude

### Mathematical Prelude

The most important idea in quantum mechanics starts with the fact that the time evolution
of quantum systems obeys [Schrödinger's
equation](https://www.preposterousuniverse.com/blog/2016/08/15/you-should-love-or-at-least-respect-the-schrodinger-equation/):
$$
{\bf H} \, | \psi \rangle = i \hbar\, \partial_t  \, | \psi \rangle
$$

For now, we don't really need to know what all these symbols mean except at a high level.
The notation $| \psi \rangle$ denotes a "state" of a quantum system. Maybe this is the
position of an electron in an atom. The notation ${\bf H}$ denotes a function called the
Hamiltonian that maps states to energy values. What the equation says is that the energy
of the system, denoted by ${\bf H} \, | \psi \rangle$, evolves in a way that is
proportional to the time derivative of $| \psi \rangle$.

If are taking derivatives, then these state things must also be functions, and in fact
they are. $| \psi \rangle$ is the famous "wave function" of quantum physics. Some texts
like to make a big deal about the fact that we are modeling *matter*, which classical
physics thinks of as being made up of little billiard balls, using math that was
originally developed to describe *waves*, like waves in the ocean. There is a lot of
historical angst about this being a really weird quantum contradiction, but I can't get
all that excited about it.

### The Most Important Idea in Quantum Mechanics

What *is* really important and a bit weird is the statement described in this [youtube
clip](https://www.youtube.com/watch?v=Ei8CFin00PY&t=2278s). What is says is this:

Say you have two valid states of a quantum system, $| \psi_1 \rangle$ and 
$| \psi_2 \rangle$, each described by a wave function. Then any "linear combination" of the two
states is also a valid state. That is, you can combine the two wave functions like this:
$$
a\, | \psi_1 \rangle + b\, | \phi_2 \rangle
$$
for any two constants $a$ and $b$, and the resulting state will also satisfy the
Schrödinger equation above.

This is true because Schrödinger's equation is what is called a "linear" differential
equation. One of the properties of such equations is that solutions to them can be
combined in this way to make new solutions. But, it's this linearity which makes
everything in quantum mechanics so strange. As professor Allan Adams says in the video,
everything that is fascinating and weird in QM comes from this linearity. The two slit
experiment, the experiments with spin boxes, the experiments with polarizers and bombs,
entanglement, and all the rest. It all comes from this simple fact: Schrödinger's equation
is linear.

