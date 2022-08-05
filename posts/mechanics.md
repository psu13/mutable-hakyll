---
title: Quantum Mechanics, Part 1 - Mechanics
date: 2022-08-06
author: psu
---

I got it into my head that I should try to explain the problem with quantum mechanics on
this web site. I am, of course, no expert on this subject at all. But I wanted to do a
relative simple shallow (but mostly correct) thing, like my [category theory
tutorial](yoneda-speedrun.html). So, over the last few months I've taken a few different
shots at it but never found a way to wind it up into a single coherent train of thought. I
wanted to thread my way through the physical puzzles to the mathematical formalism and
then end up at the particular formula that, in my mind, sums up all of the problems.

But, that ended up just being too much. So I think I'll break it up into two or three
parts, the first talking about the world view of so called "classical" physics and how it
broke down, the second talking about the quantum formalism, and the last talking about the
uber-puzzle.

I was always taught in school that it's bad form to write an introduction that is just an
outline of the piece, but there you go.

### Mechanics

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
there are two important thoughts to keep in mind here:

1. In the above model, every "thing" that we study carries a definite value for these two
   attributes that we are calling "position" and "momentum." These two values completely
   define the behavior of the objects that we are studying using this framework. So, the
   objects move through space on smooth and _completely predictable_ paths, and it seems
   like their current state (position and momentum) is absolutely determined by their past
   state.

1. More importantly, the model above directly computes all possible values of $x$ and $p$
   that could possibly exist. That is, when you put your numbers in and turn the crank the
   numbers that come out are always, within the limitations of experimental error, the
   numbers that you see when you look at the real world. So you can, for example, throw a
   ball in the air and carefully track its position and speed at all times, and it will
   match the formulas pretty much perfectly. Not a lot of mystery.

By the end of the nineteenth century physics had developed two very successful models for
how the world works: mechanics and electromagnetism and both fit into the mathematical and
intellectual framework outlined above: behaviors determined by smooth and deterministic
differential equations that compute values that are "real" in the actual world. Life was
good.

The problem was that it didn't work.

### Quantum Mechanics

Quantum mechanics was originally born to describe the motion of atoms and things related
to atoms. The development of the theory was driven by the experimental discovery of a host
of behaviors that "classical" physics could not explain:

1. The behavior of the so called "black body" radiation.

2. The photoelectric effect.

1. The puzzle of why atoms were stable, when according to classical E&M they should
   immediately collapse.

1. The appearance of spectral lines that discrete frequencies in the spectrum of an atom.

1. "Spin" and all that.

1. The famous two-slit experiment.

And so on. All of these experiments are related to the "motion" of atomic (very very
small) particles and radiation. The puzzling thing about these experiments with atoms and
light was that while we think of atoms and their constituents as "particles" some of the
behaviors that were observed only make sense if you model them as "waves". On the other
hand, classical E&M models light as a wave ... but some of these experiments (the
photoelectric effect) only made sense if light behaved more like a "particle".

Over the first quarter of the 20th century various ad-hoc models and ideas were proposed
to explain these things. But it wasn't until the late 20s and early 30s that all of these
ideas were codified into a more or less unified theory that we call quantum mechanics. The
answer, it turned out, was to model material particles as waves, or "wave functions" that
are solutions to a particular differential equation, the famous one from Schrödinger:

$$
i \hbar \frac{\partial}{\partial t} | \psi(x, t) \rangle  = H | \psi(x, t) \rangle .
$$

Here the odd notation $| \psi \rangle$ is used to denote the wave function of the quantum
particle. I will go more into where this notation comes from in the next part. 

The rest of the formula seems familiar enough on a surface level. $H$ is again the
Hamiltonian, and as before is related to the total energy of the system you are studying.

