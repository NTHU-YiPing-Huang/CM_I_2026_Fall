/* Written by MyST v1.10.1 */

#import "myst-imports.typ": *

== Week 2: Second Quantization and Collective Excitations

Reference: #cite(<blaizot1986quantum>, form: "prose")

==== Central Pedagogical Goal <central-pedagogical-goal>

The main goal of this lecture is to understand *second quantization not as a new physical theory, but as a more natural language for describing quantum many-body systems*, especially when particle number, occupation numbers, interactions, and collective excitations become the relevant degrees of freedom.

A useful guiding question throughout the lecture is:

#quote(block: true)[*What are the appropriate variables for describing a quantum many-body system?*]The conceptual chain of this lecture is

$ boxed "single -particle basis"arrow.r "many -particle basis"arrow.r "occupation numbers"arrow.r a^dagger, a arrow.r "second -quantized Hamiltonian"arrow.r "collective excitations" $
#line(length: 100%, stroke: gray)

=== 1. Why Do We Need Second Quantization? <id-1-why-do-we-need-second-quantization>

==== 1.1  Occupation-number representation <id-1-1-occupation-number-representation>

===== It doesn't make sense to keep track of each particle when particles are indistinguishable <it-doesnt-make-sense-to-keep-track-of-each-particle-when-particles-are-indistinguishable>

Consider a set of single-particle states

$ | phi.alt_1 angle.r, thin | phi.alt_2 angle.r, thin dots.h, thin | phi.alt_M angle.r. $
For two *distinguishable* particles, the Hilbert space is

$ cal(H)_1 times.circle cal(H)_1, $
and a basis can be written as

$ | phi.alt_i angle.r times.circle | phi.alt_j angle.r. $
However, identical quantum particles are *indistinguishable*.

For two identical bosons, the properly symmetrized state is

$ | Psi_(i j)^((B)) angle.r = frac(1, sqrt(2)) (| i angle.r | j angle.r + | j angle.r | i angle.r), $
while for two identical fermions,

$ | Psi_(i j)^((F)) angle.r = frac(1, sqrt(2)) (| i angle.r | j angle.r -| j angle.r | i angle.r). $
For many particles, explicitly symmetrizing or antisymmetrizing wavefunctions quickly becomes cumbersome.

Instead of asking

#quote(block: true)[Which particle occupies which state?]it is more natural to ask

#quote(block: true)[How many particles occupy each state?]This motivates the occupation-number representation for an $N$-body quantum state and the corresponding definition of physical observables for calculation.

A many-particle state can be written as

$ | n_(alpha_1), n_(alpha_2), dots.h, n_(alpha_M) angle.r, $
where $n_(alpha_j)$ denotes the occupation number of the single-particle state $alpha_j$.

For bosons,

$ n_(alpha_j) = 0, 1, 2, dots.h, $
while for fermions,

$ n_(alpha_j) = 0, 1. $
Thus, instead of tracking individual particle labels, we describe the physical configuration directly by occupation numbers.

A useful conceptual shorthand is:

#quote(block: true)[#strong[First quantization emphasizes particle coordinates. \
Second quantization emphasizes occupation of quantum states.]]#line(length: 100%, stroke: gray)

==== 1.2 The exponential growing Hilbert space dimension <id-1-2-the-exponential-growing-hilbert-space-dimension>

===== Dimension of many-body Hilbert space grows exponentially, but local Hamiltonians usually is specified by a small set of parameters <dimension-of-many-body-hilbert-space-grows-exponentially-but-local-hamiltonians-usually-is-specified-by-a-small-set-of-parameters>

When we have $N$-particles, we have

$ cal(H)_N = cal(H)_1^((1)) times.circle cal(H)_1^((2)) times.circle... times.circle cal(H)_1^((N)). $
If $D [ cal(H)_1 ] = d$ denotes the dimension $d$ of the Hilbert space $cal(H)_1$, then $D [ cal(H)_N ] tilde e^N$.

It means the matrix representation of many-body Hamiltonians(local) are usually sparse. How to effectively compress the information and form a informative description is the key.

- Faithful representations: first quantization, second quantization(suitable for later simplification focusing on collective behavior)
- Variational representations: tensor networks, Boltzmann machine, etc.

#line(length: 100%, stroke: gray)

=== 2. $N$-particle states <id-2-n-particle-states>

==== 2.1 From the first quantization to the occupation number representation <id-2-1-from-the-first-quantization-to-the-occupation-number-representation>

