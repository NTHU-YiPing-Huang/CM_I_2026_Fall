/* Written by MyST v1.10.1 */

#import "myst-imports.typ": *

== Homework 1 — From Microscopic Hamiltonians to Emergent Spectra

==== Learning objectives <learning-objectives>

After completing this homework, you should be able to:

+ translate a Hamiltonian written in bra-ket notation into its matrix representation\;
+ identify translational symmetry and use it to choose a convenient basis\;
+ diagonalize a simple lattice Hamiltonian analytically using Fourier modes\;
+ construct and diagonalize Hamiltonian matrices numerically\;
+ compare analytical predictions with numerical results\;
+ interpret finite-size spectra and understand how the level spacing changes with system size\;
+ investigate how a local breaking of translational symmetry modifies collective spectral properties.

The main conceptual flow of this homework is

$ boxed "Hamiltonian"arrow.r "matrix"arrow.r "symmetry"arrow.r "eigenstates"arrow.r "numerics"arrow.r "physical interpretation" $
#line(length: 100%, stroke: gray)

=== Problem 1 — From an operator to a matrix <problem-1-from-an-operator-to-a-matrix>

Although we have not yet formally introduced the tight-binding Hamiltonian, consider the Hamiltonian written in Eq. (11):

$ H = E_0 sum_(i = 1)^N | i angle.r angle.l i | -t sum_(i = 1)^N (| i angle.r angle.l i + 1 | + | i + 1 angle.r angle.l i |), $
with periodic boundary condition

$ | N + 1 angle.r = | 1 angle.r. $
Here, the basis states

$ {| 1 angle.r, | 2 angle.r, dots.h, | N angle.r} $
represent a particle localized on one of the $N$ sites.

===== Question <question>

Write down the $N times N$ matrix representation of $H$ in the basis

$ {| 1 angle.r, | 2 angle.r, dots.h, | N angle.r}. $
Your answer should make clear:

- the diagonal matrix elements\;
- the nearest-neighbor hopping matrix elements\;
- the matrix elements that implement the periodic boundary condition.

#line(length: 100%, stroke: gray)

==== Main lesson — Problem 1 <main-lesson-problem-1>

The purpose of this problem is to learn how to move between different representations of the same quantum operator.

$ boxed "abstract operator"longleftrightarrow "matrix representation" $
Once a basis is chosen, the Hamiltonian becomes a matrix. The entries of that matrix directly encode the physical processes allowed by the model:

- diagonal elements describe the energy associated with occupying a site\;
- off-diagonal elements describe transitions between different basis states\;
- boundary conditions determine additional matrix elements.

An important point is that the Hamiltonian itself is an operator. Its matrix form appears only after we choose a basis.

Thus,

$ boxed "operator"+ "choice of basis"longrightarrow "matrix representation" $
This translation between physical processes, operator notation, and matrix elements is one of the most basic skills used throughout quantum many-body physics.

#line(length: 100%, stroke: gray)

=== Problem 2 — Use symmetry before computation <problem-2-use-symmetry-before-computation>

For the one-dimensional periodic chain, diagonalize the Hamiltonian analytically and show that the eigenvalues take the form

$ E (k) = E_0 -2 t cos k. $
Also determine the allowed values of $k$.

===== Hint 1 <hint-1>

The system is translationally invariant. Consider restructuring the basis using the Fourier-transformed states

$ | k angle.r = frac(1, sqrt(N)) sum_(j = 1)^N e^(i k j) | j angle.r. $
Apply the Hamiltonian to $| k angle.r$ and determine whether it is an eigenstate.

===== Hint 2 <hint-2>

There are other ways to solve the same eigenvalue problem. For example, you may write the components of an eigenvector as

$ psi_j prop z^j $
and use the periodic boundary condition to determine the allowed values of $z$.

===== Conceptual question <conceptual-question>

Why is translational symmetry useful here? In particular, explain why choosing a symmetry-adapted basis is more efficient than directly computing the determinant of a large $N times N$ matrix.

