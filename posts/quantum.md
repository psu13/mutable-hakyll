---
title: Quantum Mechanics, Part 2 - Quantum
date: 2022-08-31
author: psu
---

Almost every book or article about quantum mechanics seems to start with a passage like
this:

> Quantum mechanics is arguably the most successful physical theory in the history of
science but strangely, no one really seems to agree about how it works.

And now I've done it to you too. One of the main reasons people write this sentence over
and over again is because of what is called _the measurement problem_. Here is a way to
state the measurement problem, which I will then try to explain to you.

The measurement problem refers to the following facts, which seem to contradict each
other:

1. On the one hand, when we measure quantum systems we always see one answer.

1. On the other hand, if you want to use the regular rules of time evolution in quantum
mechanics to describe measurements, then there are states for which measurements should
not give you one answer.

In particular, measuring states that describe a _superposition_ (see below) can cause a
lot of confusion.

In [part 1](mechanics.html) of this series I gave you a bit of the history and motivation
behind the development of quantum mechanics. It followed the development of the theory the
way a lot of physics text books do, with lots of differential equations and other scary
math. We will now leave all that behind us.

My plan here is to describe enough of the mathematical formalism of quantum mechanics in
enough detail to express the measurement problem in a way that is relatively rigorous.
This mostly boils down to a lot of tedious and basic facts about linear algebra, instead
of all the scary differential equations from part 1. Personally I find the algebraic
material a lot easier to understand than the more difficult differential equation solving.
But, it will still be an abstract slog, but I'll try to leave out enough of the really
boring details to keep it light. 

As with my other technical expositions on subjects that are not about computers, I am the
furthest thing from an expert on this subject, I'm just organizing what I think are the
most interesting ideas about what is going on here, and hoping that I'm not too wrong.
I'll provide a list of more better sources at the end.

### Quantum States and Hilbert Space

The rules of quantum mechanics are about _states_ and _observables_. These are both
described by objects from a fancy sort of linear algebra, which involves a lot of axioms
that are interesting (not really) but not needed for our purposes. To try and keep this
section a bit shorter and less tedious I link out to Wikipedia for many of the
mathematical details, and just provide the highlights that we need here.