Let's denote the real space coordinate as $arrow(r)$ and the internal coordinate as $sigma$. The $x$-representation combines both of them, _i.e._ $| x angle.r equiv | arrow(r), sigma angle.r$.

The completeness relation is

$ integral d x | x angle.r angle.l x | = bold(1)_(arrow(r) comma sigma) \; angle.l x | x ' angle.r = delta (x -x '). $
Here, $integral d x...$ means $integral d arrow(r) sum_sigma...$ and $delta (x -x ')$ means $delta (arrow(r) -arrow(r ')) delta_(sigma comma sigma ')$.

The wave function, $phi.alt_alpha (x) = angle.l x | alpha angle.r$, is the $x$-representation of $| alpha angle.r$.

Let's consider the $N$ distinguishable particles' wave function with quantum number ${alpha_i}$, denoted by $| {alpha_i})$. That is,

$ | alpha_1, alpha_2,..., alpha_N) equiv | alpha_1 angle.r | alpha_2 angle.r... | alpha_N angle.r $
Here, we assume the compelteness relation in $cal(H)_1$ as $sum_alpha | alpha angle.r angle.l alpha | = textbf(1)_(cal(H)_1)$. Also, notice that this state, $|...)$, is _NOT_ the physical wave function of $N$ identicle particles. This state is just an intermediate device for us to construct and understand the construction of the wave function of $N$ identicle particles.

To generate wave functions for *indistinguishable* particles, we consider the symmetrize and anti-symmetrize operators.

$ S & = (N!)^(-1) sum_P P \
A & = (N!)^(-1) sum_P (-1)^P P $
where $P$ is the operator that permute the index of the particles. $(-1)^P$ means we consider the corresponding coefficient according to the even/oddness of the permutation. A permutation $P$ is even if it can be transformed into identity by even number of nearest neighbor swaps. For example, for the permutation $P^(*)$ such that $P^(*) (A B C) = (C A B)$. $P^(*)$ is an even permutation since we can turn $(C A B)$ to $(A B C)$ by swaping $C A$ first, then $C B$ later. That is, \*_TWO_ nearest neighbor swaps.

Now, let's apply the symmetrization and anti-symmetrization operators to our $N$-particle fictitious state $|...)$.

==== 2.2 Bosons <id-2-2-bosons>

$ | alpha_1 alpha_2... alpha_N angle.r_S = N_S S | alpha_1 alpha_2... alpha_N). $
Here $N_S$ stands for the normalization of the wave function in order to keep $""_S angle.l alpha_1 alpha_2... alpha_N | alpha_1 alpha_2... alpha_N angle.r_S = 1$. To settle the normalization, we need to be aware that the normalization should be inherent from the single particle normalization $angle.l alpha | beta angle.r = delta_(alpha comma beta)$. Therefore, it is important to know how to count the distinct fictitious states $| {alpha_i})$ when some particles occupie the same quantum number $alpha$.

It is the time that the *occupation number* representation becomes useful. Instead of tracking the quantum number of individual particle, which does not make sense for identicle particles, we describe the system as how many particles occupy a particular quantum state $| alpha angle.r$ and enumerate all the possible quantum states of a single particle Hilbert space, $cal(H)_1$.

That is, if we have a $M$-dimensional single particle Hilbert space $cal(H)_1$ labeled by quantum number $a_j \; j = 1 tilde M$, we can have our fictitious state described by $| {alpha_i})$ where $alpha_i in {a_j}$. Then, we can have the occupation number representation of a state as $| n_(a_1) n_(a_2)... n_(a_M) angle.r$ where $sum_j n_j = N$. If $M$ is unbounded, we usually have the occupation number representation denoted as $| n_(a_1) n_(a_2)... angle.r$ without specifying the occupation number of the last state since there is no _last_ single particle state in $cal(H)_1$.

With the occupation number notion in mind, we know the counting problem better. For a fictitious state $| alpha_1 alpha_2... alpha_N)$ equivalent to $| n_(a_1) n_(a_2)... angle.r$ with $sum_j n_(a_j) = N$, the number of distict fictitious state after permutation is

$ frac(N!, n_(a_1)! n_(a_2)!...). $
Therefore, we can find $N_s$ accordingly since

