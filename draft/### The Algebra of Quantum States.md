### The Algebra of Quantum States

Quantum states generalize wave functions and are supposed to be a mathematical
representation of the state of some quantum system the same way $x$ and $p$ above
represented the state of the classical particle in mechanics. But, as with wave functions,
the nature of this object is somewhat more complicated.

Quantum mechanics states live in a thing called a
[_Hilbert space_](https://en.wikipedia.org/wiki/Hilbert_space) named after the
mathematician [David Hilbert](https://en.wikipedia.org/wiki/David_Hilbert), who did a lot
of stuff. Hilbert spaces are like vector spaces, but with a few extra rules. So quantum
states are really an abstract sort of vector, which might seem weird since I also just
called them wave functions. But we'll get to that.

A Hilbert space is generally defined to be "over" the the real numbers ($\mathbb R$) or
the complex numbers ($\mathbb C$). For quantum mechanics our spaces will always start with
the complex numbers. This just means that when I say "scalar" below, I mean values in
$\mathbb C$. We'll write the Hilbert space itself using a script letter, like this: ${\cal
H}$. And we'll use greek letters for the vectors in ${\cal H}$. 

So, given two vectors $\psi$ and $\phi \in {\cal H}$ we have the following rules:
	
1. A scalar multiplied by a vector is a vector, so if $a$ is a scalar then $a \psi$ and $a
   \phi$ are still vectors.

2. You can add vectors together to get new vectors: $\psi + \phi \in {\cal H}$.

3. Addition is commutative, so $\psi + \phi = \phi + \psi$.

4. There is a special vector $0 \in {\cal H}$ such that $\psi + 0 = \psi$ for all $\psi$.

1. Every vector has an additive inverse which we call $-\psi$ such that $\psi + (-\psi) =
   \psi - \psi = 0$.

5. Scalar multiplication and vector addition interact the way you could expect, so like
   $a(\psi + w\phi) = a \psi + a \phi$ and so on.

The vector space we are most familiar with are the spaces over real or complex numbers.
Here vectors take the familiar form of finite lists of real or complex numbers, and all
the rules above apply.

In addition, the standard Euclidean dot product is a good example of something called an
_inner product_ or _scalar product_. This is used to define notions of length, distance
and angle in an algebraic way. Hilbert spaces can be seen as a natural generalization of
the Euclidean spaces ($\mathbb R^3$ or $\mathbb R^4$), so they are vector spaces with an
inner product.

For quantum states we'll write the scalar product like this: $(\psi, \phi)$. This will be
a function that takes two vectors and computes a single complex number, and also follows
the following rules:

1. $(\psi, \psi) \geq 0$, and this equals zero only if $\psi$ is 0.

2. The inner product is linear in the following way: if $a, b \in {\mathbb C}$, and we
   have three vectors $\psi$, $\phi_1$, and $\phi_2$, then
   $(\psi, a \phi_1 + b \phi_2)  = a ( \psi , \phi_1)   + b( \psi, \phi_2)$.

3. $(\psi , \phi)  ^* =  (\psi , \phi)$. Here the star notation ($^*$)
   denotes the "conjugate" of a complex number. So if $z = x + iy$ and $z^* = x - iy$.
   This condition amounts to a symmetry condition, and won't come up much in the rest of
   our discussions. The mathematicians in the audience will be wondering why we are not
   using the more standard notation $\bar{z}$ for this. The answer is, we just are not.

Again, the main reason we care about the inner product is that it lets us define a notion
of length, or a _norm_. By convention we write $|\psi|$ for the length of a vector, and we
have
$$
(\psi, \psi) = |\psi|^2 .
$$
which is the expression that appears in the Born rule above. Thus, Hilbert spaces let us
define the abstract rules we need for quantum mechanics.

**Note:** I'm blowing off describing the [Dirac "bra ket"
notation](https://en.wikipedia.org/wiki/Bra–ket_notation) here because I don't feel like
dealing with it. I figure if
[Weinberg](https://www.amazon.com/Lectures-Quantum-Mechanics-Steven-Weinberg/dp/1107111668/)
can do this so can I.


#### Quantum Observables