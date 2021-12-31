---
title: The Problem with Measurement
date: 2021-12-31
author: psu
---

A couple of weeks ago I got out my nerd mug and had a dumb thought. My nerd mug is a
custom coffee mug that I made that has this formula on it:

$$
(\star) :: M a \rightarrow ( a \rightarrow M b) \rightarrow M b
$$

This is, of course, the famous "monad" formula, you can [read about it
here](https://homepages.inf.ed.ac.uk/wadler/papers/marktoberdorf/baastad.pdf). I like this
formula because it encapsulates the deep obsession with meta-circular recursion that we
computer programmers love to play with. Anyway, that's all I'm going to say about it for
now.

For a while I've been thinking about making a second nerd mug with a different formula on
it, this time from physics. After thinking about for a while I decided it should be
something like this:

$$
\psi M_0 = (\psi_1 + \psi_2) M_0  \rightarrow   \psi_1
M_{1} + \psi_2 M_{2}
$$

This is the formula that is at the center of the question of the _measurement problem_ in
quantum mechanics. Of course, like all short formulas that say a lot, it takes many words
to explain what it means.

### Classical Physics

To understand how quantum mechanics has puzzled people for so long we first have to go
back to the Newtonian physics that you might or might not have learned in high school or college
physics. You remember ...

$$
F = ma,
$$

all those stupid force diagrams with boxes and ramps and ropes and stuff. This formula is
the basis for what we now call _classical mechanics_. The word _mechanics_ tells you that
the formula describes _motion_, and it turns out that this formula, and more abstract
generalizations of it do a pretty good job of describing the motion of macroscopic objects
in most situations that you can put macroscopic objects into.

The generalization of Newtons formula above can be set up so you put some numbers into a
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

### Quantum Mechanics

Quantum mechanics was originally born to describe the motion of atoms and things related
to atoms. There is a whole catalog of interesting behaviors that the Newton and
Maxwell's laws could not explain, like:

1. The appearance of spectral lines that discrete frequencies in the spectrum of an atom.

2. The interference patterns in the two slit experiment.

4. Radioactivity.

And so on.

It turns out that the way to explain these things was to model subatomic particles as
functions that determine probabilities. These are the famous _wave functions_ of quantum
mechanics.

For example, in the two slit experiment the relevant wave function maps points in space to
a "probability amplitude" that a photon or electron will occupy that point in space. We
write such a thing as $\psi(x)$ or $\psi(x,t)$ depending on whether we are keeping track
of time. These amplitudes take the form of complex numbers. We'll get to what these
amplitudes might mean in a few paragraphs.

The next piece that you need to make quantum mechanics is a rule that defines how wave
functions evolve in time. This would be similar to the classical rules for position and
velocity that we worked out above, but different. Schrödinger is famous for discovering
the right rule, so the equation for it is named after him. It looks like this:

$$
H \psi(x,t) = \frac{\partial}{\partial t}\psi(x,t)
$$

here $H$ is again the Hamiltonian, and as before is related to the total energy of the
system you are studying. The fact that this formula looks at least superficially similar
to what we had before is sort of encouraging. What ends up happening is that functions
that are solutions to this equation provide us with the apparently discrete energy levels,
or _spectra_ that are required to explain many of the strange ways that atoms behave. In
particular it can provide you with the model of the atom that you need to explain the
spectral lines.

It _feels_ sort of like this equation describes a wave-like motion just like we might see
in classical mechanics. But, we must be careful. The waves in classical mechanics are an
aggregate phenomena created by the motion of lots of things (air molecules, water
molecules, etc) at once. Even more abstract entities like electromagnetic waves still have
a sometimes visible macroscopic manifestation (let there be light!). The quantum wave
function is nothing like this. Those complex numbers that are waving around are, as we
said above, just (sort of) probabilities.

But they don't represent probability directly. Instead, to get probabilities you have to
compute something called the _norm_ of the wave function, which is a measure of its
overall magnitude ... like its length if it were a piece of string. We write the norm of
the wave function like this: $|\psi|$ or $|\psi(x,t)|$. If you know how to compute it then
the probability of finding an electron (say) at point point $x$ in space would be

$$
P(x) =  |\psi(x,t)|^2 .
$$

Computing this norm usually involves some kind of fancy integral. This interpretation of
the wave function is called the _Born Rule_, and I'm not doing to go into the particular
details of how one computes these things here. I will say though that this formula
explains the interference patterns that you get in the two slit experiment. This
computation turns up in a lot of "beginner" books on quantum mechanics, including the [one
that Feynman wrote](https://www.feynmanlectures.caltech.edu/III_01.html). So look there
for more details.

It seems a little bit too convenient that this particular computation would be the way to
find the probability of quantum events. However, this fact, so far,  is undefeated in
terms of experimental confirmation. Every experiment that has been done in quantum
mechanics has amounted to thinking about a wave function, defining the right Hamiltonian,
and then computing probabilities with the Born Rule, and the numbers are always right.
Sometimes they are right to a ludicrous level of precision too.

### Linearity and Operators

To get from wave functions to the weird measurement formula above we have to observe a
strange fact about the nature of the solutions to the Schrödinger equation. The
Schrödinger equation is what is called a _linear_ differential equation. Linear functions
obey a simple and very convenient rule. If you have some function $f$ that maps (say) real
numbers (${\mathbb R}$) to real numbers, then given two real numbers $x$ and $y \in
{\mathbb R}$ the following will be true:

$$
f(x + y) = f(x) + f(y)
$$

and also

$$
f(ay) = a f (xy)
$$

for any constant $a \in {\mathbb R}$.

So the general rule for linear functions will be:

$$
f(ax + by) = a f(x) + b f(y).
$$

Let's call this rule "(L)".

You might remember linear functions from high school algebra because when you graph them
you get a straight line, and in general you can express all linear functions from
${\mathbb R}$ to ${\mathbb R}$ with this formula, which haunts the dreams of high
schoolers everywhere:

$$
f(x) = mx + b
$$

Linear algebra generalizes the study of linear things to higher dimensions, so instead of
real numbers and simple linear functions you play with _vectors_ and linear
_transformations_ or _operators_ which usually take concrete form as matrices. I outlined
the rules for simple vector spaces in an [earlier post about
physics](reading-physics.html), and these rules haunt the dreams of college sophomores and
juniors, and programmers who write graphics code.

To return the the Schrödinger equation. Recall that it is written

$$
H \psi(x,t) = \frac{\partial}{\partial t}\psi(x,t) .
$$

Now let's rearrange this a little bit and make it easier to read by just remembering the
space and time dependence in our head:

$$
H (\psi) = \frac{\partial}{\partial t} (\psi) .
$$

What this formula says is that whatever this function $H$ is, it must behave the same as
this other function "$\partial / \partial t$" which is the "taking the first derivative"
function. But taking first derivatives is a _linear_ function (of functions). In
particular it obeys the general rule (L) that I wrote down above. So $H$ must also be
linear in the wave function.

So, if you have _two_ wave functions $\psi$ and $\phi$ and they both are solutions to the
Schrödinger equation, it must be the case that any linear combination of the two is also
the solution. That is, I can make a new function like this:

$$
\varphi = \alpha \psi + \beta \phi 
$$

where $\alpha$ and $\beta$ are complex numbers, and $\varphi$ must also be a solution.

This, it turns out, [*is the most important rule in all of quantum
mechanics*](https://www.youtube.com/watch?v=Ei8CFin00PY&t=2278s).

### The Algebra of Quantum States

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



### Notes

We will not really concern ourselves with the mathematical details of all of this, but
there are three important facts to keep in mind here:

1. In the above model, states all carry simple definite values.

2. In addition, things move along well defined smooth paths. There do not appear to be
   any constraints on the values that $x$ and $p$ can take.

3. And, if you look at the thing, it's right where you think it will be and as long as you
   are careful the act of looking will not change the behavior of the thing all that much.