$ ""_S angle.l alpha_1 alpha_2... alpha_N | alpha_1 alpha_2... alpha_N angle.r_S & = angle.l n_(alpha_1) n_(alpha_2)... | n_(alpha_1) n_(alpha_2)... angle.r = 1 \
& = N_S^2 sum_P sum_Q (N!)^(-2) (alpha_1 alpha_2... alpha_N | P Q | alpha_1 alpha_2... alpha_N) $
#proof(kind: "exercise", supplement: "Exercise", labelName: "normalization")[
Fill the needed steps to identify the expression $N_S$.]
#proof(kind: "solution", supplement: "Solution", labelName: none, heading: [Solution to #link(<normalization>)[Exercise~1]])[
$(alpha_1 alpha_2... alpha_N | P = (alpha_(P_1) alpha_(P_2)... alpha_(P_N) |$ is just one of the permutation of ${alpha_i}$. Similarly $Q | alpha_1 alpha_2... alpha_N) = | alpha_(Q_1) alpha_(Q_2)... alpha_(Q_N))$. The inner product is identity only when the corresponding permutation $P$ and $Q$ are identicle. For each $P$, the number of such non-zero terms we got while summing over $Q$ is $n_(alpha_1)! n_(alpha_2)!...$. After we perform the summation over $Q$, we have

$ 1 = N_S^2 sum_P (N!)^(-2) n_(alpha_1)! n_(alpha_2)!... = N_S^2 (N!)^(-1) n_(alpha_1)! n_(alpha_2)!... $
The summation over $P$ contribute another $N!$ factor since the above statement is true for all $P$.]
This gives

$ N_S = sqrt(frac(N!, n_(alpha_1)! n_(alpha_2)!...)) $
and

$ | alpha_1 alpha_2... alpha_N angle.r_S & = sqrt(frac(N!, n_(alpha_1)! n_(alpha_2)!...)) S | alpha_1 alpha_2... alpha_N) \
& = frac(1, sqrt(N! n_(alpha_1)! n_(alpha_2)!...)) sum_P | alpha_(P_1) alpha_(P_2)... alpha_N) \
& = | n_(alpha_1) n_(alpha_2)... angle.r_S $
The quantum number $alpha$ and $alpha '$ might not be orthogonal. The general inner product of two symmetric state therefore is

$ ""_S angle.l {alpha_i} | {alpha_i '} angle.r_S = frac(1, sqrt(n_(alpha_1)!... n_(alpha_1 ')!...)) underbrace(sum_P angle.l alpha_1 | alpha_(P_1) ' angle.r angle.l alpha_2 | alpha_(P_2) ' angle.r... angle.l alpha_N | alpha_(P_N) ' angle.r, p e r m a n e n t). $
#proof(kind: "exercise", supplement: "Exercise", labelName: "s_inner_product")[
Fill the needed steps to identify the above expression.]
#proof(kind: "solution", supplement: "Solution", labelName: none, heading: [Solution to #link(<s_inner_product>)[Exercise~2]])[
$ ""_S angle.l {alpha_i} | {alpha_i '} angle.r_S & = sqrt(frac(N!, n_(alpha_1)!...) frac(N!, n_(alpha_1 ')!...)) (N!)^(-2) sum_P sum_Q (alpha_1... | P Q | alpha_1 '...) \
& = sqrt(frac(N!, n_(alpha_1)!...) frac(N!, n_(alpha_1 ')!...)) (N!)^(-2) sum_P sum_(P Q) (alpha_1... | P Q | alpha_1 '...) \
& = frac(1, sqrt(n_(alpha_1)!... n_(alpha_1 ')!...)) sum_(P Q) (alpha_1... | P Q | alpha_1 '...) \
& = frac(1, sqrt(n_(alpha_1)!... n_(alpha_1 ')!...)) underbrace(sum_P angle.l alpha_1 | alpha_(P_1) ' angle.r angle.l alpha_2 | alpha_(P_2) ' angle.r... angle.l alpha_N | alpha_(P_N) ' angle.r, p e r m a n e n t). $
Here, we have use the cyclic nature of permutation, so $sum_Q... P Q... = sum_(P Q)... P Q...$. Furthermore, $sum_P = N!$]
==== 2.3 Fermions <id-2-3-fermions>

$ | alpha_1 alpha_2... alpha_N angle.r_A = N_A A | alpha_1 alpha_2... alpha_N). $
We can perform exactly the same procedure and got $N_A$. However, notice that the anti-symmetrized wave function forbidden two particles occupied the same single particle state. That is, $n_(alpha_j) = 0, 1 \; n_(alpha_j)! = 1$. To some extend, it is the special case of our above enumeration problem and we have

$ N_A = sqrt(N!) $
and

