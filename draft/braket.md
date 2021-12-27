But, to write down the rules we will use in quantum mechanics we first need to talk about
the [Dirac "bra ket" notation](https://en.wikipedia.org/wiki/Bra–ket_notation). Dirac
originally [published this idea](images/dirac.pdf) in 1939, and which was then
immortalized in the third edition of his famous book. It works like this:

1. Instead of writing vectors with a simple letter like we did above, we write them like
   this: $| v \rangle$. Quantum states are usually denoted using greek letters, so we'd
   write something like $| \psi \rangle$. This object is called a _ket_.

2. In addition, there is another kind of object called a _bra_ (possibly the worst name
   for a mathematical object in all of math and physics) which we write like this:
   $\langle \phi |$. Mathematically these are actually functions that map vectors to
   $\mathbb C$. But this is a detail that most physicists don't worry too much about.

4. By convention we also put linear combinations of vectors on either side of the $|$
   symbol in this notation. So something we might write $a | \psi \rangle + b | \phi
   \rangle$ as $| a \psi + b \phi \rangle$ and something like $a\langle  \psi | + b
   \langle \phi |$ as $\langle a \psi +  b \phi |$ and so on.

3. Finally, if we have two vectors $| \psi \rangle$ and $| \phi \rangle$, we write their
   write their inner product by docking them together like this: $\langle \psi | \phi
   \rangle$. This is called a "braket" ... a punny name that, no doubt, is the entire
   justification for all of this nonsense. Note also how we have casually flipped $| \psi
   \rangle$ around when moving it to the writing down this product thus assuming that $|
   \psi \rangle$ and $\langle \psi |$ are the same sort of object, when really they are
   not. This kind of moral flexibility with respect to [mathematical
   rigor](https://plato.stanford.edu/entries/qt-nvd/#DiraFounQuanTheo) has endeared
   physicists to mathematicians for the last century or so.
   
With this background we can write down the rules for how the inner product works. Given
two vectors $| \psi \rangle$ and $| \phi \rangle$, the inner product is a function that
computes a complex number, written $\langle \psi | \phi \rangle$ that obeys the following
rules:

1. $\langle \psi|\psi \rangle \geq 0$, and this equals zero only if $|\psi\rangle$ is 0.

2. The inner product is linear in the following way: if $a, b \in {\mathbb C}$, and we
   have three vectors $| \psi \rangle$, $| \phi_1 \rangle$, and $| \phi_2 \rangle$, then
   $\langle \psi| a \phi_1 + b \phi_2 \rangle = a \langle \psi| \phi_1 \rangle + b
   \langle \psi| \phi_2 \rangle$.

3. $\langle \psi | \phi \rangle ^* = \langle \psi | \phi \rangle$. Here the star notation ($^*$)
   denotes the "conjugate" of a complex number. So if $z = x + iy$ and $z^* = x - iy$.
   This condition amounts to a symmetry condition, and won't come up much in the rest of
   our discussions. The mathematicians in the audience will be wondering why we are not
   using the more standard notation $\bar{z}$ for this. The answer is, we just are not.

Again, the standard Euclidean dot product is a good example of an inner product. So,
Hilbert spaces can be seen as a natural generalization of the Euclidean spaces ($\mathbb
R^3$ or $\mathbb R^4$) in which we are used to doing physics. But, as we will see there is
more to it than that.