---
title: Quantum Puzzles
date: 2021-12-26
author: psu
---

foo

#### Classical Physics

To understand why quantum mechanics has puzzled people for so long we first have to go
back to the mechanics that you might or might not have learned in high school or college
physics. You remember ...

$$
F = ma,
$$

all those stupid force diagrams with boxes and ramps and ropes and stuff. This formula is
the basis for what we now call _classical mechanics_. The word _mechanics_ tells you that
the formula describes _motion_, and it turns out that this formula, and more abstract
generalizations of it do a pretty good job of describing the motion of macroscopic objects
in most situations that you can put macroscopic objects into.

The generalization of Newton's formula above can be set up so you put some numbers into a
single black box, turn a crank, and every answer that you ever needed falls out the other
side. This magic box is a set of *differential equations* that describe how the system you
have described evolves in time. I am not going to go into the details of how differential
equations work, because honestly I don't know them. But, for reference they look something
like this:

$$
\frac {d {x}}{dt} = \frac{\partial H}{\partial p}, \quad 
\frac {d {p}}{dt} = \frac{\partial H}{\partial x}
$$

Here, $x$ represents position and $p$ represents momentum (momentum is
the mass of the object times its velocity ... $p = mv$. For some reason this is a more
convenient way to work than with the velocity directly). $H$ is called the *Hamiltonian*,
named after the mathematician who made it up: [William Rowan
Hamilton](https://www.youtube.com/watch?v=SZXHoWwBcDcR). It is a measure of the total
energy in the system.

Here we think of the combination of position and momentum as the current _state_ of the
system. What the formula says is that we can capture the behavior of the system in a way
that is rigorous enough to write down the Hamiltonian, then given any initial state of the
system I can tell you what the future state of the system will be by playing the math
forward. All I need is a computer and the formula.

This basic set of mathematics is how we send probes millions of miles into space and have
them hit a particular position over (say) Jupiter 5 years from now exactly when we think
they will. When combined with Maxwell's electromagnetism the whole framework does a pretty
good job explaining most of the physical phenomena that we encounter in our every day
macroscopic lives. But of course, there were exceptions, which is why quantum mechanics was
born.

#### Quantum Mechanics

Quantum mechanics was originally born to describe the motion of atoms and things related
to atoms. The language from this original formulation is still used in both popular and
academic treatments of the subject. So you will read a lot about how atomic particles are
described by a _wave function_ called $\psi(x,t)$ that depends on the position of the
particle and time. In addition, we are told that these functions obey a differential
equation similar to, but not the same as, the Hamiltonian setup above named after
Schrödinger that looks like this:

$$
H \psi(x,t) = \frac{\partial}{\partial t}\psi(x,t)
$$

Finally, you might have heard that the wave function does not encode the attributes of the
particle _directly_ but rather the _probability_ that one will observe those attributes in
an experiment. So for example, a wave function like $\psi(x)$ encodes what physicists call
a _probability amplitude_ that a particle will be observed at some position $x$. It's not
the actual probability. The actual probability is given by an expression that looks like
this

$$
P(x) =  |\psi(x)|^2
$$

and computing $\psi(x)^2$ usually involves computing some sort of difficult integral.
This is called the _Born Rule_, and I'm not doing to go into the particular details of how
one computes these things here.

Suffice to say that it turns out that by carefully picking $H$ and $\psi$ you can
construct a computational framework to explain things like:

1. The appearance of spectral lines that discrete frequencies in the spectrum of an atom.

2. The interference patterns in the two slit experiment.

3. The results of various other weird scattering experiments.

But, for those of us less practiced in the mysteries of solving differential equations,
these feats don't provide a lot of insight into the conceptual problems at the core of
quantum mechanics.

Luckily, you don't need to know too much about those mysteries to get at these questions.
Instead if, somewhat paradoxically, we examine quantum mechanics from a more abstract and
_algebraic_ point of view, it's actually easier to see where things go weird. So let's see
if we can figure out how this works. 

Our discussion will cover three kinds of objects: states, observables, and measurements.

#### Quantum States

Quantum states generalize wave functions and are supposed to be a mathematical
representation of the state of some quantum system the same way $x$ and $p$ above
represented the state of the classical particle in mechanics. But, as with wave functions,
the nature of this object is somewhat more complicated.

Quantum mechanics states live in a thing called a
[_Hilbert space_](https://en.wikipedia.org/wiki/Hilbert_space) named after the
mathematician [David Hilbert](https://en.wikipedia.org/wiki/David_Hilbert), who did a lot
of stuff. Hilbert spaces are like vector spaces, but with a few extra rules. So quantum
states are really an abstract sort of vector, which might seem weird since I also just
called them wave functions. But we'll get to that.

A Hilbert space is generally defined to be "over" the the real numbers ($\mathbb R$) or
the complex numbers ($\mathbb C$). For quantum mechanics our spaces will always start with
the complex numbers. This just means that when I say "scalar" below, I mean values in
$\mathbb C$. We'll write the Hilbert space itself using a script letter, like this: ${\cal
H}$. And we'll use greek letters for the vectors in ${\cal H}$. 

So, given two vectors $\psi$ and $\phi \in {\cal H}$ we have the following rules:
	
1. A scalar multiplied by a vector is a vector, so if $a$ is a scalar then $a \psi$ and $a
   \phi$ are still vectors.

2. You can add vectors together to get new vectors: $\psi + \phi \in {\cal H}$.

3. Addition is commutative, so $\psi + \phi = \phi + \psi$.

4. There is a special vector $0 \in {\cal H}$ such that $\psi + 0 = \psi$ for all $\psi$.

1. Every vector has an additive inverse which we call $-\psi$ such that $\psi + (-\psi) =
   \psi - \psi = 0$.

5. Scalar multiplication and vector addition interact the way you could expect, so like
   $a(\psi + w\phi) = a \psi + a \phi$ and so on.

The vector space we are most familiar with are the spaces over real or complex numbers.
Here vectors take the familiar form of finite lists of real or complex numbers, and all
the rules above apply.

In addition, the standard Euclidean dot product is a good example of something called an
_inner product_ or _scalar product_. This is used to define notions of length, distance
and angle in an algebraic way. Hilbert spaces can be seen as a natural generalization of
the Euclidean spaces ($\mathbb R^3$ or $\mathbb R^4$), so they are vector spaces with an
inner product.

For quantum states we'll write the scalar product like this: $(\psi, \phi)$. This will be
a function that takes two vectors and computes a single complex number, and also follows
the following rules:

1. $(\psi, \psi) \geq 0$, and this equals zero only if $\psi$ is 0.

2. The inner product is linear in the following way: if $a, b \in {\mathbb C}$, and we
   have three vectors $\psi$, $\phi_1$, and $\phi_2$, then
   $(\psi, a \phi_1 + b \phi_2)  = a ( \psi , \phi_1)   + b( \psi, \phi_2)$.

3. $(\psi , \phi)  ^* =  (\psi , \phi)$. Here the star notation ($^*$)
   denotes the "conjugate" of a complex number. So if $z = x + iy$ and $z^* = x - iy$.
   This condition amounts to a symmetry condition, and won't come up much in the rest of
   our discussions. The mathematicians in the audience will be wondering why we are not
   using the more standard notation $\bar{z}$ for this. The answer is, we just are not.

Again, the main reason we care about the inner product is that it lets us define a notion
of length, or a _norm_. By convention we write $|\psi|$ for the length of a vector, and we
have
$$
(\psi, \psi) = |\psi|^2 .
$$
which is the expression that appears in the Born rule above. Thus, Hilbert spaces let us
define the abstract rules we need for quantum mechanics.

**Note:** I'm blowing off describing the [Dirac "bra ket"
notation](https://en.wikipedia.org/wiki/Bra–ket_notation) here because I don't feel like
dealing with it. I figure if
[Weinberg](https://www.amazon.com/Lectures-Quantum-Mechanics-Steven-Weinberg/dp/1107111668/)
can do this so can I.


#### Quantum Observables



#### Notes

We will not really concern ourselves with the mathematical details of all of this, but
there are three important facts to keep in mind here:

1. In the above model, states all carry simple definite values.

2. In addition, things move along well defined smooth paths. There do not appear to be
   any constraints on the values that $x$ and $p$ can take.

3. And, if you look at the thing, it's right where you think it will be and as long as you
   are careful the act of looking will not change the behavior of the thing all that much.