#line(length: 100%, stroke: gray)

==== Main lesson — Problem 2 <main-lesson-problem-2>

The purpose of this problem is not simply to diagonalize a matrix. It is to recognize that *symmetry tells us which basis is natural*.

The Hamiltonian is translationally invariant, so momentum states are adapted to the symmetry of the problem. In this basis, a large matrix diagonalization becomes a much simpler algebraic problem.

$ boxed "symmetry"longrightarrow "good quantum numbers"longrightarrow "better basis"longrightarrow "simpler Hamiltonian" $
A recurring strategy in condensed matter physics is therefore:

#quote(block: true)[Before attempting brute-force computation, first ask what symmetries the Hamiltonian has and whether they suggest a more useful basis.]The Fourier transform is not merely a mathematical trick. It is the basis transformation naturally associated with translational symmetry.

#line(length: 100%, stroke: gray)

=== Problem 3 — Numerical diagonalization and the thermodynamic limit <problem-3-numerical-diagonalization-and-the-thermodynamic-limit>

For simplicity, set

$ E_0 = 0, wide t = 1. $
Construct the Hamiltonian numerically for

$ N = 100 $
and

$ N = 200. $
Diagonalize the matrix numerically and sort the eigenvalues in ascending order,

$ E_1 lt.eq E_2 lt.eq dots.h.c lt.eq E_N. $
For each system size, make a plot where:

- the horizontal axis is the eigenvalue index $n$\;
- the vertical axis is the corresponding eigenvalue $E_n$.

You may either plot the two spectra separately or show them together in a way that makes comparison easy.

===== Questions <questions>

+ Does the total bandwidth change significantly when $N$ is increased from 100 to 200?
+ What happens to the typical spacing between neighboring energy levels?
+ Compare your numerical result with the analytical dispersion relation

$ E (k) = -2 cos k. $
Are the numerical eigenvalues consistent with the analytical prediction?

#set enum(start: 4)
+ In the lecture we argued that, if a fixed bandwidth contains an increasing number of states, the characteristic level spacing should decrease as the system size increases. Is your numerical result consistent with this argument?
+ Estimate how the characteristic level spacing changes when $N$ is doubled from 100 to 200.
#set enum(start: 1)

#line(length: 100%, stroke: gray)

==== Main lesson — Problem 3 <main-lesson-problem-3>

The purpose of this problem is to connect analytical reasoning, numerical computation, and the thermodynamic limit.

The microscopic hopping scale remains fixed, so the total bandwidth remains approximately fixed:

$ W tilde O (t). $
However, as the number of sites increases, more eigenvalues must fit inside this finite energy interval. Therefore the spectrum becomes increasingly dense:

$ N uparrow wide arrow.r.double wide delta E downarrow. $
For this one-particle problem, the average level spacing across the band scales approximately as

$ delta E_(upright(a v g)) tilde frac(W, N). $
The important physical lesson is

$ boxed "a fixed microscopic energy scale can coexist with an increasingly small collective level spacing" $
as the system size increases.

This is one of the simplest examples of how the thermodynamic limit can qualitatively change the spectrum of a system.

Numerical diagonalization also provides an important consistency check:

$ boxed "analytical prediction"longleftrightarrow "numerical spectrum" $
A numerical result becomes physically meaningful when it can be connected to an analytical argument.

#line(length: 100%, stroke: gray)

=== Problem 4 — Breaking translational symmetry locally <problem-4-breaking-translational-symmetry-locally>

We now introduce a local defect by weakening one hopping amplitude.

For the $N = 100$ system, change the hopping between sites 50 and 51 from

$ t = 1 $
to

$ t ' = 0. 1. $
That is,

$ t_(50 comma 51) = t_(51 comma 50) = 0. 1. $
For the $N = 200$ system, make the corresponding modification between sites 100 and 101:

$ t_(100 comma 101) = t_(101 comma 100) = 0. 1. $
All other hopping amplitudes remain equal to 1.

