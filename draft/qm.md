---
title: Quantum Mechanics
date: 2022-08-01
author: psu
---

Almost every book or article about quantum mechanics seems to start with a passage like
this:

> Quantum mechanics is arguably the most successful physical theory in the history of
science but strangely, no one really seems to understand or agree about how it works.

Then, depending on the point of view of the author, you will get a couple of different
explanations about the core puzzles of the theory. 

The classic physics path through the subject is historical and analytical. First you are
taught an elaborate framework of differential equations and geometry that solves all of
those annoying physics problems that you had to study in college with a single black box
and a crank. Then you are taught the same thing, but for electromagnetism.

Finally, you are told that that at the end of the 19th century various observations were
made about the behavior of atomic systems that could not be explained by the two elaborate
frameworks that you have just been taught. I will list a few of the more important ones below:

1. Interference experiments with quantum particles.

1. Various experiments about atomic structure, including Rutherford's scattering
   experiments and the frequencies of spectral lines.

1. Spin, and all that.

What was puzzling about these experiments was the strange combination of unexpected
discrete and continuous behaviors.

To explain these things, you are then presented with a strange and abstract framework and
an ad-hoc algorithm for converting one set of differential equations (from Newton and
Maxwell) into a different set of differential equations (from Heisenberg, Schrödinger, von
Neumann, and Dirac) along with some strange rules about probability. You are shown that if
you can solve these equations, especially the one from Schrödinger:

$$
i \hbar \frac{\partial}{\partial t} | \psi \rangle  = H | \psi \rangle
$$

The solutions of the Schrödinger equation take the form of the famous "wave functions"
that explain the weird discrete/continuous behaviors above and also tell you why the
hydrogen atom does not fall in on itself and where those spectral lines at specific
energies come from.

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
of rules that read something like:

1. Quantum states are written $| \psi \rangle$ and come from a complex vector space called
   a _Hilbert_ space.

1. Observables are represented by a special class of linear operators on the Hilbert space.

1. Time evolution is determined by the Schrödinger equation and/or something called a
   unitary operator.

1. Maybe some ad hoc rules about probability and "measurement".

These rules seem very abstract and far removed from our original physical puzzles. In
particular, as we will see below, the rules don't really seem to tell you _where_ things
are and _how_ they move at all. 

What is interesting is that we can talk about these puzzles without actually ever solving
any differential equations or figuring out how atoms work. All you need is a system with
two states which we will write in the following curious way: $|0 \rangle$ and $| 1
\rangle$. As we will see below, using these two states and a couple of straightforward
rules about how to combine them, you can derive all of the apparently strange conceptual
problems in quantum mechanics for yourself.

I'm going to call this second path to quantum mechanics the non-historical and algebraic
path, or maybe the computer nerd path, since the quantum information theory and quantum
computing types tend to take this point of view. If you ask noted computer scientist and
quantum computing guy [Scott Aaronson](https://www.scottaaronson.com/democritus/) to
explain quantum mechanics what he says doesn't even seem to be about _mechanics_ (i.e. the
motion of bodies through space and time) at all:

> Quantum mechanics is a beautiful generalization of the laws of probability: a
> generalization based on the 2-norm rather than the 1-norm, and on complex numbers rather
> than nonnegative real numbers.

Needless to say, my programmer brain finds this idea much easier to get a hold on than all
the combination of differential equations and metaphysics that we started with. In fact, I
think that this algebraic viewpoint is also the quickest path to understanding the two
puzzles about quantum mechanics that no one can seem to get a handle on, even after almost
100 years: measurement and entanglement.

### The Rules

This is, in some sense, all Schrödinger's fault. His equation, which looks like this:

$$
i \hbar \frac{\partial}{\partial t} | \psi \rangle  = H | \psi \rangle
$$

leads to all the conceptual puzzles that have confused physicists for most of a century
now. It's because the spaces of functions (the famous "wave functions" of quantum
mechanics) that hold the solutions to this equation are "linear", and linear things lead
to strange behaviors.
On the way to the shiny quantum weirdness we first have do some boring review of linear algebra.

### Superposition and Entanglement

### Measurement

### The Problem

### Appendix


On the one hand, in the 50 years since Feynman
wrote his lectures we have come to a greater understanding about the mathematical
structure of quantum mechanics, so if you have that background in some sense the theory is
easier to "understand" in terms of fairly elementary mathematics. On the other hand, there
are still a few chewy mysteries at the center of it all. Even Mr. Aaronson says this later
in his own text, after declaring that quantum mechanics is completely obvious:

