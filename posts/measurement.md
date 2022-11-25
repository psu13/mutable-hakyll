---
title: Quantum Mechanics, Part 3 - Measurement
date: 2022-09-06
author: psu
---

In [part 1](mechanics.html) and [part 2](quantum.html) we tried to set up enough of the
mathematical formalism of quantum mechanics to be able to talk about the measurement
paradox in a reasonably precise way. If you were smart and skipped ahead to here you can
now get the whole answer without reading through all that other tedious nonsense.

For reference, here are the rules that we currently know about quantum mechanics:

1. States are vectors in a Hilbert space, usually over $\mathbb C$.

1. Observables are self-adjoint linear operators on that space.

1. The possible values of observables are the eigenvalues of the corresponding operator,
and the eigenvectors are the states that achieve those values. In addition, for the
operators that represent observables, we can find eigenvectors that form an orthonormal
basis of the underlying state space.

1. There is a special observable for the energy of the system whose operator we call $H$,
for the Hamiltonian. Time evolution of states is then given by the Schrödinger equation.

Now we'll finally talk about measurement.

As before, I am the furthest thing from an expert on this subject. I'm just trying to
summarize some interesting stuff and hoping that I'm not too wrong. I'll provide a list of
more better sources at the end.

### Measurement and Probability

In quantum mechanics measurements are the connection between eigen-things and observables.
We interpret the eigenvalues of the operator representing an observable as the values that
we can see from that observable in experiments. In addition, if the system is in a state
which is an eigenvector of the operator, then the value you get from the observable will
always be the corresponding eigenvalue.

The simplest model of measurement in quantum systems is to say that a measurement is
represented by acting with a single operator representing the observable on a single
vector representing the state of the system. In this simple model we are doing "idealized"
measurements (simple operators) on "pure" states (simple vectors). There are
generalizations of both of these ideas that you can pursue if you are interested. See the
further reading.

If we perform a measurement on a system that is in a state represented by an eigenvector
of the operator), we always get absolutely determined and well defined answers.

For example let's say we are in a system where the Hilbert space $\cal H$ is two dimensional, so we
can represent it as $\mathbb C^2$ and with scalars from $\mathbb C$. So, any basis that we
define for the space needs only two vectors: $$| 0 \rangle = \begin{pmatrix}1\\
0\end{pmatrix}$$ and $$| 1 \rangle = \begin{pmatrix}0\\
1\end{pmatrix}$$ 

If we have some operator $S$ such that $| 0 \rangle$ and $| 1 \rangle$ are its
eigenvectors with eigenvalues $\lambda_0$ and $\lambda_1$. Then we know that if we measure
either $| 0 \rangle$ or $| 1 \rangle$ with
$S$ we'll get some number with probability 100%:

That is:

$$
S | 0 \rangle = \lambda_0 | 0 \rangle
$$

and

$$
S | 1 \rangle = \lambda_1 | 1 \rangle
$$

But, quantum states come in Hilbert spaces, which are linear. This means that we also have
to figure out what to do if our state vector is any linear combination of the
eigenvectors. So what if we had a state like this:

$$
c_0 | 0 \rangle + c_1  | 1 \rangle 
$$

where $c_0$ and $c_1$ are arbitrary constants? In this case the result of doing a
measurement will then either be the eigenvalue $\lambda_0$ with some probability $p_0$ or
$\lambda_1$ with some other probability $p_1$.

The Born rule then states that the probability of getting $\lambda_0$ is

$$
p_0 = { |c_0|^2 \over |c_0|^2 + |c_1|^2 }
$$

and the probability of getting $\lambda_1$ is

$$
p_1 = { |c_1|^2 \over |c_0|^2 + |c_1|^2 } .
$$

We have seen a version of this rule before, in [part 1](./mechanics.html), but this time I normalized
the probabilities like a good boy (so that they add up to 1).

