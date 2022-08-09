---
title: Quantum Mechanics, Part 2 - Quantum
date: 2022-08-12
author: psu
---

Quantum mechanics can be weird to learn. But this isn't your fault. People teach it wrong.

The classic physics path through the subject is historical and analytical. I did this to
you in [part 1](mechanics.html) of this series.

First you are taught an elaborate framework of differential equations and geometry that
seemed to solve all of physics, until it didn't. You are then presented with a strange and
abstract framework and an ad-hoc algorithm for converting one set of differential
equations (from Newton and Maxwell) into a different set of differential equations (from
Heisenberg, Schrödinger, von Neumann, and Dirac) along with some strange rules about
probability. Somehow following these rules and solving the Schrödinger equation leads you
to explanations of mysteries like the energy levels of the hydrogen atom.

Then you are told to solve the Schrödinger equation over and over again.

By the end of the class you might conclude that the two difficult things in quantum
mechanics are:

1. Solving differential equations.

2. Figuring out where exactly the electron is inside the atom ... because the equations
   don't tell you this anymore.

When I took quantum mechanics in college, this is the course I got and I dropped out after a
month and took operating systems instead. We had spent a month talking about particles in
boxes, and I just did not understand what that had to do with anything. This is why I'm
now a programmer and not a physicist (maybe).

Later on, as I [took up physics as a hobby](reading-physics.html), I found a second path
to quantum mechanics that was very different. This path starts out with just a few pages
of rules involving something called _Hilbert space_, some simple linear algebra, and some
rules about probability and "measurement".

I'm going to call this second path to quantum mechanics the non-historical and algebraic
path, or maybe the computer nerd path, since the quantum information theory and quantum
computing types tend to take this point of view. What is nice about this approach is that
you don't (really) have to understand how to solve differential equations to figure out
what is weird about quantum mechanics. It ends up that the weirdness just sort of falls
out of a few simple[^1] facts about linear algebra.

### Quantum States and Hilbert Space

The rules of quantum mechanics are about _states_ and _observables_. To try and keep this
section a bit shorter and less tedious I link out to Wikipedia for the details of many of
the rules.

States live in a thing called a [_Hilbert
space_](https://en.wikipedia.org/wiki/Hilbert_space), which is a generalization of a
vector space. Observables are a particular kind of linear function, or _operator_ on a
Hilbert space.

The ingredients that make up a Hilbert space are:

1. A set of _scalars_. In this case it's always the complex numbers ($\mathbb C$).

1. A set of _vectors_. Here the vectors are the wave functions.

1. A long list of rules about how we can combine vectors and scalars together that reads
   like the world's most tedious algebra text book. For reference, you can [find the rules
   here](https://en.wikipedia.org/wiki/Vector_space).

We denote Hilbert spaces with a script "H", like this: $\cal H$, and we use greek letters,
most popularly $\psi$ to denote vectors in $\cal H$. For a reason named [Paul
Dirac](https://en.wikipedia.org/wiki/Paul_Dirac), we will dress up vectors using a strange
bracket notation like this: $| \psi \rangle$, or sometimes this way $\langle \psi |$. This
is also how we wrote down the wave functions in part 1.

The most important thing about Hilbert spaces is that they are _linear_. What this means
is that any given any two vectors $\psi$ and $\phi$ and two scalars $a$ and $b$, any
expression like

$$
a | \psi \rangle + b | \phi \rangle
$$

is also a vector in $\cal H$.

This rule, it turns out, is the [most important rule in Quantum
Mechanics](https://youtu.be/Ei8CFin00PY?t=37m58s) and is famously called the
_superposition principle_. The fact that this works is also a straightforward consequence
of the form of the Schrödinger equation (it is what we call a first order, or _linear_
differential equation). That such a basic fact should cause so much trouble in physics is,
as we will see, what makes it interesting.

The second most important thing about Hilbert spaces is that they define an _inner
product_ operation that allows us to define things like length and angle. We write this
product this way: 

$$\langle \psi | \phi \rangle 
$$

and its value is either a real or complex number.

Dirac thought up this strange notation for vectors just so he could call the inner product
a "braket" ... in his terminology the $| \psi \rangle$ is a "ket" or "ket vector" and the
$\langle \psi |$ is a "bra". So you put them together and you get a "bra ket" or
["braket"](https://en.wikipedia.org/wiki/Bra–ket_notation). Those wacky physicists thought
this joke was so funny that we've been stuck with this notation for a hundred years now.

The inner product also has its own set of boring but important algebraic properties. You
can read them all [on Wikipedia](https://en.wikipedia.org/wiki/Hilbert_space#Definition).

The rules we care about the most are that it is in some sense linear, and that it is
"positive". So for any vector $\psi \in \cal H$ we have that $\langle \psi | \psi \rangle
\geq 0$, and is equal to zero only when $\psi$ is zero.

We can use the inner product to define a notion of distance in a Hilbert space that is
similar to the familiar "Euclidean" distance that we are familiar with in the real world.
For a given vector $\psi$ the norm of $\psi$ is written $\lVert \psi \rVert$ and is
defined as

$$
\lVert \psi \rVert = \sqrt{\langle \psi | \psi \rangle}
$$

Since $\langle \psi | \psi \rangle$ is always positive this is well-defined. You can also
define the distance between two vectors in a Hilbert space as $\lVert \psi - \phi \rVert$.
With these ingredients we can define a whole new area of mathematics that is much like
calculus, except that we do it in spaces where the objects are _functions_ rather than
simple real or complex numbers. It makes sense that we would want to do this for quantum
mechanics, since the fundamental objects in QM are _wave functions_, rather than simple
real or complex numbers. This formalism sprung from the brain of [von
Neumann](https://en.wikipedia.org/wiki/John_von_Neumann) in the 1930s and forms the basis
of his [famous book about quantum
mechanics](https://press.princeton.edu/books/hardcover/9780691178561/mathematical-foundations-of-quantum-mechanics).

### Operators and Observeables

### Measurement and Probability

### The Problem with Quantum Mechanics

### Notes

[^1]: Of course, every time I have tried to write down these simple facts they in fact
    seem long winded, too abstract, and tedious. So maybe the differential equations point
    of view is really the "simple" one. I don't know. I always understood calculus better
    than algebra in school, but for quantum mechanics for some reason I lean the other way.