> Well, the thing I didn’t tell you is that there’s a separate rule for what happens when
> you make a measurement: a rule that’s “tacked on” (so to speak), external to the
> equations themselves. That rule says, essentially, that the act of looking at a particle
> forces it to make up its mind about where it wants to be, and that the particle makes
> its choice probabilistically.

But, I'm getting ahead of myself. First, we need a bit of background.

### What is Mechanics Anyway?

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

What the formula says, basically, is that if you have a thing and you can express the
energy of the thing in the right way, then given any specification of an initial position
and velocity of the thing, I can tell you exactly where the thing will be later and how
fast it will be moving. All I need is a computer and the formula.

This basic set of mathematics is how we send probes millions of miles into space and have
them hit a particular position over (say) Jupiter 5 years from now exactly when we think
they will.

We will not really concern ourselves with the mathematical details of all of this, but
there are three important facts to keep in mind here:

1. In the above model, every given thing carries a definite value for these two attributes
   that we are calling "position" and "momentum."

1. More importantly, these two values completely define the behavior of the objects that
   we are studying using this framework. So, the objects move through space on nice smooth
   paths, and it seems like their current state (position and momentum) is absolutely
   determined by their past state.

This basic set of mathematics is how we send probes millions of miles into space and have
them hit a particular position over (say) Jupiter 5 years from now exactly when we think
they will. The framework is comforting and familiar. It feels like if you take a video of
(say) a ball going up into the air and then falling back down the behavior of the ball in
the video will _exactly_ match what comes out of the mathematical engine, no matter how
fast you run your camera. There are no strange and hidden machinations running under the
covers.

To me, the problem with quantum mechanics is that this is no longer the case. But to
figure out we come to this conclusion, we need a bit of background.

### Quantum Mechanics

Quantum mechanics was originally born to describe the motion of atoms and things related
to atoms. The development of the theory was driven by the experimental discovery of a host
of behaviors that "classical" physics could not explain:

1. The behavior of the so called "black body" radiation.

1. The appearance of spectral lines that discrete frequencies in the spectrum of an atom.

2. The photoelectric effect.

1. "Spin" and all that.

4. Radioactivity.

1. The famous two-slit thought experiment.

And so on. All of these experiments are related to the "motion" of atomic particles and
radiation. And, the observations of the time seemed to indicate that many atomic behaviors
were discrete, or "quantized" in various ways (spectral lines, the discrete energy levels of
black body radiators, etc). Thus quantum mechanics was born to try and explain the motion
of quantum things, which meant things at the atomic (or smaller) scale.

Over the first quarter of the 20th century various ad-hoc models and ideas were proposed
to explain these things: Einstein's idea of "light quanta" or photons, de Broglie's wave
model of matter, and the Bohr atom, with its discrete planetary orbits. But it wasn't
until the late 20s and early 30s that all of these ideas were codified into a more or less
unified theory that we call quantum mechanics. I will now jump to the end and explain the
mathematical characteristics of the theory that make it weird. I will not really try to
provide any more motivation or intuition about this because that would take a whole text
book.

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

It _feels_ sort of like this equation describes a wave-like motion in space similar to
various kinds of waves in classical mechanics. But, we must be careful. The waves in
classical mechanics are an aggregate phenomena created by the motion of lots of things
(air molecules, water molecules, etc) at once. Even more abstract entities like
electromagnetic waves still have a sometimes visible macroscopic manifestation (let there
be light!). In addition, as I mentioned before, the classical equations, in some sense,
describe behavior that you can _directly observe_. You know the waves are moving through
space on a particular trajectory because you can look at (say) the sky and _see_ the light
shining down on you.

The quantum wave function is nothing like this. Those complex numbers that are
waving around are doing so in a space completely disconnected from the real world. In
particular, they don't tell you where the photon or electron _is_. Instead they tell you the
something about the chance that you have of seeing it somewhere if you look there.

But they don't tell you this probability directly. Instead, to get probabilities you have to
compute something called the _norm_ of the wave function, which is a measure of its
overall magnitude ... like its length if it were a piece of string. We write the norm of
the wave function like this: $|\psi|$ or $|\psi(x,t)|$. If you know how to compute it then
the probability of finding an electron (say) at point point $x$ in space would be

$$
P(x,t) =  |\psi(x,t)|^2 .
$$