One last puzzle that should be bothering you is the question of whether we can represent
_any_ state as a linear combination of the eigenvectors of the operator. It turns out we
can, because we specified that observables are self-adjoint, so we can invoke the spectral
theorem from [part 2](./quantum.html) which says that given an arbitrary state $\psi \in
\cal H$ we can always write the state as a linear combination of the eigenvectors.

In summary: given an arbitrary state vector $\psi \in \cal H$ and an observable
represented by an operator $S$ you can calculate the behavior of $S$ on $\psi$ by first
expressing $\psi$ as a linear combination of eigenvectors of $S$ (because you can find
eigenvectors that form a basis) and then applying the Born rule.

So in our example above, where the operator $S$ has eigenvectors $| 0 \rangle$ and $| 1
\rangle$, we can first write $\psi$ like this:

$$
\psi = c_0 | 0 \rangle + c_1  | 1 \rangle 
$$

And then we use the Born rule to compute the measurement probabilities.

### An Example

The most famous two-state system in the quantum mechanics literature is the so-called
"spin $1\over 2$" system. The behavior of these systems was first explored in the
[Stern-Gerlach](https://en.wikipedia.org/wiki/Stern–Gerlach_experiment) experiment. In
this experiment you shoot electrons (really atoms with a single free electron) through a
non-uniform magnetic field, and see where they end up on a screen on the other side. You
would expect them to end up in some continuous distribution of possible points, but it
turns out they end up in only one of two points, which we will call "up" and "down". We're
just going to take this result for granted rather than trying to explain it right now.

We can imagine spin as being like a little arrow over the top of the electron pointing
either "up" or "down" along a certain spatial axis (e.g. $x$, $y$, or $z$). The
Stern-Gerlach device determines the state of this "arrow" by measuring the behavior of the
electron in a magnetic field. So it's sort of like a magnet ... but not really.

The state space for this system is just $\mathbb C^2$. Each one of the spin states is some
linear combination of $| 0 \rangle$ and $| 1\rangle$ above. 

It also turns out that there are four convenient operators that we can use as observables:
the identity, and a spin operator for each spatial axis which we will call $S_x$, $S_y$
and $S_z$. For all the details of where these come from, you can read about the [Pauli
matrices](https://en.wikipedia.org/wiki/Pauli_matrices).

The Pauli matrices are usually called $\sigma_1$, $\sigma_2$ and $\sigma_3$. You could
also write them as $\sigma_x$, $\sigma_y$ and $\sigma_z$. But I stayed with $S$ for "spin"
in my text. I can't decide if it's a deep mathematical fact or just a strange coincidence
of nature that $\mathbb C^2$ should have exactly three operators for spin measurements,
one in each direction that we need. It seems a bit spooky that it worked out that way.

Note: in all of the computations below I'm leaving out factors of $\hbar$. This is a
standard trick in physics texts ... you can use units where $\hbar = 1$ and then put it
back later if you want.

We measure spin using a box with a magnetic field in it. So, imagine that we have some box
with one hole on the left, and two holes on the right. We send an electron in the left
hole and it comes out the top hole if the spin is up, and the bottom hole if the spin is
down. We have three kinds of boxes that each measure the spin in a different direction
(again: $x$, $y$ or $z$).

So the $S_z$ box looks like this:

> <a href="../images/z-spin.pdf">
<img src="../images/z-spin.pdf"></a>

We start with a beam of particles where each particle is in a completely random state.
Electrons (say) go in the left hole and the spin up stuff is directed out the top right
hole and the spin down stuff comes out the bottom right hole. We can when consider what
happens if we take a bunch of devices like this, chain them together, and take sequential
measurements.

First suppose we put another $S_z$ box right after the first one so that all of the
particles that enter the second box come out of the ${\small +}$ hole of the first box. What
will happen here is that 100% of this beam will come out the ${\small +}$ hole of the
second box. This seems very reasonable, since they were all $z$-spin up particles. 

> <a href="../images/z-spin.pdf">
<img src="../images/z-z-spin.pdf"></a>

This behavior might make you think that $z$-spin is a property that we can attach to the
electron, perhaps for all time, like classical properties, and that this box acts like a
filter that just reads off the property and sends the particles the right way. Keep this
thought in your brain.

Next, we can see that the relationship of $S_z$ to $S_x$ is also straightforward. A
particle that has a definite $z$-spin still has an undefined $x$-spin:

> <a href="../images/z-spin.pdf">
<img src="../images/z-x-spin.pdf"></a>

So here when we put a $S_x$ box right after the $S_z$ box and send all the $z$-spin up
particles through we will get $x$-spin up half the time and $x$-spin down half the time.
If you study the material on the Pauli matrices above this will make sense because it
turns out that the eigenvectors of $S_z$ can be written as a superposition of the $S_x$
eigenvectors with coefficients that make these probabilities 1/2 (and vice versa). In
particular:

$$
|z_+\rangle = | 0 \rangle  = \begin{pmatrix} 1 \\ 0 \end{pmatrix}, \, {\rm and}\,\, |z_-\rangle = | 1
\rangle = \begin{pmatrix} 0 \\ 1 \end{pmatrix}
$$

$$
|x_+\rangle = {1 \over \sqrt{2}} \begin{pmatrix} 1 \\ 1  \end{pmatrix}, \, {\rm and}\,\, |x_-\rangle = {1 \over
\sqrt{2}} \begin{pmatrix} 1 \\ -1 \end{pmatrix}
$$

From this we can figure out that:

$$
|x_+\rangle = {1 \over \sqrt{2}} (|z_+\rangle + |z_-\rangle)
$$

and

$$
|z_+\rangle = {1 \over \sqrt{2}} (|x_+\rangle + |x_-\rangle)
$$

The Born rule then tells us that measuring the $x$-spin of a $z$-spin up particle will get you
$x$-spin up half the time and $x$-down half the time. Similarly, measuring the $z$-spin of an
$x$-spin up particle will get you $z$-spin up half the time and $z$-spin down half the time.

Relationships like this also happen to be true for the all of eigenvectors of all the spin
operators. Some of the references at the end go into these details.

Finally, we can push on this idea a bit more by adding yet another $S_z$ box on the end of
the experiment above. When we do this we get a result that is somewhat surprising.

<a href="../images/z-spin.pdf">
<img src="../images/z-x-z-spin.pdf" width=800 ></a>

We might think that all of the particles coming out of the $S_x$ box should be $z$-spin
"up" since we had filtered for those using the first box. Sadly, this is not the case.
Measuring the $x$-spin seems to wipe away whatever $z$-spin we saw before. This is
surprising. Somehow going through the $S_x$ box has made the $z$-spin undefined again, and
we go back to 50/50 instead of 100% spin up.

### The Problem

So now our problem is this: what is going on in the last spin experiment?

We can interpret the first two experiments as behaving like sequential filters. The first
$z$-spin box filters out just the particles with spin-up, and then we feed those to the
second box (either $z$ or $x$) and get the expected answer. 

In order to make sense of the third experiment it seems like we need posit that
measurements in quantum mechanics have side effects on the systems that they measure. How
can we account for the fact that the $z$-up property that the particles have before
measuring the $x$-spin seems to disappear after we measure the $x$-spin?

The standard answer to this question goes something like this:

1. We start with particles with some arbitrary spin state.
1. But, when the particles that come out of the ${\small +}$ hole of the first z-spin box
   have a definite spin of $|z_+\rangle$, or $z$-up.
1. Thus if the second box measures $z$-spin again, as in the second experiment, all the
particles are spin up, and they all come out of the $z$-up hole.
1. But, if the second box is an $x$-spin box, as in the third experiment, then since
   $|z_+\rangle = {1 \over \sqrt{2}} (|x_+\rangle +
   |x_-\rangle)$, the $x$-spin is indeterminate, and we go back to a 50/50 split.
1. Finally, if we now believe that measuring the spin also resets the spin state of the
   particle, like in step 2 above, then the new state of the particle coming out of the
   ${\small +}$ hole of the $x$-spin box will have $x$-spin up so their state will be
   $|x_+\rangle = {1 \over \sqrt{2}} (|z_+\rangle + |z_-\rangle)$, which is why in the
   third and last box the $z$-spin is indeterminate again.

Thus, we are led to ponder another rule to the four we already had for how quantum
mechanics works:

> Suppose we have a quantum system that is in some state $\psi$ and we perform a
measurement on the system for an observable $O$. Then the result of this measurement will
be one of the eigenvalues $\lambda$ of $O$ with a probability determined by the Born rule.
In addition, _after_ the measurement the system will evolve to a new state $\psi'$, which
will be the eigenvector that corresponds to the eigenvalue that we obtained.

This is, of course, the (in)famous "collapse of the wave function", and with the
background that I have made you slog through it should really be bothering you now.

We seem to need this rule, along with the original rule about eigenvalues and eigenvectors
to make our formalism agree with the following general _experimental_ fact:

> Whenever we measure a quantum system we always get one definite answer, and if we measure
the system again in the same way, we get the same single answer again.

The problem is that the collapse rule completely contradicts our existing time evolution
rule, which says that everything evolves continuously and linearly via the Schrödinger
equation:

$$
i \hbar \frac{\partial}{\partial t} | \psi(t) \rangle  = H | \psi(t) \rangle .
$$

This equation can do a lot of things, but the one thing it cannot do is take a state like this

$$
|ψ\rangle = c_1|ψ_1 \rangle + c_2|ψ_2 \rangle
$$

and remove the superposition. With that equation we can only ever end up in another
superposition state, like this:

$$
|ψ'\rangle = c_1' |ψ_1'\rangle + c_2' |ψ_2'\rangle .
$$

To bring this back to our example, suppose our $S_x$ box is modeled as a simple quantum
system with three states: $|m_0\rangle$ for when the box is ready to measure something,
$|m_+\rangle$ for when it has measured spin up, and $|m_-\rangle$ for when it has measured
spin down. Here the $m$ is for machine, or measurement.

In our experiment, at the second box, we start with a particle in the state

$$
|z_+\rangle = {1 \over \sqrt{2}} (|x_+\rangle + |x_-\rangle)
$$

and send it into the $S_x$ box, which starts in the state $|m_0\rangle$. So the state of the
composite system becomes the superposition:

$$
{1 \over \sqrt{2}} (|x_+\rangle + |x_-\rangle)|m_0\rangle .
$$

This state means "the particle is in a superposition of $x$-spin up and $x$-spin down, and
the measuring device is ready to measure it." [^1]

If we believe that Schrödinger evolution is the only rule we have, then this state can
only evolve like this:

$$
{1 \over \sqrt{2}} (|x_+\rangle + |x_-\rangle)|m_0\rangle \quad \xrightarrow{\hspace 20pt} \quad
{1 \over \sqrt{2}} ( |x_+\rangle|m_+\rangle + |x_-\rangle|m_-\rangle ) . 
$$

That is, the box and the particle must evolve to a superposition of "spin up" and
"measured spin up" with "spin down" and "measured spin down". The Schrödinger equation
never removes the superposition.[^2]

But we never see states like this. Particles go into measuring devices, and those devices
give us a single answer with a single value. The world is not full of superposed
Stern-Gerlach devices, or CCDs, or TV screens. Furthermore: cats, famously, are never both
alive and dead.

Instead, the particle enters the device and we see a universe where only one particle
leaves and the device tells us a single definitive answer: either $|x_+\rangle$ or
$|x_-\rangle$. That is, using our notation above, the real world time evolution always
look like this:

$$
{1 \over \sqrt{2}} (|x_+\rangle + |x_-\rangle)|m_0\rangle \quad \xrightarrow{\hspace 20pt} \quad
|x_+\rangle|m_+\rangle
$$

or

$$
{1 \over \sqrt{2}} (|x_+\rangle + |x_-\rangle)|m_0\rangle \quad \xrightarrow{\hspace 20pt} \quad
|x_-\rangle|m_-\rangle
$$

In order to make this happen, we have to add something like the collapse rule, or some
other story, to the theory.

So this, dear friends, is the measurement problem. It is a fundamental contradiction
between the observed behavior of real systems in the world, and what the Schrödinger
equation allows.

### Possible Answers

The literature on the "interpretation of quantum mechanics" is of course full of deep
thoughts about the questions that the measurement problem raises. I could not possibly do
more than unfairly caricature the various possible stances that one could have about this
question, so that's what I will do. Here are some things we can do:

1. We can take the collapse rule as a postulate and until we understand how measurement
   works, just use the rules and try to be happy. This view is often called the
   "Copenhagen" interpretation, although that's not really right and the [Copenhagen
   story](https://plato.stanford.edu/entries/qm-copenhagen/) is [actually a lot more
   complicated than this](https://en.wikipedia.org/wiki/Copenhagen_interpretation). A
   better name for this view is the "standard" or "text book" viewpoint.

1. We can say that quantum states are mainly a tool for describing the statistical
   behavior of experiments. [Ballentine's
   book](https://www.amazon.com/Quantum-Mechanics-Modern-Development-2Nd/dp/9814578584/),
   which I referenced in part 2, has a careful exposition of one version of this line of
   thought where the wave function only describes statistical
   [ensembles](https://en.wikipedia.org/wiki/Ensemble_interpretation) of systems. There
   are, of course, a spectrum of different opinions about whether quantum mechanics
   describes any physical reality at all, or just the behavior of experiments.
   
1. We can say that the collapse rule is either not needed or not contradictory because
   quantum states are not really things that exist in the world. Rather, the quantum state
   is just a way of describing what we, or some set of rational agents, believes about the
   world. The most recent version of this idea is probably
   [QBism](https://plato.stanford.edu/entries/quantum-bayesian/).

1. We can think that wave functions do not describe the entire state of the system.
   Instead, there is some other part of the state that gives systems definite measured
   properties. The most popular version of this idea is the "pilot wave" or
   ["Bohmian"](https://plato.stanford.edu/entries/qm-bohm/) version of quantum mechanics.

1. We can decide that superpositions don't actually collapse, we just can't see the other
   branches. This is the [Everett](https://plato.stanford.edu/entries/qm-everett/) and/or
   the ["Many Worlds"](https://plato.stanford.edu/entries/qm-manyworlds/) idea.

1. We can say that wave functions [actually collapse](https://plato.stanford.edu/entries/qm-collapse/)
   through some random physical process, and we can use this fact to derive the
   measurement behavior (and perhaps the Born rule). The most famous theory like this is
   the [GRW stuff](https://plato.stanford.edu/entries/qm-collapse/).
   
There are dozens more ideas that I will not list here because I don't understand them well
enough to list them.

If forced to take a stance I would probably say that I am most sympathetic to the more
"ontological" theories, like Bohm or Everett. My least favorite idea is probably QBism
because I have a hard time being enthusiastic about a world where everything is just the
knowledge and credences of rational actors. But, in between these two extremes I enjoy the
careful and pragmatic thinking that's been done about the nature of experiments and
measurement in quantum theory. I used Ballentine's book as an example of this, but there
is a lot more where that came from (see
[Peres](https://www.amazon.com/Quantum-Theory-Concepts-Fundamental-Theories/dp/0792336321/)
for example). I feel like what we really need to do is to attack the core question of what
is really happening in quantum and quantum/classical interactions. Until we have a better
understanding of that I think we'll never figure out this puzzle.

When in doubt, I will just appeal to my favorite quantum computer nerd: [Scott
Aaronson](https://scottaaronson.blog/?p=5359) for his point of view, which seems right.

### Things I Left Out, Lies I Told

1. I left out a lot of important details related to the structure of Hilbert space. In the
   finite dimensional case they don't matter too much but they are critical in the
   infinite dimensional case. Watch [Schuller's lectures on quantum
   mechanics](https://www.youtube.com/playlist?list=PLPH7f_7ZlzxQVx5jRjbfRGEzWY_upS5K6) to
   fill those in.

1. I really only covered the simplest possible models of quantum states, observables and
   measurements. Mixed state, density operators, POVMs and all that are missing. [Schuller's
   lectures](https://www.youtube.com/playlist?list=PLPH7f_7ZlzxQVx5jRjbfRGEzWY_upS5K6)
   or any of the more mathematical books that I listed cover this.

1. I left out the uncertainty principle, which is kind of a big part of the story to
   skip. You can talk about it in the context of the spin operators but it's a lot of work
   and not directly related to the puzzle that I was trying to get to.

1. I left out the entire huge world of _entangled_ states because I did not want to
   introduce any more formalism. Entanglement, Bell's theorem and all that is also just
   too big a subject to mention and not go into it, so I left it out Maybe we'll cover
   that in a future part 4.

1. I never mentioned decoherence. I am a bad person.

1. I played fast and loose with normalization when talking about quantum states and
   operators. I should have been much more careful, but I'm lazy.

1. I wish I could have talked about the two slit experiment. But, I'd have done a lousy
   job so go read [Feynman](https://www.feynmanlectures.caltech.edu/III_01.html) instead.

1. Finally, you can do an experiment similar to the chained spin-box experiment with
   polarized light. [Watch here](https://www.youtube.com/watch?v=zcqZHYo7ONs).

### References

Some more reading for you:

1. If you want to go all the way to the beginning with the original sources, both
of the books by
[Dirac](https://global.oup.com/academic/product/the-principles-of-quantum-mechanics-9780198520115?cc=us&lang=en&)
(or look at the [Google Books
link](https://www.google.com/books/edition/The_Principlem_of_Quantum_Mechanics/XehUpGiM6FIC?hl=en&gbpv=0)
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

1. An older book, [Quantum mechanics and the particles of
   nature](https://archive.org/details/quantummechanics00sudb), by Sudbery, goes at this
   from a point of view that I like. Hard to find though.

1. Hughes' [The Structure and Interpretation of Quantum
   Mechanics](https://www.hup.harvard.edu/catalog.php?isbn=9780674843929) also starts with
   spin but is a more philosophical look at the material.

1. The [Stanford Encyclopedia of Philosophy](https://plato.stanford.edu/) has a
   lot of material on [quantum mechanics](https://plato.stanford.edu/entries/qm/) and [its
   interpretation](https://plato.stanford.edu/entries/qt-issues/). Their summary page is
   also a bit shorter, yet also more detailed, than my effort here.

1. You should read [this paper](https://arxiv.org/abs/1409.1570) by Leifer just for the delicious
   pun in the title. But it's also a great breakdown of the various ways that people talk
   about and interpret the quantum state.

1. This [much more technical paper](https://arxiv.org/abs/quant-ph/0506082) by Landsman
   also addresses the very complicated question of how classical and quantum states are
   related. He has an [open access
   book](https://link.springer.com/book/10.1007/978-3-319-51777-3) that expands on these
   ideas, especially in the chapter on the measurement problem. I don't really understand
   any of this, but it seems like the kind of work that needs to be done.

### Notes

[^1]: Those in the know will notice that I have not really explained what this notation
for product states that I am using here means. I did not have the space to explain tensor
products and entanglement, which is a shame because along with measurement entanglement is
the second huge conceptual puzzle in quantum mechanics.

[^2]: For those keeping track, this is the formula I've been trying to get to this whole
time. Was the 9000 words worth it? 