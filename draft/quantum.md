---
title: Quantum Mechanics, Part 2 - Quantum
date: 2022-08-12
author: psu
---

Almost every book or article about quantum mechanics seems to start with a passage like
this:

> Quantum mechanics is arguably the most successful physical theory in the history of
science but strangely, no one really seems to agree about how it works.

And now I've done it to you too. One of the main reasons people write this sentence over
and over again is because of what is called _the measurement problem_. Here is a way to
state the measurement problem, which I will then try to explain to you in the rest of the
article.

The measurement problem refers to the following facts, which seem to contradict each
other:

1. On the one hand, when we measure quantum systems we always see one answer.

1. On the other hand, if we believe in quantum theory, and we believe that the measurement
   process is governed by the rules of quantum theory, then there are quantum states
   which, when measured, should not give you one answer.

In [part 1](mechanics.html) of this series I gave you a bit of the history and motivation
behind the development of quantum mechanics. It followed the development of the theory the
way a lot of physics text books do, with lots of differential equations and other scary
math. We will now leave all that behind us.

My plan here is to get to the point where we can write down a mathematical expression of
the measurement problem which is relatively rigorous. To do this we have to describe the
formalism of quantum mechanics. Surprisingly, this mostly boils down to some basic[^1]
facts about linear algebra, instead of all the scary differential equations from part 1.

### Quantum States and Hilbert Space

The rules of quantum mechanics are about _states_ and _observables_. These are both
described by objects from a fancy sort of linear algebra, which involves a lot of axioms
that are interesting (not really) but not needed for our purposes. To try and keep this
section a bit shorter and less tedious I link out to Wikipedia for many of the
mathematical details, and just provide the highlights that we need here.