$ | alpha_1 alpha_2... alpha_N angle.r_A & = sqrt(N!) A | alpha_1 alpha_2... alpha_N) \
& = frac(1, sqrt(N!)) sum_P (-1)^P | alpha_(P_1) alpha_(P_2)... alpha_(P_N)) \
& = | n_(alpha_1) n_(alpha_2)... angle.r_A. $
Similarly, when quantum numbers $alpha$ and $alpha '$ are not orthogonal, we have

$ ""_A angle.l {alpha_i} | {alpha_i '} angle.r_A = underbrace(sum_P (-1)^P (alpha_1... alpha_N | alpha_(P_1) '... alpha_(P_N) '), d e t e r m i n a n t). $
#proof(kind: "exercise", supplement: "Exercise", labelName: "as_inner_product")[
Fill the needed steps to identify the above expression.]
#proof(kind: "solution", supplement: "Solution", labelName: none, heading: [Solution to #link(<as_inner_product>)[Exercise~3]])[
$ ""_A angle.l {alpha_i} | {alpha_i '} angle.r_A & = sqrt(N!) sqrt(N!) (N!)^(-2) sum_P sum_Q (-1)^(P + Q) (alpha_1... | P Q | alpha_1 '...) \
& = (N!)^(-1) sum_P sum_(P Q) (-1)^(P Q) (alpha_1... | P Q | alpha_1 '...) \
& = underbrace(sum_P (-1)^P (alpha_1... alpha_N | alpha_(P_1) '... alpha_(P_N) '), d e t e r m i n a n t). $]
It is usually tidious to write $| {n_(alpha_j)} angle.r_S$ or $| {n_(alpha_j)} angle.r_A$ explicitly. Usually, we wrote $| {n_(alpha_j)} angle.r$ without the explict subscript when the formulation is valid in general for $N$ bosons/fermions.

Now it is time to consider the normalized wavefunction of a symmetric or antisymmetric state. The wave function is a projection to the _fictitious_ $x$ coordinates, _i.e._

For antisymmetric case, it is the famous _Slater determinant_.

$ psi_(alpha_1... alpha_N) (x_1... x_N) = (x_1... x_N | alpha_1... alpha_N angle.r = frac(1, sqrt(N!)) sum_P (-1)^P (x_1... x_N | alpha_(P_1) '... alpha_(P_N) '). $
=== 3. Fock Space <id-3-fock-space>

The vacuum state is

$ | 0 angle.r equiv | {n_(alpha_j) = 0} angle.r. $
Notice that $| 0 angle.r$ is not zero, it is a specific state with structure. However, in simple cases, the structure is kind of trivial--tensor product of vacuumn states of the single particle Hilbert space.

The Fock space contains sectors with different particle numbers:

$ cal(F) = CC plus.circle cal(H)_1 plus.circle cal(H)_2 plus.circle cal(H)_3 plus.circle dots.h.c. $
Here,

- $CC$ is the zero-particle sector,
- $cal(H)_1$ is the one-particle Hilbert space,
- $cal(H)_2$ is the two-particle sector,
- and so on.

The occupation number representation of bosons/fermions are

$ | n_1, n_2, dots.h angle.r = product_i frac((a_(alpha_i)^dagger)^(n_(alpha_i)), sqrt(n_(alpha_i)!)) | 0 angle.r. $
For bosons, $n_(alpha_i) gt.eq 0$\; For fermions, $n_(alpha_i) = {0, 1}$. This construction allows states with different total particle numbers to be treated in a unified Hilbert space.

The total number operator will later be

$ hat(N) = sum_i hat(n)_(alpha_i). $
The comleteness relation in $cal(H)_N^S$ is

$ bold(1)_N^S & = S bold(1)_N S = sum_(alpha_1... alpha_N) S | alpha_1... alpha_N) (alpha_1... alpha_N | S \
& = sum_(alpha_1... alpha_N) frac(n_(alpha_1)! n_(alpha_2)!..., N!) | alpha_1... alpha_N angle.r_S angle.l alpha_1... alpha_N | \
& = sum_(n_(alpha_1) n_(alpha_2)...) frac(n_(alpha_1)! n_(alpha_2)!..., N!) | n_(a_1) n_(a_2)... angle.r angle.l n_(a_1) n_(a_2)... | $
Similar relation can be constructed for fermions.

Now we should be familiar with the expression. I will use $i$ for quantum number and omit the full expression of qantum number $alpha_i$.

#line(length: 100%, stroke: gray)

=== 4. Creation and Annihilation Operators <id-4-creation-and-annihilation-operators>

==== 4.1 Bosons <id-4-1-bosons>

The bosonic creation operator $a_i^dagger$ increases the occupation of state $i$:

$ a_i^dagger | n_i angle.r = sqrt(n_i + 1) thin | n_i + 1 angle.r. $
The annihilation operator $a_i$ decreases the occupation:

$ a_i | n_i angle.r = sqrt(n_i) thin | n_i -1 angle.r. $
They satisfy the canonical commutation relations, $[ A, B ] equiv A B -B A$,

$ [ a_i, a_j^dagger ] = delta_(i j), $
$ [ a_i, a_j ] = 0, $
$ [ a_i^dagger, a_j^dagger ] = 0. $
The occupation-number operator is

$ hat(n)_i = a_i^dagger a_i. $
Therefore,

$ hat(n)_i | n_i angle.r = n_i | n_i angle.r. $
#line(length: 100%, stroke: gray)

==== 4.2 Fermions <id-4-2-fermions>

For fermions, we introduce $c_i^dagger$ and $c_i$.

They satisfy the canonical anticommutation relations, ${A, B} = A B + B A$,

$ {c_i, c_j^dagger} = delta_(i j), $
$ {c_i, c_j} = 0, $
$ {c_i^dagger, c_j^dagger} = 0. $
For $i = j$,

$ {c_i^dagger, c_i^dagger} = 2 (c_i^dagger)^2 = 0. $
Therefore,

$ (c_i^dagger)^2 = 0. $
This immediately implies that one cannot create two identical fermions in the same single-particle state.

Hence,

$ n_i = 0, 1. $
The Pauli exclusion principle is therefore encoded directly in the operator algebra.

The fermionic number operator is

$ hat(n)_i = c_i^dagger c_i, $
and the total particle-number operator is

$ hat(N) = sum_i c_i^dagger c_i. $
===== Quick conceptual question <quick-conceptual-question>

What is the eigenvalue of $hat(N)$ acting on

$ | 1, 0, 1, 1, 0 angle.r ? $
Since there are three occupied states,

$ hat(N) | 1, 0, 1, 1, 0 angle.r = 3 | 1, 0, 1, 1, 0 angle.r. $
#line(length: 100%, stroke: gray)

=== 5. From a Single-Particle Hamiltonian to Second Quantization <id-5-from-a-single-particle-hamiltonian-to-second-quantization>

This section connects directly to the tight-binding Hamiltonian introduced previously.

Suppose the single-particle Hamiltonian is

$ hat(h) = sum_(i j) h_(i j) | i angle.r angle.l j |. $
The corresponding second-quantized Hamiltonian is

$ boxed hat(H) = sum_(i j) h_(i j) c_i^dagger c_j. $
The operator

$ c_i^dagger c_j $
has a simple physical meaning:

+ annihilate one particle in state $j$,
+ create one particle in state $i$.

Therefore,

$ | i angle.r angle.l j | quad longrightarrow quad c_i^dagger c_j. $
This is one of the most important correspondences in second quantization.

#line(length: 100%, stroke: gray)

==== 5.1 Tight-binding example <id-5-1-tight-binding-example>

Consider the one-dimensional tight-binding Hamiltonian

$ H = E_0 sum_i | i angle.r angle.l i | -t sum_i (| i angle.r angle.l i + 1 | + | i + 1 angle.r angle.l i |). $
Its second-quantized form is

$ boxed hat(H) = E_0 sum_i c_i^dagger c_i -t sum_i (c_i^dagger c_(i + 1) + c_(i + 1)^dagger c_i). $
The first term represents the on-site energy.

The second term represents hopping between neighboring sites.

For example,

$ c_(i + 1)^dagger c_i $
moves a particle from site $i$ to site $i + 1$.

This illustrates an important point:

#quote(block: true)[*Second quantization does not replace the single-particle Hamiltonian. It lifts the single-particle operator into many-particle Fock space.*]#line(length: 100%, stroke: gray)

#proof(kind: "exercise", supplement: "Exercise", labelName: "m2sec")[
Consider the single-particle Hamiltonian in basis $| 1 angle.r, | 2 angle.r, | 3 angle.r$.

$ H = -t mat(delim: "(", 0, 1, 0; 1, 0, 1; 0, 1, 0). $
Write the corresponding second-quantized Hamiltonian.]
#proof(kind: "solution", supplement: "Solution", labelName: none, heading: [Solution to #link(<m2sec>)[Exercise~4]])[
The nonzero matrix elements correspond to hopping between sites 1 and 2, and between sites 2 and 3.

Therefore,

$ boxed hat(H) = -t (c_1^dagger c_2 + c_2^dagger c_1 + c_2^dagger c_3 + c_3^dagger c_2). $]
#proof(kind: "exercise", supplement: "Exercise", labelName: "qprocess")[
What processes can act on the fermionic state

