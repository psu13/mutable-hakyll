---
title: Quantum Mechanics, Part 3 - Measurement
date: 2022-08-31
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

As with my other technical expositions on subjects that are not about computers, I am the
furthest thing from an expert on this subject, I'm just organizing what I think are the
most interesting ideas about what is going on here, and hoping that I'm not too wrong.
I'll provide a list of more better sources at the end.

#### Measurement and Probability

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

#### An Example

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
in a completely random state. Since we can only observe two states it makes sense that a
completely randomized beam should be the same as a beam where half of the particles are
spin up and the other half are spin down. Therefore, we get a 50/50 split between the two
resulting beams. A more rigorous argument that the answer here should be 50/50 is a bit
subtle, and involves a more general notion of state and measurement than I have presented.
I'll just leave it at that for now. In any case when you actually _run_ the experiment
this is the answer you get, so there is that.[^1]

Now we can arrange these boxes in various ways and learn more about how quantum systems
behave when we measure them. Not surprisingly, if you put another $S_z$ box right after
the first one and capture the stream of spin up particles, you get nothing but spin up
particles. 

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

So here when we put a $S_x$ box right after the $S_z$ box we will get $x$ spin up and $x$
spin down half the time. If I had shown you all of the math, we'd know that this happens
because the eigenvectors of $S_z$ can be written as a superposition of the $S_x$
eigenvectors with coefficients that make these probabilities 1/2. This happens to be true
for the eigenvectors of all the spin operators, so you always get this even split if you
measure from different axes in a sequential fashion. Some of the references at the end go
into these details.

We can push on this idea a bit more by adding yet another $S_z$ box on the end of the
experiment above. When we do this we get a result that is somewhat surprising.

<a href="../images/z-spin.pdf">
<img src="../images/z-x-z-spin.pdf"></a>

We might think that all of the particles coming out of the $S_x$ box should be $z$ spin
"up" since we already filtered those out before. Sadly, this is not the case. Measuring
the $x$ spin seems to wipe away whatever $z$ spin we saw before. This is surprising.
Somehow going through the $S_x$ box has made the $z$ spin undefined again, and we go back
to 50/50 instead of 100% spin up.

#### The Problem

#### Things I Left Out, Lies I Told

#### References

A few more things to look at.

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

1. Sakurai's [Modern Quantum
   Mecanics](https://www.amazon.com/Modern-Quantum-Mechanics-J-Sakurai/dp/1108473229)
   starts with a good discussion of the spin experiments I used as an example.

1. Hughes' [The Structure and Interpretation of Quantum
Mechanics](https://www.hup.harvard.edu/catalog.php?isbn=9780674843929) starts this way
too, but is a more philosophical look at the material.

#### Notes

[^1]: The way you calculate a probability of 1/2 for the undefined states is to represent
them as a random "mixture" of all possible spin states and use a more general state object
called a density matrix to represent the state. With this representation the probability
of getting either spin up or spin down in the experiment then turns out to be 1/2. Any of
the references above can teach you about this.