Quantum states live in a thing called a [_Hilbert
space_](https://en.wikipedia.org/wiki/Hilbert_space), which is a special kind of
vector space. Observables are a particular kind of linear function, or _operator_ on a
Hilbert space. 

The ingredients that make up a Hilbert space are:

1. A set of _scalars_. In this case it's always the complex numbers ($\mathbb C$).

1. A set of _vectors_. Here the vectors are the wave functions.

1. A long list of rules about how we can combine vectors and scalars together. For
   reference, you can [find the rules here](https://en.wikipedia.org/wiki/Vector_space).

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
_superposition principle_. The fact that this works is also a straightforward consequence
of the form of the Schrödinger equation (it is what we call a first order, or _linear_
differential equation). [_Linear_ spaces and linear
functions](https://en.wikipedia.org/wiki/Vector_space) play a large role in the eventual
measurement puzzle, so keep that catalog of properties in your head for later.

### Inner Products

The second most important thing about Hilbert spaces is that they define an _inner
product_ operation that allows us to define things like length and angle. We write this
product this way: 

$$\langle \psi | \phi \rangle 
$$

and its value is either a real or complex number[^2]. As always, I refer you to wikipedia
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
functional analysis was the right framework to use to formalize Schrödinger's wave
functions. And that's what he did in his [famous book about quantum
mechanics](https://press.princeton.edu/books/hardcover/9780691178561/mathematical-foundations-of-quantum-mechanics).

After working out the mathematical basis for quantum theory Von Neumann went on to invent
the [dominant model](https://en.wikipedia.org/wiki/Von_Neumann_architecture) that we still
use to describe computers. So think about that next time you are feeling yourself after
having written some clever piece of code.

### Basis Vectors

There is one final important fact about vector spaces that we need to cover so that the
language we use later will make sense. In a vector space a _basis_ is a set of vectors
that one can use to represent any other vector in the space using linear combinations. If
this set is _finite_, meaning that you can count up the number of basis vectors you need
with your fingers, then we say that the vector space is "finite dimensional".

The most familiar example of a finite dimensional Hilbert space is $\mathbb R^n$ (and also
$\mathbb C^n$ if you like complex numbers). Here the basis that we all know about is the
one made up of the unit vectors for each possible axis direction in the space. So, for
$n=3$ the unit vectors are the unit vectors are $(1, 0, 0)$, $(0, 1, 0) and $(0,0,1)$. To
write down any vector $v$ in the space all we need is three numbers, one to multiply each
unit vector:

$$
v = (a,b,c) = a(1,0,0) + b(0,1,0) + c(0,0,1)
$$

And thus we have built the standard sort of coordinate system that we all know and love
from 10th grade math.

This sort of basis for $\mathbb R^n$ also has the property that it is _orthonormal_,
meaning that with the standard dot product all of the unit vectors are orthogonal to each
other.

In the rest of this piece we will assume that all of our Hilbert spaces have an
_orthonormal_ basis and mostly that they are finite dimensional. Of course, the more
famous state spaces in quantum mechanics (for position and momentum) are infinite
dimensional, which is the other reason Hilbert spaces became a thing. But we will not deal
with any of that complication here.

### Operators and Observables

The _observables_ of a quantum system are, I guess, what we can observe about them. Again,
in classical physics we did not think about observables too much. They were just simple
numbers or list of numbers that in principe you can just read off of the mathematical model
that you are working with.

But, in quantum mechanics observables, like the states before them, become a more abstract
thing, and that thing is what we call a _self-adjoint linear operator_ on the Hilbert
space $\cal H$. All this means is that for everything we want to observe we have to find a
function from $\cal H$ to $\cal H$ that is _linear_ and also obeys some more technical
rules that I will mention but really define.

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


The "self-adjoint" part of the definition of observables is more technical to explain.

As we all know from basic linear algebra, in finite dimensional vector spaces you can,
once you fix a basis, write linear operators down as a matrix of numbers. Then the action
of the operator on any given vector is a new vector where each component of the new vector
is the dot product of the original vector with the appropriate row of the matrix.

So the easiest operator to write down is the identity ($\bf 1$)... which just looks like
the unit vector basis vectors written on top of one another

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
= a(1,0,0) + b(0,1,0) + c(0,0,1)
$$

So it works!

With this background in hand, we can define the _adjoint_ of operator $A$, which we write
as $A^*$ (math) or $A^\dagger$ (physics). Anyway, the adjoint of $A$ is an operator that
obeys this rule:

$$
\langle A \psi | \phi \rangle = \langle \psi | A^* \phi \rangle
$$

for any two vectors $\psi$ and $\phi$ in $\cal H$.

In finite dimensional complex vector spaces (e.g. $\mathbb C^n$) you get the adjoint by
transposing the matrix representation and taking some complex conjugates. I'll leave it at
that.

Self-adjoint operators have some nice properties for physics.

### Eigen-things


### Measurement and Probability

### References

Here are some books I like about this subject:

1. Hughes' [The Structure and Interpretation of Quantum
Mechanics](https://www.hup.harvard.edu/catalog.php?isbn=9780674843929), is more
philosophical.

1. Isham's [Lectures on Quantum
Theory](https://www.amazon.com/Lectures-Quantum-Theory-Mathematical-Foundations/dp/1860940013),
is more mathematical.

1. [Peres](https://www.amazon.com/Quantum-Theory-Concepts-Fundamental-Theories/dp/0792336321/)
and
[Ballentine](https://www.amazon.com/Quantum-Mechanics-Modern-Development-2Nd/dp/9814578584/)
are more "physics oriented" books that start from the algebraic point of view.
[Weinberg](https://www.amazon.com/Lectures-Quantum-Mechanics-Steven-Weinberg/dp/1107111668/)
is also covers this material, but from a more traditional point of view, but it's a nice
illustration of how the physics view and the algebraic view are related.
   
1. Finally, if you want to go all the way to the beginning with the original sources, both
of the books by
[Dirac](https://global.oup.com/academic/product/the-principles-of-quantum-mechanics-9780198520115?cc=us&lang=en&)
(or look at the [Google Books
link](https://www.google.com/books/edition/The_Principles_of_Quantum_Mechanics/XehUpGiM6FIC?hl=en&gbpv=0)
which is likely to be more reliable) and [von
Neumann](https://press.princeton.edu/books/hardcover/9780691178561/mathematical-foundations-of-quantum-mechanics)
are still pretty readable.

### Notes

[^1]: Of course, every time I have tried to write down these simple facts they in fact
    seem long winded, too abstract, and tedious. So maybe the differential equations point
    of view is really the "simple" one. I don't know. I always understood calculus better
    than algebra in school, but for quantum mechanics for some reason I lean the other
    way.

[^2]: Dirac thought up this strange notation for vectors just so he could call the inner product
a "braket" ... in his terminology the $| \psi \rangle$ is a "ket" or "ket vector" and the
$\langle \psi |$ is a "bra". So you put them together and you get a "bra ket" or
["braket"](https://en.wikipedia.org/wiki/Bra–ket_notation). Those wacky physicists thought
this joke was so funny that we've been stuck with this notation for a hundred years now.