$ | 1, 0, 1 angle.r ? $
The two particles occupy sites 1 and 3.]
#proof(kind: "solution", supplement: "Solution", labelName: none, heading: [Solution to #link(<qprocess>)[Exercise~5]])[
The terms

$ c_2^dagger c_1 $
and

$ c_2^dagger c_3 $
can move either particle toward the middle site.

This exercise gives a direct physical interpretation of the operator products appearing in the Hamiltonian.]
==== 5.2 Formal definition of creation/destruction operators <id-5-2-formal-definition-of-creation-destruction-operators>

===== 5.2.1 Definitions and useful commutator relations <id-5-2-1-definitions-and-useful-commutator-relations>

We took a rather unconventional route to introduce second quantization -- introduce the protocal first without knowning how things really work. That is, we just provide a protocal to go from single particle to many-body formulation. But why it works? We are going to address this question in this section.

To keep the notation tight, we will use the following definition of commutator

$ [ A, B ]_epsilon = A B + epsilon B A $ <g_com>
with fermions $epsilon = + 1$\; bosons $epsilon = -1$.

Therefore, we have

$ [ a^dagger_alpha, a^dagger_beta ]_epsilon & = [ a_alpha, a_beta ]_epsilon = 0 \
[ a_alpha, a^dagger_beta ]_epsilon & = angle.l alpha | beta angle.r. $
Note that we consider the case where $alpha$ and $beta$ are ingeneral not orthogonal. The single particle reexpression of the last equation becomes