Quantum states live in a thing called a [_Hilbert
space_](https://en.wikipedia.org/wiki/Hilbert_space), which is a special kind of [vector
space](https://en.wikipedia.org/wiki/Vector_space). Observables are a particular kind of
linear function, or _operator_ on a Hilbert space. 

The ingredients that make up a Hilbert space are:

1. A set of _scalars_. In this case it's always the complex numbers ($\mathbb C$).

1. A set of _vectors_. Here the vectors are the wave functions.

1. A long list of rules about how we can combine vectors and scalars together. In
   particular vector spaces define a notion of addition ($+$) for vectors that obeys some
   nice rules (commutativity, associativity, blah blah blah), and a notion of multiplying
   vectors by scalars that also obeys some nice rules. For reference, you can [find the
   rules here](https://en.wikipedia.org/wiki/Vector_space).

We denote Hilbert spaces with a script "H", like this: $\cal H$, and we use greek letters,
most popularly $\psi$ to denote vectors in $\cal H$. For a reason named [Paul
Dirac](https://en.wikipedia.org/wiki/Paul_Dirac), we will dress up vectors using a strange
bracket notation like this: $| \psi \rangle$, or sometimes this way $\langle \psi |$. This
is also how we wrote down the wave functions in part 1.

The most important thing about Hilbert spaces is that they are _linear_. What this means
is that any given any two vectors $\psi$ and $\phi$ and two scalars $a$ and $b$, any
expression like

$$
a | \psi \rangle + b | \phi \rangle
$$

is also a vector in $\cal H$.

This rule, it turns out, is the [most important rule in Quantum
Mechanics](https://youtu.be/Ei8CFin00PY?t=37m58s) and is famously called the
_superposition principle_. You will also see states that are written down this way called
_superposition states_. But, this terminology is more magic sounding than it needs to be.
This is just a linear combination of two states, and the fact that you always get
another state is also a straightforward consequence of the form of the Schrödinger
equation (it is what we call a first order, or _linear_ differential equation). Linearity
plays a big role in the eventual measurement puzzle, so store that away in our memory for
later.

### Inner Products

The second most important thing about Hilbert spaces is that they define an _inner
product_ operation that allows us to define things like length and angle. We write this
product this way: 

$$\langle \psi | \phi \rangle 
$$

and its value is either a real or complex number.

Now we see a bit of the utility of this strange bracket notation. In Dirac's terminology
the $| \psi \rangle$ is a "ket" or "ket vector" and the $\langle \psi |$ is a "bra". So
you put them together and you get a "bra ket" or
["braket"](https://en.wikipedia.org/wiki/Bra–ket_notation). So all of this silliness is in
service of a bad pun. There is also some subtle math that you have to do to make sure that
the "bra" $\langle \psi |$ is a thing that makes sense in this context, but let's assume we have
done that and it has all worked out.

Those wacky physicists thought this joke was so funny that we've been stuck with this
notation for a hundred years now.

As always, I refer you to wikipedia
for the [comprehensive list of important inner product facts](https://en.wikipedia.org/wiki/Inner_product_space#Definition).

We can use the inner product to define a notion of distance in a Hilbert space that is
similar to the familiar "Euclidean" distance that they teach you in high school. For a
given vector $\psi$ the norm of $\psi$ is written $\lVert \psi \rVert$ and is defined as

$$
\lVert \psi \rVert = \sqrt{\langle \psi | \psi \rangle}
$$

Since $\langle \psi | \psi \rangle$ is always positive this is well-defined. You can also
define the distance between two vectors in a Hilbert space as $\lVert \psi - \phi \rVert$.

The inner product and the norm will form the basis for how we compute probabilities using
the Born rule, which we saw in part 1.

#### A Short Digression

All of this nonsense with Hilbert spaces and inner products is motivated by wanting to do
calculus and mathematical analysis on objects that are _functions_ rather than plain
numbers (or vectors of numbers). This comes up because the big conceptual shift in quantum
mechanics was moving from properties that had values which were real numbers to properties
described by complex valued _functions_ or _wave functions_. The issue was that we know
how to do calculus over the reals, but calculus with function valued objects is a stranger
thing. [_Functional analysis_](https://en.wikipedia.org/wiki/Functional_analysis) is the
area of mathematics that studies this, and Hilbert spaces come from functional analysis.
In the 30s [von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann) realized that
functional analysis, Hilbert spaces, and operators were the right tools to use to build a
unified basis for quantum mechanics. And that's what he did in his [famous book
](https://press.princeton.edu/books/hardcover/9780691178561/mathematical-foundations-of-quantum-mechanics).

If we wanted to actually prove some of the things that I will later claim to be true about
Hilbert spaces and operators we would need some of the more technical results from
functional analysis. Doing such proofs is way above my pay grade so I'm mostly ignoring
such things for now. But at the end of this whole story I'll make a list of things that I
left out.

After working out the mathematical basis for quantum theory Von Neumann went on to invent
the [dominant model](https://en.wikipedia.org/wiki/Von_Neumann_architecture) that we still
use to describe computers. So think about that next time you are feeling yourself after
having written some clever piece of code.

### Basis Vectors

The third important fact about Hilbert spaces that we will need is the idea of a _basis_.
In a Hilbert space (really any vector space) a _basis_ is a set of vectors that one can
use to represent any other vector in the space using linear combinations. If this set is
_finite_, meaning that you can count up the number of basis vectors you need with your
fingers, then we say that the vector space is "finite dimensional".

The most familiar example of a finite dimensional Hilbert space is $\mathbb R^n$ (and also
$\mathbb C^n$ if you like complex numbers). Here the basis that we all know about is the
one made up of the unit vectors for each possible axis direction in the space. So, for
$n=3$ the unit vectors are 

$$
\begin{pmatrix}
1 \\
0 \\
0 \\
\end{pmatrix}, \quad 
\begin{pmatrix}
0 \\
1 \\
0 \\
\end{pmatrix} \quad {\rm and} \quad
\begin{pmatrix}
0 \\
0 \\
1 \\
\end{pmatrix}
$$

To write down any vector $v$ in the space all we need is three numbers, one to multiply
each unit vector:

$$
v = \begin{pmatrix}
a \\
b \\
c \\
\end{pmatrix} = a\begin{pmatrix}
1 \\
0 \\
0 \\
\end{pmatrix} + b\begin{pmatrix}
0 \\
1 \\
0 \\
\end{pmatrix} + c \begin{pmatrix}
0 \\
0 \\
1 \\
\end{pmatrix}
$$

By convention we write vectors in columns, which will make more sense in the next section.

And thus we have built the standard sort of coordinate system that we all know and love
from 10th grade math.

This sort of basis for $\mathbb C^n$ also has the property that it is _orthonormal_,
meaning that with the standard inner product all of the unit vectors are orthogonal to each
other (their mutual inner products are always zero).

In the rest of this piece we will assume that all of our Hilbert spaces have an
_orthonormal_ basis and that they are finite dimensional. Of course, the more famous state
spaces in quantum mechanics (for position and momentum) are infinite dimensional, which is
the other reason Hilbert spaces became a thing. But we will not deal with any of that
complication here.

### Operators and Observables

In classical mechanics we did not think about observables too much. They were just simple
numbers or list of numbers that in principe you can just read off of the mathematical
model that you are working with.

But, in quantum mechanics, observables, like the states before them, become a more abstract
thing, and that thing is what we call a _self-adjoint linear operator_ on the Hilbert
space $\cal H$. All this means is that for everything we want to observe we have to find a
function from $\cal H$ to $\cal H$ that is _linear_ and also obeys some more technical
rules that I will sort of define below.

Linearity we have seen before. This just means that if you have a operator $O$ that takes
a vector $\psi$ and maps it to another vector, then you can move $O$ in and out of linear
combinations of vectors. In particular

$$
O(\alpha \psi) = \alpha O (\psi)
$$

and

$$
O(\psi + \phi) = O(\psi) + O(\phi)
$$

The "self-adjoint" (or _Hermitian_) part of the definition of observables is more technical to explain.

As we all know from basic linear algebra, in finite dimensional vector spaces you can,
once you fix a basis, write linear operators down as a matrix of numbers. Then the action
of the operator on any given vector is a new vector where each component of the new vector
is the dot product of the original vector with the appropriate row of the matrix.

So the easiest operator to write down is the identity ($\bf 1$)... which just looks like
the unit vector basis vectors written next to one another

$$ {\bf 1} = 
\begin{pmatrix}
    1 & 0 & 0\\
    0 & 1 & 0\\
    0 & 0 & 1\\
\end{pmatrix}
$$

We can check that the application rule I outlined above works ... here we write the vector
we are acting on vertically for emphasis:

$$
{\bf 1} \begin{pmatrix}
a \\
b \\
c \\
\end{pmatrix} = \begin{pmatrix}
    1 & 0 & 0\\
    0 & 1 & 0\\
    0 & 0 & 1\\
\end{pmatrix} 
\begin{pmatrix}
a \\
b \\
c \\
\end{pmatrix}
= a\begin{pmatrix}
1 \\
0 \\
0 \\
\end{pmatrix} + b\begin{pmatrix}
0 \\
1 \\
0 \\
\end{pmatrix} + c \begin{pmatrix}
0 \\
0 \\
1 \\
\end{pmatrix}
$$

So it works!

With this background in hand, we can define the _adjoint_ of operator $A$, which we write
as $A^*$ (math) or $A^\dagger$ (physics). Anyway, the adjoint of $A$ is an operator that
obeys this rule:

$$
\langle A \psi | \phi \rangle = \langle \psi | A^* \phi \rangle
$$

for any two vectors $\psi$ and $\phi$ in $\cal H$.

In finite dimensional complex vector spaces (e.g. $\mathbb C^n$), where operators can be
written down as matrices, you can visualize what the adjoint is by transposing the matrix
representation and taking some complex conjugates. This is not the cleanest way to define
this object since the matrix representation is dependent on a basis, and we can (and did!)
define the notion of an adjoint without referencing a basis at all. But it's not the end
of the world. 

In infinite dimensional spaces and other more complicated situations finding the adjoint
is more complicated. I'll leave it at that.

A self-adjoint operator is just one whose adjoint is equal to itself. So it obeys the
rule:

$$
\langle A\, \psi | \phi \rangle = \langle \psi | A\, \phi \rangle .
$$

We can remove the $^*$ because $A = A^*$.

In a lot of physics books you will also see self-adjoint operators referred to as
_Hermitian_ operators. In the finite dimensional complex case the two terms are
equivalent.

Self-adjoint operators have some nice properties for physics. The reason why has to do with
eigen-things.

### Eigen-things

Linear operators map vectors to vectors in a fairly constrained way. You have some freedom
in how you transform the vector, but you don't have _total_ freedom since whatever you do
has to preserve linear combinations.

But, for every operator there might be a special set of vectors that map to some scalar
multiplied by themselves. That is, for some operator $A$ and vector $\psi$ you will have

$$
A \psi = \alpha \psi
$$

where $\alpha$ is just a scalar. What this means, in some sense, is that the operator
transforms the original vector to itself. The only thing that changes is its length, or
magnitude.

Vectors with this property are called _eigenvectors_, and the constants are called
_eigenvalues_. Both words are derived from the German word "eigen" meaning "proper" or
"characteristic", but that doesn't really matter. This just one of those weird words that
stuck around by habit.

Eigenvectors and eigenvalues come up in all kinds of contexts. They are important because
they provide a way to characterize complicated transformations in a simpler way. If
you have all the eigenvectors you can in principle switch to working in a basis where
the transformation is a diagonal matrix, which is a usually simpler representation. The
applications of this idea come up all over, from image processing to Google PageRank, to
quantum mechanics.

The reason we wanted to have the operators that represent observables be self-adjoint
above is that self-adjoint operators have two nice properties related to eigen-things.

1. All the eigenvalues of a self-adjoint operator are real-valued (even though our state
space is over the complex numbers).

1. There is a famous theorem that says that every self-adjoint operator has a set of
eigenvectors that form a _orthonormal basis_ of the underlying Hilbert space. This theorem
is called the _spectral_ theorem and the eigenvectors/values of the operator are called
its _spectrum_. This is a very important result for quantum mechanics.

### Circling Back on the Atom

At this point you might be thinking to yourself, "I have seen this word 'spectrum'
before". And you have. One of the earliest problems in quantum mechanics was to explain
the spectral lines of the hydrogen atom. You will recall that the famous Schrödinger
equation, in fact, is an expression for _energy_, and the spectral lines are an
arrangement of energy "levels" that we think of as different orbits in the atom (even
though they are not).

Let's remember what the Schrödinger equation looks like:

$$
i \hbar \frac{\partial}{\partial t} | \psi(t) \rangle  = H | \psi(t) \rangle .
$$

The Schrödinger equation is what we call a  linear differential equation, since there are
no second derivatives or other squared terms. The trick to solving the hydrogen atom is
first finding a Hamiltonian $H$ that correctly describes the behavior of the electron in
the atom. It turns out that when you do this you will define one of our coveted
self-adjoint linear operators on the Hilbert space of wave functions. This means that
there will be some set of states that obey this rule:

$$
H | \psi \rangle  = E | \psi \rangle 
$$

where $E$ here is just a real number, rather than an operator. We use the letter $E$ to
stand for energy. These energies will be the energies that appear in the spectrum of the
atom.

So here is why we were going on about eigen-things before (and linear operators before
that, and vector spaces before that). The Hamiltonian for the hydrogen atom $H$ is a
self-adjoint operator whose the eigenvalues are the energies in the spectrum of the atom.
The eigenvectors are the electron wave functions that define the fixed energy levels at
which we see spectral lines. And an amazing fact about the world is that you can actually
set up a model of the hydrogen atom so that things work out in exactly this way. The setup
is somewhat technical and complicated, so I don't cover that here. I'll use a simpler
system to describe the rest of what I want to talk about.

Speaking of which.

### Break Time

At this point we have put together almost all of the formalism that we need. But this post
has gone on too long, so I am going to make you read yet another part to get to the real
point of this entire exercise. Meanwhile, here is a quick summary of what we have so far:

1. States are vectors in a [Hilbert space](https://en.wikipedia.org/wiki/Hilbert_space).

1. Observables are [self-adjoint linear
   operators](https://en.wikipedia.org/wiki/Self-adjoint_operator) on that space.

1. There is a special observable for the energy of the system whose operator we call $H$,
for the Hamiltonian. Time evolution of states is then given by the 
[Schrödinger equation](https://en.wikipedia.org/wiki/Schrödinger_equation).

1. The possible values of observables are the eigenvalues of the corresponding operator,
and the eigenvectors are the states that achieve those values. In addition, for the
operators that represent observables, we can find eigenvectors that form an orthonormal
basis of the underlying state space. Which is really convenient.

Of course, I _still_ have not said anything about measurement, and you should be furious
with me. I promise I will in part 3.

### References

Here are some things I like.

1. Isham's [Lectures on Quantum
Theory](https://www.amazon.com/Lectures-Quantum-Theory-Mathematical-Foundations/dp/1860940013),
is more mathematical.

1. Stephanie Singer's [algebraic
treatment](https://link.springer.com/book/10.1007/b136359https://www.amazon.com/Linearity-Symmetry-Prediction-Undergraduate-Mathematics/dp/0387246371/)
of the hydrogen atom is also enjoyable, but much more technical from a mathematical point
of view.

1. [Peres](https://www.amazon.com/Quantum-Theory-Concepts-Fundamental-Theories/dp/0792336321/)
and
[Ballentine](https://www.amazon.com/Quantum-Mechanics-Modern-Development-2Nd/dp/9814578584/)
are more "physics oriented" books that start from the algebraic point of view.
[Weinberg](https://www.amazon.com/Lectures-Quantum-Mechanics-Steven-Weinberg/dp/1107111668/)
is also covers this material, but from a more traditional point of view, but it's a nice
illustration of how the physics view and the algebraic view are related.
   
1. Scott Aaronson's [Quantum Computing since
Democritus](https://www.amazon.com/Quantum-Computing-since-Democritus-Aaronson/dp/0521199565/)
is a nice computer nerd's view of the world.

1. Brian C. Hall's book on [Quantum Theory for
Mathematicians](https://link.springer.com/book/10.1007/978-1-4614-7116-5) covers a lot of
the more technical details about Hilbert spaces and their operators in more mathematically
rigorous way.

1. Frederic Schuller's [lectures on quantum
mechanics](https://www.youtube.com/playlist?list=PLPH7f_7ZlzxQVx5jRjbfRGEzWY_upS5K6) also
gives you a rigorous mathematical view of this material.