Numerically diagonalize the modified Hamiltonians and compare the sorted spectra with those of the uniform systems.

===== Questions

+ How does the spectrum change after introducing the weak bond?
+ Is momentum $k$ still a good quantum number? Explain your answer in terms of translational symmetry.
+ Does the overall bandwidth change substantially?
+ Is the relative influence of this single modified bond stronger for $N = 100$ or for $N = 200$?
+ A single bond is modified out of approximately $N$ bonds. The fraction of modified bonds therefore scales as

$ frac(1, N). $
What does this suggest about the influence of one local perturbation on global spectral properties in the thermodynamic limit

$ N arrow.r infinity ? $
#set enum(start: 6)
+ Even if the effect on the global spectrum becomes relatively small as $N$ increases, does the defect still break translational symmetry exactly? Explain the distinction between these two statements.
#set enum(start: 1)

#line(length: 100%, stroke: gray)

=== Optional extension — Inspect the eigenstates <optional-extension-inspect-the-eigenstates>

The eigenvalues tell us only part of the story.

For the uniform periodic chain, choose a few eigenstates and inspect the probability distribution

$ | psi_i |^2 $
over the lattice sites.

Repeat the same analysis for the system with the weak bond.

===== Questions

+ Are the eigenstates of the uniform system spatially extended?
+ How does the weak bond modify the spatial structure of the eigenstates?
+ Can the spectrum change only slightly while the eigenvectors change in a more visible way?

This optional exercise illustrates an important principle in condensed matter physics:

$ boxed "The spectrum and the eigenstates contain different physical information." $
#line(length: 100%, stroke: gray)

==== Main lesson — Problem 4 <main-lesson-problem-4>

This problem introduces an important distinction between *symmetry* and *thermodynamic importance*.

Changing a single bond breaks translational symmetry exactly. If $T$ is the translation operator, then for the defect system,

$ [ T, H ] eq.not 0. $
Therefore momentum $k$ is no longer an exact quantum number.

However, only one bond out of approximately $N$ bonds has been modified. Its relative contribution to many global quantities therefore scales as

$ frac(1, N) arrow.r 0 $
as $N arrow.r infinity$.

Thus both statements can simultaneously be true:

$ boxed "translation symmetry is broken exactly" $
while

$ boxed "the effect of the defect on some bulk spectral quantities becomes small as "N arrow.r infinity $
This distinction is important throughout condensed matter physics:

#quote(block: true)[A perturbation can remain locally important and symmetry-breaking while becoming thermodynamically negligible for certain global observables.]This problem also introduces the first step toward disorder physics:

$ "perfect lattice"arrow.r "single defect"arrow.r "scattering". $
A single defect is not yet Anderson localization. Anderson localization involves disorder distributed throughout the system and repeated coherent scattering. However, this problem prepares the conceptual language needed to understand that physics later.

#line(length: 100%, stroke: gray)

==== Main lesson — Optional extension <main-lesson-optional-extension>

The purpose of this exercise is to recognize that knowing the energy spectrum does not completely characterize a quantum system.

Eigenvalues tell us what energies are available:

$ boxed "eigenvalues"longrightarrow "energies" $
while eigenvectors tell us what the corresponding quantum states look like:

$ boxed "eigenvectors"longrightarrow "spatial structure of quantum states" $
For the clean system, translational symmetry produces extended plane-wave eigenstates.

A local defect mixes momentum states and modifies their spatial structure.

Therefore, two Hamiltonians may have rather similar energy spectra while their eigenstates can have noticeably different spatial structures.

This distinction becomes essential when studying localization, topology, response functions, and quantum dynamics.

#line(length: 100%, stroke: gray)

=== Problem 5 — Second quantization and band structure <problem-5-second-quantization-and-band-structure>

==== Fourier transformation in second quantization <fourier-transformation-in-second-quantization>

For a periodic chain with (N) lattice sites, define the momentum-space annihilation and creation operators by