$ [ a_alpha, a^dagger_beta ]_epsilon = a_alpha a^dagger_beta + epsilon a^dagger_beta a_alpha arrow.r angle.l alpha | beta angle.r. $ <commutator>
Note that #link(<commutator>)[(64)] define the action of destruction operators on ket states.

$ a_alpha | beta angle.r & = a_alpha a^dagger_beta | 0 angle.r = [ a_alpha, a^dagger_beta ]_epsilon | 0 angle.r -epsilon a^dagger_beta a_alpha | 0 angle.r \
& = angle.l alpha | beta angle.r | 0 angle.r. $
Let's summarize the chain of definition:

+ We define $| 0 angle.r$ and $a^dagger_alpha$ according to its right action on $| 0 angle.r$.
+ We define $a_alpha$ by  its left action on $angle.l 0$.
+ We define the commutator #link(<commutator>)[(64)] and use it to find a self-consistent definition of $a_alpha$'s right action on $| 0 angle.r$.

The notation #link(<g_com>)[(62)] is useful for us to develop the concrete understanding of the mapping between the first and second quantization representation for bosons and fermions in general. From #link(<g_com>)[(62)], we have

$ [ a^dagger_alpha a_beta, a^dagger_gamma ]_epsilon & = a^dagger_alpha a_beta a^dagger_gamma + epsilon a^dagger_gamma a^dagger_alpha a_beta = a^dagger_alpha a_beta a^dagger_gamma + epsilon (-epsilon) a^dagger_alpha a^dagger_gamma a_beta \
& = a^dagger_alpha [ a_beta, a^dagger_gamma ]_(epsilon = -1). $
This relation will be useful for later derivation.

===== 5.2.2 The linear mapping nature between single particle states and creation/destruction operators <id-5-2-2-the-linear-mapping-nature-between-single-particle-states-and-creation-destruction-operators>

Let the mapping from first quantization to second quantization defined as $T_2$.

We have

$ T_2 (a | alpha angle.r + b | beta angle.r) = a a^dagger_alpha | 0 angle.r + b b^dagger_beta | 0 angle.r = a T_2 (a | alpha angle.r) + b T_2 (b | beta angle.r). $
That suggest $T_2$ is a linear mapping.

===== 5.2.3 Basis transformation <id-5-2-3-basis-transformation>

==== 5.3 General construction of operators from first quantization to second quantization <id-5-3-general-construction-of-operators-from-first-quantization-to-second-quantization>

===== 5.3.1 Representation of symmetric operators in Fock space. <id-5-3-1-representation-of-symmetric-operators-in-fock-space>

