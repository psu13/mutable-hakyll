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
time, like two blog posts.

### The Big Picture

Quantum mechanics is arguably the most successful physical theory in the history of
science. Strangely, no one really seems to agree about how it works.

As a physical theory quantum mechanics was constructed in the first couple of decades of
the 20th century, as physicists came to realize that Newtonian mechanics, relativity, and
Maxwell's electromagnetism (which most books now bundle together under the umbrella term
*classical mechanics* or *classical physics*) could not explain the behaviors that they
observed in experiments involving what we now know as atoms and their constituent parts.

There is a lot of famous history here that we are going to skip. Instead, I'm going to
skip to the end first, and then circle back.

### The Most Important Idea in Quantum Mechanics

The most important idea in quantum mechanics starts with the fact that the time evolution
of quantum systems obeys [Schrödinger's
equation](https://www.preposterousuniverse.com/blog/2016/08/15/you-should-love-or-at-least-respect-the-schrodinger-equation/):
$$
\hat H \, | \psi \rangle = i \hbar\, \partial_t  \, | \psi \rangle
$$

For now, we don't really need to know what all these symbols mean except at a high level.
The notation $| \psi \rangle$ denotes a "state" of a quantum system. Maybe this is the
position of an electron in an atom. The notation ${\hat H}$ denotes a function called the
Hamiltonian that maps states to energy values. What the equation says is that the energy
of the system, denoted by $\hat H \, | \psi \rangle$, evolves in a way that is
proportional to the time derivative of $| \psi \rangle$.

If are taking derivatives, then these state things must also be functions, and in fact
they are. $| \psi \rangle$ is the famous "wave function" of quantum physics. Some texts
like to make a big deal about the fact that we are modeling *matter*, which classical
physics thinks of as being made up of little billiard balls, using math that was
originally developed to describe *waves*, like waves in the ocean. There is a lot of
historical angst about this being a really weird quantum contradiction, but I can't get
all that excited about it.

What *is* really important and a bit weird is the statement described in this [youtube
clip](https://www.youtube.com/watch?v=Ei8CFin00PY&t=2278s). What is says is this:

Say you have two valid states of a quantum system, $| \psi_1 \rangle$ and $| \psi_2
\rangle$, each described by a wave function. Then any "linear combination" of the two
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