$ a_k = frac(1, sqrt(N)) sum_(j = 1)^N e^(-i k j) a_j, $
and

$ a_k^dagger = frac(1, sqrt(N)) sum_(j = 1)^N e^(i k j) a_j^dagger. $
The inverse transformation is

$ a_j = frac(1, sqrt(N)) sum_k e^(i k j) a_k, $
and

$ a_j^dagger = frac(1, sqrt(N)) sum_k e^(-i k j) a_k^dagger. $
For periodic boundary conditions, the allowed momenta are

$ k = frac(2 pi n, N), wide n = 0, 1, dots.h, N -1. $
The tight-binding model, originally in the first quantization form, in the Problem 1 can be expressed in the second quantization form

$ H = -t sum_(j = 1)^N (a_j^dagger a_(j + 1) + a_(j + 1)^dagger a_j) $
Using these definitions, show that the secon quantized Hamiltonian can be written as

$ H = sum_k epsilon_k a_k^dagger a_k, $
with

$ epsilon_k = -2 t cos k. $
Here, the operator $a_j^dagger$ creates a particle localized at lattice site $j$, while $a_k^dagger$ creates a particle in the momentum eigenstate $k$.

The same Fourier transformation can be used for both bosons and fermions. The difference between the two cases enters through their operator algebra:

for bosons,

$ [ b_i, b_j^dagger ] = delta_(i j), $
while for fermions,

$ {c_i, c_j^dagger} = delta_(i j). $
The purpose of this problem is to understand when this difference in algebra begins to affect the physical many-particle states.

==== When Do Bosons and Fermions Become Different? <when-do-bosons-and-fermions-become-different>

In this problem, we will compare bosons and fermions and ask when quantum statistics actually begins to matter.

#line(length: 100%, stroke: gray)

==== (a) One particle <id-a-one-particle>

First consider the case

$ N_(upright(p a r t i c l e)) = 1. $
A general one-particle state can be written as

$ sum_(j = 1)^N psi_j a_j^dagger | 0 angle.r. $
===== Questions

+ Does this expression depend on whether $a_j^dagger$ is a bosonic or fermionic creation operator?
+ Show that the momentum eigenstates can be written as

$ | k angle.r = a_k^dagger | 0 angle.r. $
#set enum(start: 3)
+ Show that
#set enum(start: 1)

$ H | k angle.r = epsilon_k | k angle.r, $
with

$ epsilon_k = -2 t cos k. $
#set enum(start: 4)
+ Based on this result, does bosonic or fermionic statistics make any difference when there is only one particle?
+ Explain physically why exchange statistics is not yet visible in the one-particle problem.
#set enum(start: 1)

The main question to think about is:

$ boxed "When does the distinction between bosons and fermions actually begin to matter ?"
 $
#line(length: 100%, stroke: gray)

==== (b) Half filling with fermions <id-b-half-filling-with-fermions>

Now consider

$ frac(N, 2) $
spinless fermions.

Let the corresponding creation and annihilation operators be denoted by

$ c_k^dagger, wide c_k. $
For fermions,

$ (c_k^dagger)^2 = 0, $
so each momentum mode can contain at most one fermion.

Equivalently,

$ n_k = c_k^dagger c_k $
can take only the values

$ n_k = 0, 1. $
===== Questions

+ Using the single-particle dispersion

$ epsilon_k = -2 t cos k, $
which momentum states should be occupied in the many-body ground state?

#set enum(start: 2)
+ Write the fermionic many-body ground state in the form
#set enum(start: 1)

$ product_(k in upright(o c c u p i e d)) c_k^dagger | 0 angle.r. $
#set enum(start: 3)
+ Why can the fermions not all occupy the lowest-energy momentum state?
+ What is meant by the statement that the fermions "fill a Fermi sea"?
+ As $N$ becomes large, what happens to the spacing between the occupied and unoccupied levels near the highest occupied state?
+ How is the structure of the many-body ground state related to the Pauli exclusion principle?
#set enum(start: 1)