===== 5.3.2 Single-particle operators in second quantization <id-5-3-2-single-particle-operators-in-second-quantization>

===== 5.3.3 Two-particle operators in second quantization <id-5-3-3-two-particle-operators-in-second-quantization>

#line(length: 100%, stroke: gray)

=== 6. Why Second Quantization Becomes Essential for Interactions <id-6-why-second-quantization-becomes-essential-for-interactions>

For noninteracting particles, second quantization is elegant.

For interacting particles, it becomes especially powerful.

A generic first-quantized Hamiltonian can be written schematically as

$ H = sum_i h (bold(r)_i) + frac(1, 2) sum_(i eq.not j) V (bold(r)_i -bold(r)_j). $
The second-quantized form is

$ boxed H = sum_(i j) h_(i j) c_i^dagger c_j + frac(1, 2) sum_(i j k l) V_(i j k l) c_i^dagger c_j^dagger c_l c_k. $
The one-body term

$ c_i^dagger c_j $
describes the motion of one particle.

The two-body term

$ c_i^dagger c_j^dagger c_l c_k $
describes a scattering process:

$ (k, l) arrow.r (i, j). $
The operators

$ c_l c_k $
remove two particles from the initial states, while

$ c_i^dagger c_j^dagger $
create two particles in the final states.

Thus interactions can be interpreted directly as microscopic scattering processes.

#line(length: 100%, stroke: gray)

=== 8. Example: The Hubbard Model <id-8-example-the-hubbard-model>

One of the simplest interacting lattice Hamiltonians is the Hubbard model:

$ boxed H = -t sum_(angle.l i j angle.r comma sigma) (c_(i sigma)^dagger c_(j sigma) + c_(j sigma)^dagger c_(i sigma)) + U sum_i n_(i uparrow) n_(i downarrow). $
The hopping term,

$ -t sum_(angle.l i j angle.r comma sigma) c_(i sigma)^dagger c_(j sigma), $
favors particle delocalization.

The interaction term,

$ U sum_i n_(i uparrow) n_(i downarrow), $
assigns an energy cost to double occupation.

The physics therefore involves competition between

$ boxed "kinetic delocalization"quad "and"quad "local interaction". $
A large fraction of condensed matter physics can be viewed as understanding the consequences of such competing terms.

#line(length: 100%, stroke: gray)

=== 9. From Microscopic Particles to Collective Excitations <id-9-from-microscopic-particles-to-collective-excitations>

Once many particles interact, the microscopic particles are not always the most useful variables for describing low-energy physics.

Examples include

$ "atoms"arrow.r "phonons", $
$ "spins"arrow.r "magnons", $
$ "electrons"arrow.r "density fluctuations", $
$ "interacting electrons"arrow.r "quasiparticles", $
$ "paired electrons"arrow.r "Bogoliubov quasiparticles". $
The microscopic Hamiltonian may be written using operators such as

$ c_i, wide c_i^dagger, $
but the effective low-energy Hamiltonian may take the form

$ H_(upright(e f f)) = sum_q omega_q b_q^dagger b_q. $
The operator $b_q^dagger$ may create an excitation involving the coordinated motion of a macroscopic number of microscopic degrees of freedom.

This is one of the central ideas of condensed matter physics:

#quote(block: true)[*The elementary excitations of an interacting many-body system need not be the microscopic particles from which the system is built.*]#line(length: 100%, stroke: gray)

=== 10. Minimal Example: Phonons <id-10-minimal-example-phonons>

Consider a one-dimensional chain of atoms with displacement $u_j$ and momentum $p_j$.

The harmonic-chain Hamiltonian is

$ H = sum_j frac(p_j^2, 2 m) + frac(K, 2) sum_j (u_(j + 1) -u_j)^2. $
Here,

- $m$ is the atomic mass,
- $K$ is the spring constant,
- $u_j$ is the displacement of atom $j$ from equilibrium.

#line(length: 100%, stroke: gray)

==== 10.1 Fourier transformation <id-10-1-fourier-transformation>

Introduce normal-mode coordinates:

$ u_j = frac(1, sqrt(N)) sum_q u_q e^(i q R_j), $
and

$ p_j = frac(1, sqrt(N)) sum_q p_q e^(i q R_j). $
The Hamiltonian becomes a sum over independent momentum modes:

$ H = sum_q [ frac(p_q p_(-q), 2 m) + frac(m omega_q^2, 2) u_q u_(-q) ]. $
The dispersion relation is

