---
title: Quantum Mechanics, Part 3 - Measurement
date: 2022-09-6
author: psu
---

In [part 1](mechanics.html) and [part 2](quantum.html) we tried to set up enough of the
mathematical formalism of quantum mechanics to be able to talk about the measurement
paradox in a reasonably precise way. If you were smart and skipped ahead to here you can
now get the whole answer without reading through all that other tedious nonsense.

For reference, here are the rules that we currently know about quantum mechanics:

1. States are vectors in a Hilbert space.

1. Observables are self-adjoint linear operators on that space.

1. There is a special observable for the energy of the system whose operator we call $H$,
for the Hamiltonian. Time evolution of states is then given by the Schrödinger equation.

1. The possible values of observables are the eigenvalues of the corresponding operator,
and the eigenvectors are the states that achieve those values. In addition, for the
operators that represent observables, the eigenvectors always form an orthonormal basis of
the underlying state space.

At this point you should be _screaming_ at me. I've been telling you from the beginning
that I was going to talk about _measurement_ and here we are 4,000 words in the future and
I still have not said thing one about it. What an asshole.

Well now we'll finally talk about measurement.

As I said in the other two parts, I am the furthest thing from an expert on this subject,
I'm just trying to organize what I think are the most interesting ideas about what is
going on here, and hoping that I'm not too wrong. I'll provide a list of more better
sources at the end.

### Measurement and Probability

In quantum mechanics measurements are the connection between eigen-things and observables.
We interpret the eigenvalues of the operator representing an observable as the actual
values that we can see from that observable in experiments (say). In addition, if the
system is in a state which is an eigenvector of the operator, then the value you get from
the observable will be the corresponding eigenvalue. You will see the term "eigenstate"
used for such vectors.

The simplest model of _measurement_ in quantum systems is to just say that a measurement
is represented by acting with the operator of the observable on a vector representing the
state of the system. In addition we'll assume that states are always simple vectors (so
called "pure" states) and that measurements are always simple operators. There are
generalizations of both of these ideas that you can pursue if you are interested. See the
further reading.

So, for simple measurements on systems that happen to be in the right kind of state (a
state that is an eigenvector of the operator), we always get absolutely determined and
well defined answers.

But, quantum states come in Hilbert spaces, which are linear. This means that we also have
to figure out what to do if our state vector is any linear combination of the
eigenvectors. For simplicity let's say we are in a system where the Hilbert space is two
dimensional. So, the simplest basis that we can define for the space needs only two
vectors: $$| 0 \rangle = \begin{pmatrix}1\\ 0\end{pmatrix}$$ and $$| 1 \rangle =
\begin{pmatrix}0\\ 1\end{pmatrix}$$ 

If we have some operator $S$ such that $| 0 \rangle$ and $| 1 \rangle$ are its
eigenvectors. Then we know that if we measure either $| 0 \rangle$ or $| 1 \rangle$ with
$S$ we'll get some number:

That is:

$$
S | 0 \rangle = \lambda_1 | 0 \rangle
$$

and

$$
S | 1 \rangle = \lambda_2 | 1 \rangle
$$

But what happens when I give you another perfectly fine state like

$$
\alpha | 0 \rangle + \beta  | 1 \rangle 
$$

where $\alpha$ and $\beta$ are arbitrary constants? Here is where we invoke the Born rule
which I mentioned in part 1. This rule states that the result of a measurement on a state
like the one above will be _either_ $| 0 \rangle$, with probability $|\alpha|^2$, or $| 1 \rangle$
with probability $|\beta|^2$. Actually the probabilities have to add up to 1, so the real
values will be subject to some normalization rule that I am ignoring here.

One last puzzle that should be bothering you is the question of whether we can represent
_any_ state as a linear combination of eigenvectors of the operator. It turns out we can,
because we specified that observables are self-adjoint, so we can invoke the spectral
theorem above to know that given an arbitrary state $\psi \in \cal H$ we can always write
the state as a linear combination of the eigenstates.

So, the summary of this section is, given an arbitrary state $\psi \in \cal H$ and an
observable $S$ you can calculate the behavior of the observable by first expressing $\psi$
as a linear combination of the eigenvectors of $S$ (because you can find eigenvectors that
form a basis). Assuming that the eigenvectors are $| 0 \rangle$ and $| 1 \rangle$  the
expression for $\psi$ will then be something like

