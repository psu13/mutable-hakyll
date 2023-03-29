---
title: Quantum Puzzles
date: 2021-12-26
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

1. In the above model, every given thing carries a definite position and momentum. So you
   can think of the "state" of the thing as holding these simple definite values.

2. In addition, things move along well defined smooth paths. There do not appear to be
   any constraints on the values that $x$ and $p$ can take.

3. And, if you look at the thing, it's right where you think it will be and as long as you
   are careful the act of looking will not change the behavior of the thing all that much.

All of this worked great. Maxwell and others even extended the general philosophical
framework to electricity and magnetism, and that worked great too as long as you didn't
peer into it too hard.

The trouble began when people actually peered into it too hard.

#### Quantum Position and Momentum

By the early 20th century there were a few famous experiments, mostly involving what we
would now call atomic and sub-atomic behavior, that could not be adequately explained by
the the physics of the time. It would take too long to talk about all of them, so here is
a list of the highlights:

1. [Black Body Radiation](https://en.wikipedia.org/wiki/Black-body_radiation)

2. [Atomic Spectra](https://en.wikipedia.org/wiki/Spectral_line)

4. [The Photoelectric Effect](https://en.wikipedia.org/wiki/Photoelectric_effect)

1. The famous [double slit
experiment](https://en.wikipedia.org/wiki/Double-slit_experiment), the puzzling nature of
which [Feynman describes so well in his
lectures](https://www.feynmanlectures.caltech.edu/III_01.html).

3. [The Stern-Gerlag Experiment with
   Spin](https://en.wikipedia.org/wiki/Stern–Gerlach_experiment) and similar experiments
   with [photon polarization](https://www.youtube.com/watch?v=zcqZHYo7ONs).

All of this experimental experience holds some strange puzzles:

1. First, there appear to be situations where the "state" of these small objects are
   arbitrarily constrained to only take on specific values. This shows up in spins only
   being allowed to have two possible values (creatively called "up" and "down"), or the
   energies of atomic particles and light (in the radiation and photoelectric experiments)
   only being allowed to take on a set of discrete values under some circumstances.

2. Second, the experiments seem to imply a probabilistic relationship between the "state"
   of atomic objects and the results of the experiments. The most straightforward
   explanations for the double-slit and spin experiments, for example, both have this nature.

2. Finally, electrons and photons also seem to behave differently depending on whether you have
   looked at them. This is most obvious when observing how the interference pattern in the
   2-slit experiment disappears if you put detectors at either slit to see where the
   particles "really" went. But, this puzzle also comes up in the spin experiments if you
   chain multiple spin (or polarization) detecting boxes together and do a sequence of
   observations.

After puzzling over all of this for a couple of decades, by the 1930s folks like Bohr,
Heisenberg, Schrödinger, Dirac, von Neumann, Born, and so on had come up with a
mathematical framework that explained the data. I will summarize this below. I recommend
reading both Feynman's and Aaronson's explanations of the formalism as well. They are both
pretty readable and they explain similar material from very different viewpoints.

#### Quantum States

#### Operators and Linearity

#### Schrödinger's Equation


#### Spin and Such

#### The Trouble with Quantum Mechanics

