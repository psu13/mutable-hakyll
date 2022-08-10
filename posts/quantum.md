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

1. On the one hand, when we measure quantum systems we always get one answer.

1. On the other hand, if we believe in the basic postulates of quantum theory, and we
   believe that the measurement process is governed by those postulates, there quantum
   states which, when measured, should not give you one answer.

In [part 1](mechanics.html) of this series I gave you a bit of the history and motivation
behind the development of quantum mechanics. It followed the development of the theory the
way a lot of physics text books do, with lots of differential equations and other scary
math. We will now leave all that behind us.

My plan for this article is to get to the point where we can write down a mathematical
formulation of the measurement problem which is relatively rigorous. To do this we have to
describe the formalism of quantum mechanics. Surprisingly, this mostly boils down to some
basic[^1] facts about linear algebra, instead of all the scary differential equations from
part 1.

### Quantum States and Hilbert Space

The rules of quantum mechanics are about _states_ and _observables_. These are both
described by objects from a fancy sort of linear algebra, which involves a lot of axioms
that are interesting (not really) but not needed for our purposes. To try and keep this
section a bit shorter and less tedious I link out to Wikipedia for many of the
mathematical details, and just provide the highlights that we need here.

Quantum states live in a thing called a [_Hilbert
space_](https://en.wikipedia.org/wiki/Hilbert_space), which is a generalization of a
vector space. Observables are a particular kind of linear function, or _operator_ on a
Hilbert space. 

The ingredients that make up a Hilbert space are:

1. A set of _scalars_. In this case it's always the complex numbers ($\mathbb C$).

1. A set of _vectors_. Here the vectors are the wave functions.

1. A long list of rules about how we can combine vectors and scalars together that reads
   like the world's most tedious algebra text book. For reference, you can [find the rules
   here](https://en.wikipedia.org/wiki/Vector_space).

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

So, the short summary of this section is that quantum states are complex number valued
functions that live in a linear space called a Hilbert space, and that space also defines
an inner product which is how we will compute various probabilities later.

#### Short Mathematical Digression

In the original formulation of quantum mechanics the big conceptual shift in the theory
was moving from properties that had values which were real numbers to properties described
by complex valued _functions_ or _wave functions_. The issue was that we know how to do
calculus over the reals, but calculus with function valued objects is a stranger thing.
[_Functional analysis_](https://en.wikipedia.org/wiki/Functional_analysis) is the area of
mathematics that studies this, and Hilbert spaces come from functional analysis. In the
30s [von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann) realized that functional
analysis was the right framework to use to formalize Schrödinger's wave functions. And
that's what he did in his [famous book about quantum
mechanics](https://press.princeton.edu/books/hardcover/9780691178561/mathematical-foundations-of-quantum-mechanics).

After working out the mathematical basis for quantum theory Von Neumann went on to invent
the [dominant model](https://en.wikipedia.org/wiki/Von_Neumann_architecture) that we still
use to describe computers. So think about that next time you are feeling yourself after
having written some clever piece of code. 
 
### Operators and Observables

### Measurement and Probability


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