In fact, if you noodle around with this formula in just the right way you can come up with
some mathematics that does a pretty good job computing the [energy levels of the lines in
the spectrum of the hydrogen
atom](https://en.wikipedia.org/wiki/Hydrogen_spectral_series). Recall that hydrogen is
made up of a single proton with an electron whizzing around it. To explain the spectrum
Bohr famously built a hypothetical model of the atom where electrons can only sit in a
certain set of orbits that each have specific fixed energies. It turns out that when you
set up the equations correctly you can find solutions to a version of the Schrödinger
equation that give you wave functions at exactly these energies. You don't get orbits, but
you do get the so-called "stationary states" that are completely stable and match up with the
spectral lines perfectly. So in some sense the electron is just sitting there waving
around in some space in one of many possible fixed configurations. You've [seen the
pictures of the electron
shells](https://en.wikipedia.org/wiki/Electron_shell#/media/File:Atomic-orbital-clouds_spdf_m0.png),
right?

So what we have learned is that we can use Schrödinger's equation and some
smarts to tell us "where" the electron is in the atom. As ever, I will not go into the
details. There are any number of books that will explain this to you. For example, [Jim
Baggot's
book](https://www.amazon.com/Quantum-Cookbook-Mathematical-Foundations-Mechanics/dp/0198827857/)
is good for the physics point of view, while [Stephanie
Singer](https://www.amazon.com/Linearity-Symmetry-Prediction-Undergraduate-Mathematics/dp/0387246371/)
covers much the same material from a more mathematical viewpoint.

All of this makes you really want to believe that the wave function describes some sort of
physical wave-like _thing_ spread over all of space ($x$) and time ($t$) that will tell
you something about the relationship between "where the particle is" and "what the energy
is". The fact that photons and even electrons create interference patterns that are very
much like the ones you get from water waves in the two-slit experiment ([see Feynman's
famous description here](https://www.feynmanlectures.caltech.edu/III_01.html)) makes you
want to believe this even harder.

But, sadly, this is not so.

### The Trouble With Quantum Mechanics

The waves in classical mechanics are an aggregate phenomena created by the motion of lots
of things (air molecules, water molecules, etc) at once. Even more abstract entities like
electromagnetic waves still have a sometimes visible macroscopic manifestation (let there
be light!). In addition, as I mentioned before, the classical equations, in some sense,
describe behavior that you can _directly observe_. You know the waves are moving through
space on a particular trajectory because you can look at (say) the sky and _see_ the light
shining down on you.

The quantum wave function is nothing like this. Those complex numbers that are waving
around are doing so in a space completely disconnected from the real world. In particular,
they don't tell you where the photon or electron _is_. Instead all they tell you is
something about the chance that you have of seeing it somewhere if you look there.

But they don't tell even you this probability directly. Instead, to get probabilities you
have to compute something called the _norm_ of the wave function, which is a measure of
its overall magnitude ... like its length if it were a piece of string. We write the norm
of the wave function like this: $|\psi|$ or $|\psi(x,t)|$. If you know how to compute it
then the probability of finding an electron (say) at point point $x$ in space would be

$$
P(x,t) =  |\psi(x,t)|^2 .
$$

Computing this norm usually involves some kind of fancy integral. This interpretation of
the wave function is called the _Born Rule_, and I'm not doing to go into the particular
details of how one computes these things here. I will say though that this formula
explains the interference patterns that you get in the two slit experiment. This
computation turns up in a lot of "beginner" books on quantum mechanics, including the one
by Feynman that I linked to above.

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
any single particle while it travels between the slits and the detector wall. The theory
says nothing about it.

Worse, as is well known, if you try and figure out what happens for yourself by (say)
_looking_ at each one of the slits to see which way the photon goes ... the whole
experiment falls apart and you get no quantum interference. Instead the act of measuring
the position of the photon in some way seems to lock you into a history where all the photons
suddenly take a single well defined path to the detector array, rather than creating the
wavy interference that we got before.

This is, as you can imagine, a very unsatisfactory situation. Physics is supposed to tell
you _what happened_ and _where things go_. Classical mechanics seems to do this perfectly,
right down to having an exact and satisfying connection between the mathematical model and
what you observe in the real world. We get none of that in quantum mechanics. It is more
like an anonymous computer program that always spits out the right answer for which you do
not have the source code, so you can never reason about the exact mechanism by which the
answer was generated.

In addition quantum mechanics appears to make you accept a world where the equations that
tell you how systems evolve appear to be completely evolve one way (the smooth Schrödinger
equation) when you leave them alone and another way (no interference) when you look at
them. This is one aspect of the so called "measurement problem" and a lot of people
smarter than me have thought about it and still find themselves confused. I am also mostly
confused about this, but it will take a few more details to get at the core of why.

See you later, in part 2.