$$
\psi = c_1 | 0 \rangle + c_2  | 1 \rangle 
$$

The result of doing a measurement will then either be the eigenvalue $\lambda_1$ or
$\lambda_2$ corresponding to one of the eigenvectors, and the probability of getting any
given value will be a probability of getting $\lambda_1$ is

$$
p_1 = { |c_1|^2 \over |c_1|^2 + |c_2|^2 }
$$

and the probability of getting $\lambda_2$ is

$$
p_2 = { |c_2|^2 \over |c_1|^2 + |c_2|^2 } .
$$

This is the Born rule, which we have met before. Here I've normalized the probabilities
like a good boy.

### An Example

The most famous two-state system in the quantum mechanics literature is the so-called
"spin $1\over 2$" system. The behavior of these systems was first explored in the famous
[Stern-Gerlach](https://en.wikipedia.org/wiki/Stern–Gerlach_experiment) experiment. In
this experiment you shoot electrons (really atoms with a single free electron) through a
non-uniform magnetic field, and see where they end up on a screen on the other side. You
would expect them to end up in some continuous distribution of possible points, but it
turns out they end up in only one of two points, which we will call "up" and "down". We're
just going to take this result for granted rather than trying to explain it right now

We can imagine spin as being like a little arrow over the top of the electron pointing
either "up" or "down" along a certain spatial axis (e.g. $x$, $y$, or $z$). The state
space for this system is just $\mathbb C^2$. Each one of the spin states is some linear
combination of $| 0 \rangle$ and $| 1\rangle$ above.

It also turns out that there are exactly four operators that we can use as observables:
the identity, and a spin operator for each spatial axis which we will call $S_x$, $S_y$
and $S_z$. For all the details of where these come
from, you can read about the [Pauli
matrices](https://en.wikipedia.org/wiki/Pauli_matrices).

The Pauli matrices are usually called $\sigma_1$, $\sigma_2$ and $\sigma_3$. You could
also write them as $\sigma_x$, $\sigma_y$ and $\sigma_z$. But I stayed with $S$ for "Spin"
in my text. I can't decide if it's a deep mathematical fact or just a strange coincidence
of nature that $\mathbb C^2$ should have exactly three operators for spin measurements,
one in each direction that we need. It seems a bit spooky that it worked out that way.

We measure spin using a box with a magnetic field in it. So, imagine that we have some box
with one hole on the left, and two holes on the right. We send an electron in the left
hole and it comes out the top hole if the spin is up, and the bottom hole if the spin is
down. We have three kinds of boxes that each measure the spin in a different direction
(again: $x$, $y$ or $z$).

So the $S_z$ box looks like this:

> <a href="../images/z-spin-50.pdf">
<img src="../images/z-spin-50.pdf"></a>

Electrons (say) go in the left hole and the spin up stuff comes out the top and the spin
down stuff comes out the bottom. We start with a beam of particles where each particle is
in a completely random state. What ends up happening in this experiment is that half of
the particles end up at the "spin up" hole and the other half end up at the "spin down"
hole. This is a rather strange result given a classical understanding of electromagnetism.

A more rigorous _quantum mechanical_ argument that the answer here should be 50/50 is a
bit subtle, and involves a more general notion of state and measurement than I have
presented. But, it makes a certain amount of sense if you believe that all of those random
particles are in a state that is a linear combination of $z$-up and $z$-down, and you also
believe the Born rule. You then average over a uniform probability distribution and 50/50
seems like it should be right.[^1]

The literature is also full of much more complicated calculations of the path
that a single particle should take through this experiment. But we are also going to
ignore all of that.

What is more interesting for us is what happens when you put multiple spin measuring boxes
together and take sequential measurements.

So, first suppose we put another $S_z$ box right after the first one. What we should
observe is that all of the particles that enter the second box come out of the "spin up"
hole of the second box. This seems very reasonable, since they are all spin up. particles. 

> <a href="../images/z-spin.pdf">
<img src="../images/z-z-spin.pdf"></a>

This behavior might make you think that $z$ spin is a property that we an attach to the
electron, perhaps for all time, like classical properties, and that this box acts like a
filter that just reads off the property and sends the particles the right way. Keep this
thought in your brain.

Next, we can see that the relationship of $S_z$ to $S_x$ is also straightforward. A
particle that has a definite $z$ spin still has an undefined $x$ spin:

> <a href="../images/z-spin.pdf">
<img src="../images/z-x-spin.pdf"></a>

So here when we put a $S_x$ box right after the $S_z$ box we and send all the $z$ spin up
particles through we will get $x$ spin up half the time and $x$ spin down half the time.
If you study the material on the Pauli matrices above this will make sense because it
turns out that the eigenvectors of $S_z$ can be written as a superposition of the $S_x$
eigenvectors with coefficients that make these probabilities 1/2 (and vice versa). In
particular:

$$
z_+ = | 0 \rangle  = \begin{pmatrix} 1 \\ 0 \end{pmatrix}, \, {\rm and}\,\, z_- = | 1
\rangle = \begin{pmatrix} 0 \\ 1 \end{pmatrix}
$$

$$
x_+ = {1 \over \sqrt{2}} \begin{pmatrix} 1 \\ 1  \end{pmatrix}, \, {\rm and}\,\, x_- = {1 \over
\sqrt{2}} \begin{pmatrix} 1 \\ -1 \end{pmatrix}
$$

From this we can figure out that, say:

$$
x_+ = {1 \over \sqrt{2}} (z_+ + z_-)
$$

and

$$
z_+ = {1 \over \sqrt{2}} (x_+ + x_-)
$$

The Born rule then tells us that measuring the $z$-spin of an $x$-up particle will get you
$z$-up half the time and $z$-down half the time. Similarly, measuring the $x$-spin of a
$z$-up particle will get you $x$-up half the time and $x$-down half the time.

Relationships like this also happen to be true for the all of eigenvectors of all the spin
operators, so you will always get this kind of even split if you measure from different
axes in a sequential fashion. Some of the references at the end go into these details.

Finally, we can push on this idea a bit more by adding yet another $S_z$ box on the end of
the experiment above. When we do this we get a result that is somewhat surprising.

<a href="../images/z-spin.pdf">
<img src="../images/z-x-z-spin.pdf" width=800 ></a>

We might think that all of the particles coming out of the $S_x$ box should be $z$-spin
"up" since we had filtered for those using the first box. Sadly, this is not the case.
Measuring the $x$-spin seems to wipe away whatever $z$ spin we saw before. This is
surprising. Somehow going through the $S_x$ box has made the $z$-spin undefined again, and
we go back to 50/50 instead of 100% spin up.

### The Problem

The question that the final spin-box experiment brings up is one that is at the core of
the conceptual puzzle of quantum mechanics: does the particle have a $z$-spin at all
unless we measure $z$-spin?

We can interpret the first two experiments as behaving like sequential filters. The first
$z$-spin box filters out just the particles with spin-up, and then we feed those to the
second box (either $z$ or $x$) and get the expected answer. 

In order to make sense of the last spin box experiment it seems like we need come to terms
with the fact that measurements in quantum mechanics appear seem to have side effects on
the systems that they measure. How can we account for the fact that the $z$-up property
that the particles have before measuring the $x$-spin seems to disappear after we measure
the $x$-spin?

The standard answer to this question goes something like this:

1. We start with particles with some arbitrary spin state.
1. But, when the particles that come out of the $z_+$ hole have a definite spin of $z$-up.
1. Thus if the second box measures $z$-spin again, all the particles are spin up, and they
all come out of the $z$-up hole.
1. But, if the second box is a $x$-spin box, then since $z_+ = {1 \over \sqrt{2}} (x_+ +
x_-)$, the $x$-spin is indeterminate, and we go back to a 50/50 split.
1. Finally, if we now believe that measuring the spin also resets the spin state of the
particle, like in step 2 above, then the new state of the particle after the $x$-spin box
should be $x_+ = {1 \over \sqrt{2}} (z_+ + z_-)$, which is why in the third and last box
the $z$-spin is indeterminate again.

Thus, we are led to add one more rule to the four we already had for how quantum
mechanics works:

5. Suppose we have a quantum system that is in some state $\psi$ and we perform a
measurement on the system for an observable $O$. Then the result of this measurement will
be one of the eigenvalues $\lambda$ of $O$ with a probability determined by the Born rule.
In addition, _after_ the measurement the system will evolve to a new state $\psi'$, which
will be the eigenvector that corresponds to the eigenvalue that we obtained.

We seem to need this rule, along with the original rule about eigenvalues and eigenvectors
to make our formalism agree with the following general _experimental_ fact:

Whenever we measure a quantum system we always get one definite answer, and if we measure
the system again in the same way, we get the same single answer again.

This rule, is, of course, the famous "collapse of the wave function", and with the
background that I have made you slog through it should really be bothering you now.

Recall that until now all of quantum mechanics has been simple, continuous, and most of
all _linear_. The only time evolution rule that we have, the Schrödinger equation, very
carefully evolves states in a way that always preserves linear combinations. So if we
start in a state like

$$
ψ_0 = c_1ψ_1 + c_2ψ_2
$$

we smoothly and linearly move to another state like

$$
ψ_0' = c_1'ψ_1' + c_2'ψ_2' .
$$

If we want to believe that quantum mechanics is a general theory that not only describes
(say) how electrons with spin move but also describes how the electron with spin interacts
with the box that measures the spin, then when we start with an electron in some
superposition state (a linear combination like above) we better also end in a state that
is a superposition. But that is not what happens.

If we start with a particle in the state

$$
z_+ = {1 \over \sqrt{2}} (x_+ + x_-)
$$

and push it into the $x$-spin box, it comes out as either $x_+$ or $x_-$. The
superposition is destroyed. Further if we changed the box to one that just (say) had a
blue light for up and a red light for down, we never see a universe where a particle goes
into the box and then the result of the experiment is the particle putting the box into a
superposition of blue and red. We always get one box at the end, and either blue or red.

If you add a cat to the box, then you have Schrödinger's famous cat puzzle.

So this, dear friends, is the measurement problem. With all of the formal background that
we've laid out in the last two parts we can write it down in just a few words:

If quantum mechanics is a linear theory, then why does measuring things destroy
superpositions?

### Possible Answers

The literature on the "interpretation of quantum mechanics" is of course full of deep
thoughts about the questions that the measurement problem raises. I could not possibly do
more than unfairly caricature the various possible stances that one could have about this
question, so that's what I will do. Here are some things you can think:

1. The standard text book picture just states the collapse rule as a postulate and
   also says something like: until we understand how measurement works, just use the rules
   and try to be happy. This is also often also called the "Copenhagen" interpretation,
   although that's not really right and the [Copenhagen
   story](https://plato.stanford.edu/entries/qm-copenhagen/) is actually a lot more
   complicated than this.

1. The superpositions don't actually collapse, we just can't see the other branches. This
   is the [Everett](https://plato.stanford.edu/entries/qm-everett/) and/or the ["Many
   Worlds"](https://plato.stanford.edu/entries/qm-manyworlds/) idea.

1. Quantum states are not actually things that exist in the world, they are measures of
   what we know about the world. So the "collapse" process is just the observer updating
   their knowledge of the world and is completely natural. The most recent instance of
   this idea is [QBism](https://plato.stanford.edu/entries/quantum-bayesian/).

1. Wave functions [actually collapse](https://plato.stanford.edu/entries/qm-collapse/)
   through some random physical process, and we can use this fact to derive the
   measurement behavior (and perhaps the Born rule). The most famous theory like this is
   the [GRW stuff](https://plato.stanford.edu/entries/qm-collapse/).

1. The wave functions do not describe the entire state of the system. Instead there is
   some other part of the state that gives systems definite measured properties. The most
   popular version of this idea is the "pilot wave" or
   ["Bohmian"](https://plato.stanford.edu/entries/qm-bohm/) version of quantum mechanics.


There are dozens more ideas that I will not list here because I don't understand them even
   enough to list them.

The most interesting current trains of thought on these questions, to me, are papers like
this one: [Is the quantum state real? An extended review of _ψ_-ontology
theorems](https://arxiv.org/abs/1409.1570). This not only has a great pun in the title,
but also examines what we really mean when we say things like "realist", "ontological" or
"epistemic" in this context. I also really like deep thoughts about the relationship
between quantum and classical states of being. For example, I really enjoyed what I could
understand in [Klaas Landsman's long treatise about these
issues](https://arxiv.org/abs/quant-ph/0506082).

Ultimately it's pretty clear that while the formalism of quantum mechanics is not too hard
to explain (although who knows if I actually did it) the weird conceptual question at the
center of the theory remains: what does the formalism actually tell us about the world?
Why is it that there are clearly pieces that are missing or that in any case we seem not
to be able to directly observe? And why can't we seem to figure out what those pieces are?

If forced to take a stance I would probably say that I am most sympathetic to the more
"ontological" theories, like Bohm or Everett. But, I think we need a better understanding
of the nature of quantum and quantum/classical interactions to figure out this puzzle.

### Things I Left Out, Lies I Told

1. I left out a lot of important details related to the structure of Hilbert space. In the
finite dimensional case they don't matter too much but they are critical in the infinite
dimensional case. Watch [Schuller's lectures on quantum
mechanics](https://www.youtube.com/playlist?list=PLPH7f_7ZlzxQVx5jRjbfRGEzWY_upS5K6) to
fill those in.

1. I really only covered the simplest possible models of quantum states, observables and
   measurements. Mixed state, density operators, POVMs and all that are missing. [Schuller's
   lectures](https://www.youtube.com/playlist?list=PLPH7f_7ZlzxQVx5jRjbfRGEzWY_upS5K6)
   or any of the more mathematical books that I listed cover this.

1. I never mentioned decoherence. I am a bad person.

1. I left out the uncertainty principle, which is kind of a big part of the story to
   skip. You can talk about it in the context of the spin operators but it's a lot of work
   and not directly related to the puzzle that I was trying to get to.

1. I left out the entire huge world of _entangled_ states because I did not want to
   introduce any more formalism. Entanglement, Bell's theorem and all that is also just
   too big a subject to mention and not go into it, so I left it out Maybe we'll cover that in a future
   part 4.

1. Related to all of the above ... the fact first box in the spin experiments should take
   random states and split them exactly 50/50 is pretty subtle and deep. I'm still not
   100% sure I understand all the details about it.
   
1. I played fast and loose with normalization when talking about quantum states and
   operators. I should have been much more careful, but I'm lazy.

1. I wish I could have talked about the two slit experiment. But, I'd have done a lousy
   job so go read [Feynman](https://www.feynmanlectures.caltech.edu/III_01.html) instead.

### References

More references, some repeated from the other parts because I like them just that much.

1. If you want to go all the way to the beginning with the original sources, both
of the books by
[Dirac](https://global.oup.com/academic/product/the-principles-of-quantum-mechanics-9780198520115?cc=us&lang=en&)
(or look at the [Google Books
link](https://www.google.com/books/edition/The_Principles_of_Quantum_Mechanics/XehUpGiM6FIC?hl=en&gbpv=0)
which is likely to be more reliable) and [von
Neumann](https://press.princeton.edu/books/hardcover/9780691178561/mathematical-foundations-of-quantum-mechanics)
are still pretty readable.

1. Travis Norsen's [Foundations of Quantum
   Mechanics](https://link.springer.com/book/10.1007/978-3-319-65867-4) is a great
   introduction to this material. A good combination of nuts and bolts physics and
   discussions of the conceptual issues.

1. David Albert's [Quantum Mechanics and
   Experience](https://www.hup.harvard.edu/catalog.php?isbn=9780674741133) (also at
   [amazon](https://www.amazon.com/Quantum-Mechanics-Experience-David-Albert/dp/0674741137))
   has a nice
   abstracted description of the spin-box experiment that I have butchered above. This one
   goes well with Norsen.

1. Sakurai's [Modern Quantum
   Mecanics](https://www.amazon.com/Modern-Quantum-Mechanics-J-Sakurai/dp/1108473229)
   starts with a good discussion of the spin experiments I used as an example.

1. Hughes' [The Structure and Interpretation of Quantum
Mechanics](https://www.hup.harvard.edu/catalog.php?isbn=9780674843929) also starts with
spin but is a more philosophical look at the material.

1. The [Stanford Encyclopedia of Philosophy](https://plato.stanford.edu/) has a
   lot of material on [quantum mechanics](https://plato.stanford.edu/entries/qm/) and [its
   interpretation](https://plato.stanford.edu/entries/qt-issues/). Their summary page is
   also a bit shorter, yet also more detailed, than my effort here.


### Notes

[^1]: The way you calculate a probability of 1/2 for the undefined states is to represent
them as a random "mixture" of all possible spin states and use a more general state object
called a density matrix to represent the state. With this representation the probability
of getting either spin up or spin down in the experiment then turns out to be 1/2. Any of
the references above can teach you about this.