Computing this norm usually involves some kind of fancy integral. This interpretation of
the wave function is called the _Born Rule_, and I'm not doing to go into the particular
details of how one computes these things here. I will say though that this formula
explains the interference patterns that you get in the two slit experiment. This
computation turns up in a lot of "beginner" books on quantum mechanics, including the [one
that Feynman wrote](https://www.feynmanlectures.caltech.edu/III_01.html). So look there
for more details.

This rule feels like the luckiest in a series of lucky guesses. But it is undefeated
in terms of experimental confirmation. Every experiment that has been done in quantum
mechanics has amounted to thinking about a wave function, defining the right Hamiltonian,
and then computing probabilities with the Born Rule, and the numbers are always right.
Sometimes they are right to a ludicrous level of precision too.

This, I think, is the first great mystery of quantum mechanics. It's not so much that you
can only compute and predict probabilities, there are many physical processes for which
that is true. The real puzzle is that while the mathematical model that I've outlined
above gets all the right answers, it does not appear to provide any insight into any
actual physical process from which those answers can be derived. That is, your experiments
always work, but it's never really clear what is "really going on" in the "real" world.

In the famous double-slit experiment, for example, you send a beam of photons
through one screen that has two very thin slits cut into it. Then you put a set of
detectors a some distance away behind this screen. The mathematics of quantum mechanics
will tell you that you should see an interference pattern on your detector array. It will
even tell you the exact shape and configuration of the pattern. If you work hard enough
you can probably compute this configuration with a stunning level of precision.

But, quantum mechanics, in some sense, can't tell you anything about "what happens" to the
particles between the slits and the detector wall. The theory says nothing about it.

Worse, as is well known, if you try and figure out what happens for yourself by (say)
_looking_ at each one of the slits to see which way the photon goes ... the whole
experiment falls apart and you get no quantum interference. Instead the act of measuring
the position of the photon in some way seems to lock you into a history where all the photons
suddenly take a single well defined path to the detector array, rather than creating the
wavy interference that we got before.

This is, as you can imagine, a very unsatisfactory situation. Physics is supposed to tell
you _what happened_ and _where things go_. And we get none of that here.

Instead quantum mechanics appears to make you accept a world where systems evolve one way
(the smooth Schrödinger equation) when you leave them alone and another way (no
interference) when you look at them. Not only that, it also appears that you don't really
have any access to any of the possible intermediate states of the smooth evolution. All
you ever see is what happens at the end of the measurement when you look. This is the
_measurement_ problem and a lot of people smarter than me have thought about it and still
find themselves confused. I am also mostly confused about this, but it will take a few
more details to get at the core of why.

At this point I've taken a few cracks at trying to illustrate where this difficulty comes
from without just writing down the math, but I'm not that smart. So I'm just going to
write down the math. We'll see how far we get, maybe I'll start here and continue in a
second post.

### Linear Spaces and Operators

There is a whole other universe of strange quantum behavior that stems from a curious
property of the Schrödinger equation. The Schrödinger equation is what is called a
_linear_ differential equation. Let me elaborate.

Linear things obey a simple and very convenient rule. If you have some function $f$ that
maps (say) real numbers (${\mathbb R}$) to real numbers, then given two real numbers $x$
and $y \in {\mathbb R}$ the following will be true:

$$
f(x + y) = f(x) + f(y)
$$

and also

$$
f(ax) = a f (x)
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

So, if you have _two_ wave functions $\psi_1$ and $\psi_2$ and they both are solutions to
the Schrödinger equation, it must be the case that, for example, this is also a solution:

$$
\psi = \psi_1 + \psi_2 
$$

In fact, _any_ linear combination of the two is
also the solution. That is, if $\alpha$ and $\beta$ are complex numbers then I can make a
new function like this which is also a solution:

$$
\psi = \alpha \psi_1 + \beta \psi_2 
$$

This state $\psi$ is what is called a "superposition" state, which is just a fancy word
that means linear combination, which in turn is just a fancy phrase for "adding the two
things together with arbitrary scalar coefficients".

This, it turns out, [*is the most important rule in all of quantum
mechanics*](https://www.youtube.com/watch?v=Ei8CFin00PY&t=2278s).

====

This formula relates, in some sense, the energy of a particle to its position and velocity
in space. Solutions to the equation form the basis for describing the states of an atom
that have certain fixed energies, and its these energies that appear in the spectra. A
tidy story.

The thing that relates the algebraic viewpoint (Hilbert space, linear operators, etc) to
the differential equations viewpoint is the fact that Schrödinger’s equation is _linear_,
so you can use a lot of machinery from linear algebra to reason about things. Linear
algebra is easier than differential equations, so that's what we'll do here.

In fact, you don't even need to think about something as complicated as the hydrogen atom
with its huge number of different states to think your way to the weird quantum puzzles
that no one understands. All you need is a system with two states which we will write in
the following curious way: $|0 \rangle$ and $| 1 \rangle$. As we will see below, using
these two states and a couple of straightforward rules about how to combine them, you can
derive all of the apparently strange conceptual problems in quantum mechanics for
yourself.