$ boxed omega_q = 2 sqrt(frac(K, m)) | sin (frac(q a, 2)) |. $
Each momentum mode behaves like an independent harmonic oscillator.

#line(length: 100%, stroke: gray)

==== 10.2 Quantization of the normal modes <id-10-2-quantization-of-the-normal-modes>

For each mode, define bosonic creation and annihilation operators.

Schematically,

$ u_q prop b_q + b_(-q)^dagger, $
and

$ p_q prop b_q -b_(-q)^dagger. $
The Hamiltonian becomes

$ boxed H = sum_q planck.reduce omega_q (b_q^dagger b_q + frac(1, 2)). $
The occupation number

$ n_q = b_q^dagger b_q $
counts the number of phonons in mode $q$.

The original microscopic degrees of freedom were atomic displacements.

The natural quantum excitations are now phonons.

Thus,

$ boxed "coupled atomic motion"arrow.r "independent collective modes"arrow.r "phonons". $
This provides a concrete example of emergence.

#line(length: 100%, stroke: gray)

=== 11. Key Conceptual Message <id-11-key-conceptual-message>

The phonon example illustrates why second quantization and collective excitations naturally belong together.

The microscopic system may contain a very large number of interacting degrees of freedom.

However, after identifying the appropriate normal modes, the Hamiltonian may take the simple form

$ H = sum_q epsilon_q gamma_q^dagger gamma_q. $
The operators $gamma_q^dagger$ create the *appropriate emergent excitations* rather than necessarily the original microscopic particles.

A useful perspective for the rest of condensed matter physics is:

#quote(block: true)[*Much of condensed matter physics is the search for the right creation and annihilation operators.*]#line(length: 100%, stroke: gray)

=== 12. Learning Outcomes <id-12-learning-outcomes>

By the end of Week 2, students should be able to:

+ Translate between particle-coordinate and occupation-number descriptions.
+ Explain the meaning of Fock space.
+ Use bosonic commutation relations,

$ [ a_i, a_j^dagger ] = delta_(i j), $
and fermionic anticommutation relations,

$ {c_i, c_j^dagger} = delta_(i j). $
+ Explain how the Pauli exclusion principle follows from

$ (c_i^dagger)^2 = 0. $
+ Convert a single-particle matrix Hamiltonian

$ h_(i j) $
into the second-quantized form

$ sum_(i j) h_(i j) c_i^dagger c_j. $
+ Interpret

$ c_i^dagger c_j $
as a one-particle transition.
+ Interpret

$ c_i^dagger c_j^dagger c_l c_k $
as a two-particle scattering process.
+ Explain why collective excitations can be treated as particles even though they arise from coordinated motion of many microscopic degrees of freedom.

#line(length: 100%, stroke: gray)

=== 13. Final Summary <id-13-final-summary>

The progression of the lecture can be summarized as

$ boxed "First quantization"quad Psi (x_1, dots.h, x_N) $
$ Downarrow $
$ boxed "Occupation numbers"quad | n_1, n_2, dots.h angle.r $
$ Downarrow $
$ boxed a_i^dagger, " "a_i $
$ Downarrow $
$ boxed H = sum_(i j) t_(i j) a_i^dagger a_j + sum_(i j k l) V_(i j k l) a_i^dagger a_j^dagger a_l a_k $
$ Downarrow $
$ boxed "Emergent excitations"quad H_(upright(e f f)) = sum_q epsilon_q gamma_q^dagger gamma_q + dots.h.c $
The essential conceptual message is:

#quote(block: true)[*Second quantization provides the natural language for describing occupation, interactions, and emergent collective excitations in quantum many-body systems.*]#line(length: 100%, stroke: gray)

=== 14. Connection to the Next Lecture <id-14-connection-to-the-next-lecture>

In the next lecture, *Tight-Binding Models and Bloch Theorem*, we will use the second-quantized language developed here to study translationally invariant lattice systems.

A central transformation will be

$ c_k = frac(1, sqrt(N)) sum_j e^(-i k R_j) c_j, $
which reorganizes the lattice degrees of freedom into momentum-space modes.

This leads naturally to

- Bloch states,
- crystal momentum,
- band dispersion,
- and the electronic structure of periodic solids.

The sequence of the first three weeks is therefore

$ boxed "Week 1 : Why many -body physics ?" $
$ boxed "Week 2 : What language should we use ?" $
$ boxed "Week 3 : How does symmetry organize particle motion ?" $