---
title: Quantum Puzzles
date: 2022-07-26
author: psu
---

If you spend any time reading about quantum mechanics you will inevitably come across a
dozen or two books that start with a sentence that reads like this:

> Quantum mechanics is arguably the most successful physical theory in the history of
science but strangely, no one really seems to agree about how it works.

Even Feynman opens his discussion of ["Quantum
Behavior"](https://www.feynmanlectures.caltech.edu/III_01.html) with this:

> In reality, it contains the only mystery. We cannot make the mystery go away by
> “explaining” how it works.

He then goes into an explanation of the famous double-slit experiment with electrons,
which certainly does seem puzzling.

On the other hand, if you ask noted computer scientist and quantum computing guy [Scott
Aaronson](https://www.scottaaronson.com/democritus/) to explain quantum mechanics what he
says seems much more confident:

> Quantum mechanics is a beautiful generalization of the laws of probability: a
> generalization based on the 2-norm rather than the 1-norm, and on complex numbers rather
> than nonnegative real numbers.

I think both of these statements are true. On the one hand, in the 50 years since Feynman
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

#### What is Mechanics Anyway?

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

#### Quantum Mechanics

Quantum mechanics was originally born to describe the motion of atoms and things related
to atoms. There is a whole catalog of interesting behaviors that the Newton and
Maxwell's laws could not explain, like:

1. The appearance of spectral lines that discrete frequencies in the spectrum of an atom.

2. The interference patterns in the two slit experiment.

4. Radioactivity.

And so on.

It turns out that the way to explain these things was to model the behavior of subatomic
particles as elements of a space of functions that determine probabilities. These are the
famous _wave functions_ of quantum mechanics.

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

#### Linear Spaces and Operators

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

