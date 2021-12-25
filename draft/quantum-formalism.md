---
title: Quantum Puzzles
date: 2021-12-26
author: psu
---

foo

### Classical Physics

To understand why quantum mechanics has puzzled people for so long we first have to go
back to the mechanics that you might or might not have learned in high school or college
physics. You remember ...

$$
F = ma,
$$

all those stupid force diagrams with boxes and ramps and ropes and stuff.

It turns out that what all of this nonsense was hiding (which they tell you about
sophomore year in college if you major in physics) is that every single one of these
problems can be set up so you put some numbers into a single black box, turn a crank, and
every answer that you ever needed falls out the other side. This magic box is a set of
*differential equations* that describe how the system you have described evolves in time. I
am not going to go into the details of how differential equations work, because honestly I
don't know them. But, for reference they look something like this:

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

### The Quantum Formalism

The mathematical formalism of quantum mechanics, on the face of it, is nothing like what
we just presented above. It sounds scary and abstract, but it is actually fairly simple.
It is in some sense much simpler than [category theory](yoneda-speedrun.html) for example.
I'm going to write it all down here, and then discuss how it connects with the classical
way of doing things later. 

The usual formalism is set up as two kinds of things: _states_ and _observables_. So we'll
cover these one at a time.

#### Quantum States


As in classical mechanics, we think of the systems that we study as being represented by a
mathematical object called a _state_. In quantum mechanics states live in a thing called a
[_Hilbert space_](https://en.wikipedia.org/wiki/Hilbert_space) named after the
mathematician [David Hilbert](https://en.wikipedia.org/wiki/David_Hilbert), who did a lot
of stuff. Hilbert spaces are like vector spaces, but with a few extra rules. 

Recall that to make a vector space first you need a set $V$ of vectors and another set of
scalar values which is usually either the real numbers ($\mathbb R$) or the complex
numbers ($\mathbb C$). Then for elements of the vector space $v \in V$ we postulate the
following rules:
	
1. A scalar multiplied by a vector is a vector, so if $v \in V$ then $av \in V$ for every scalar $a$.

2. If $w \in V$ is another vector, then $v + w \in V$.

3. If $w \in V$ is another vector, then $v + w = w + v$.

4. There is a special vector $0 \in V$ such that $v + 0 = v$.

5. Scalar multiplication and vector addition interact the way you could expect, so like
   $a(v + w) = av + aw$ and so on.

And some other stuff. The vector space you are all familiar with is the set of real or
complex numbers, and the spaces you get when you make finite lists of real or complex
numbers, which we call ${\mathbb R}^n$ or ${\mathbb C}^n$.

The Hilbert spaces used in quantum mechanics are vector spaces over the complex numbers
(${\mathbb C}$). In addition to the above rules they also define a notion of an _inner
product_ between two vectors. Both ${\mathbb R}^n$ and ${\mathbb C}^n$ have the familiar
euclidean inner product, which we use to define length and distance. Hilbert space inner
products are sort of the same idea.

But before we get to that, we need to talk about the [Dirac "bra ket"
notation](https://en.wikipedia.org/wiki/Bra–ket_notation), which [Dirac created originally
published in
1939](images/dirac.pdf), and
which was then immortalized in the third edition of his famous book. It works like this:

1. Instead of writing states with a simple letter like we did above, we write them like
   this: $| v \rangle$. Quantum states are usually denoted using greek letters, so we'd
   write something like $| \psi \rangle$. This object is called a _ket_.

2. In addition, there is another kind of object called a _bra_ (possibly the worst name
   for a mathematical object in all of math and physics) which we write like this:
   $\langle \phi |$. Mathematically these are actually functions that map vectors to
   $\mathbb C$. But this is a detail that most physicists don't worry too much about.

4. By convention we also put linear combinations of vectors on either side of the $|$
   symbol in this notation. So something we might write $a | \psi \rangle + b | \phi
   \rangle$ as $| a \psi + b \phi \rangle$ and something like $a\langle  \psi | + b
   \langle \phi |$ as $\langle a \psi +  b \phi |$ and so on.

3. Finally, if we have two vectors $| \psi \rangle$ and $| \phi \rangle$, we write their
   write their inner product by docking them together like this: $\langle \psi | \phi
   \rangle$. This is called a "braket" ... a punny name that, no doubt, is the entire
   justification for all of this nonsense. Note also how we have casually flipped $| \psi
   \rangle$ around when moving it to the writing down this product thus assuming that $|
   \psi \rangle$ and $\langle \psi |$ are the same sort of object, when really they are
   not. This kind of moral flexibility with respect to [mathematical
   rigor](https://plato.stanford.edu/entries/qt-nvd/#DiraFounQuanTheo) has endeared
   physicists to mathematicians for the last century or so.
   
With this background we can write down the rules for how the inner product works. Given
two vectors $| \psi \rangle$ and $| \phi \rangle$, the inner product is a function that
computes a complex number, written $\langle \psi | \phi \rangle$ that obeys the following
rules:

1. $\langle \psi|\psi \rangle \geq 0$, and this equals zero only if $|\psi\rangle$ is 0.

2. The inner product is linear in the following way: if $a, b \in {\mathbb C}$, and we
   have three vectors $| \psi \rangle$, $| \phi_1 \rangle$, and $| \phi_2 \rangle$, then
   $\langle \psi| a \phi_1 + b \phi_2 \rangle = a \langle \psi| \phi_1 \rangle + b
   \langle \psi| \phi_2 \rangle$.

3. $\langle \psi | \phi \rangle ^* = \langle \psi | \phi \rangle$. Here the star notation ($^*$)
   denotes the "conjugate" of a complex number. So if $z = x + iy$ and $z^* = x - iy$.
   This condition amounts to a symmetry condition, and won't come up much in the rest of
   our discussions. The mathematicians in the audience will be wondering why we are not
   using the more standard notation $\bar{z}$ for this. The answer is, we just are not.

Again, the standard Euclidean dot product is a good example of an inner product. So,
Hilbert spaces can be seen as a natural generalization of the Euclidean spaces ($\mathbb
R^3$ or $\mathbb R^4$) in which we are used to doing physics. But, as we will see there is
more to it than that.

#### Quantum Observables



### Notes

We will not really concern ourselves with the mathematical details of all of this, but
there are three important facts to keep in mind here:

1. In the above model, states all carry simple definite values.

2. In addition, things move along well defined smooth paths. There do not appear to be
   any constraints on the values that $x$ and $p$ can take.

3. And, if you look at the thing, it's right where you think it will be and as long as you
   are careful the act of looking will not change the behavior of the thing all that much.