#line(length: 100%, stroke: gray)

==== (c) Half filling with bosons <id-c-half-filling-with-bosons>

Now consider instead

$ frac(N, 2) $
noninteracting bosons.

Let the corresponding creation and annihilation operators be denoted by

$ b_k^dagger, wide b_k. $
For bosons,

$ n_k = b_k^dagger b_k $
can take the values

$ n_k = 0, 1, 2, dots.h $
with no restriction to a single particle per momentum mode.

For $t > 0$, the lowest single-particle energy occurs at

$ k = 0, $
where

$ epsilon_(k = 0) = -2 t. $
===== Questions

+ Which momentum state should the bosons occupy in the many-body ground state?
+ Write the normalized many-body ground state.
+ How many momentum modes are occupied in the bosonic ground state?
+ Why are the bosons allowed to occupy the same momentum state?
+ Compare this ground state with the fermionic ground state from part (b).

#line(length: 100%, stroke: gray)

==== (d) Compare bosons and fermions <id-d-compare-bosons-and-fermions>

The single-particle Hamiltonian is the same in both cases:

$ sum_k epsilon_k a_k^dagger a_k, $
with the same single-particle dispersion

$ epsilon_k = -2 t cos k. $
However, the many-body ground states are very different.

===== Questions

+ Why is the one-particle problem identical for bosons and fermions, while the many-particle problem is not?
+ Complete the following conceptual statement:

$ boxed "The Hamiltonian determines "underline(#h(3cm)), wide "while quantum statistics determines "underline(#h(3cm)). $
#set enum(start: 3)
+ Explain why the same single-particle energy levels can lead to qualitatively different many-body physics.
+ Which ingredient is responsible for the difference between
#set enum(start: 1)

$ | Psi_F angle.r $
and

$ | Psi_B angle.r ? $
#line(length: 100%, stroke: gray)

==== Main lesson — Problem 5 <main-lesson-problem-5>

This problem introduces the conceptual change from *single-particle quantum mechanics* to *many-particle quantum mechanics*.

The Fourier transformation is the same for bosons and fermions, and the one-particle dispersion is also the same:

$ epsilon_k = -2 t cos k. $
For one particle,

$ N_(upright(p a r t i c l e)) = 1, $
there is no exchange between identical particles and no competition for occupation of the same orbital.

Therefore bosonic and fermionic statistics do not change the one-particle spectrum.

The distinction becomes physically important when more than one identical particle is present.

For fermions,

$ n_k = 0, 1, $
because of the Pauli exclusion principle.

For bosons,

$ n_k = 0, 1, 2, dots.h, $
so many particles may occupy the same single-particle state.

Thus the same set of single-particle orbitals can generate very different many-particle ground states:

$ boxed "same single -particle Hamiltonian"+ "different occupation rules"arrow.r.double "different many -body physics" $
The central conceptual distinction is

$ boxed "the Hamiltonian determines the available single -particle states and their energies" $
while

$ boxed "quantum statistics determines how identical particles are allowed to occupy those states" $
Second quantization makes this distinction particularly transparent because occupation numbers become the natural language of the many-particle problem.

#line(length: 100%, stroke: gray)

=== Overall lesson of Homework 1 <overall-lesson-of-homework-1>

The five problems form a sequence of increasingly physical descriptions of the same simple system:

$ boxed "operator"arrow.r "matrix"arrow.r "symmetry"arrow.r "spectrum"arrow.r "perturbation"arrow.r "many -particle occupation" $
The deeper lesson is that condensed matter theory is not primarily about diagonalizing increasingly large matrices.

Instead, we repeatedly ask:

+ *What representation makes the physics transparent?*
+ *What symmetry can simplify the problem?*
+ *What changes as the system becomes large?*
+ *Which microscopic perturbations matter for bulk physics?*
+ *How does many-particle statistics change the physical state?*

These questions will recur throughout the course.