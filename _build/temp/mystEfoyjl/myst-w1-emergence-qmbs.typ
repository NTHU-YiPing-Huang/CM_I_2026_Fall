/* Written by MyST v1.10.1 */

#import "myst-imports.typ": *

== Week 1: Introduction and Emergence

Reference: #cite(<laughlin1999nobel>, form: "prose")

==== 1. What is emergence? <id-1-what-is-emergence>

Condensed matter physics is fundamentally concerned with systems containing a very large number of interacting degrees of freedom.

A central question is:

#quote(block: true)[How can simple microscopic components give rise to collective behavior that is qualitatively different from the behavior of the individual components?]A useful working definition is:

$ boxed "Emergence : collective behavior that cannot be understood from individual components alone" $
The important point is not simply that a many-body system contains many particles. The important point is that increasing the number of degrees of freedom can change the qualitative structure of the problem.

A single atom has discrete energy levels. A macroscopic collection of atoms can form a metal with arbitrarily low-energy excitations.

A single random variable may have almost any probability distribution. The sum of a large number of independent random variables is described by an approximately universal Gaussian distribution.

These are two simple examples of a recurring theme:

$ boxed "Many"eq.not "simply a larger version of one." $
Instead, the large-$N$ limit can generate new structures, new effective laws, and new universal behavior.

#line(length: 100%, stroke: gray)

=== 2. Simplest nontrivial example I: From an atom to a metal <id-2-simplest-nontrivial-example-i-from-an-atom-to-a-metal>

==== 2.1 A single atom <id-2-1-a-single-atom>

Consider first an isolated atom.

The electronic Hamiltonian has a discrete spectrum,

$ H_(upright(a t o m)) | n angle.r = E_n | n angle.r. $
The separation between neighboring atomic orbitals is set by some microscopic energy scale,

$ Delta_(upright(a t o m)) tilde E_(n + 1) -E_n. $
For a finite atom, this energy scale remains finite.

Schematically,

$ E_1, wide E_2, wide E_3, wide dots.h.c $
are discrete levels.

Suppose, for simplicity, that we focus on one particular atomic orbital with energy $E_0$.

For one atom, there is one such state.

#line(length: 100%, stroke: gray)

==== 2.2 Two atoms <id-2-2-two-atoms>

Now bring two identical atoms close together.

If the atoms were completely isolated, the corresponding atomic states would be degenerate:

$ | 1 angle.r, wide | 2 angle.r. $
Once electrons can tunnel between the two atoms, the simplest Hamiltonian is

$ H = E_0 (| 1 angle.r angle.l 1 | + | 2 angle.r angle.l 2 |) -t (| 1 angle.r angle.l 2 | + | 2 angle.r angle.l 1 |). $
The eigenstates are

$ | plus.minus angle.r = frac(1, sqrt(2)) (| 1 angle.r plus.minus | 2 angle.r), $
with energies

$ E_(plus.minus) = E_0 mp t. $
The original atomic level has split into two levels.

This is the simplest form of level hybridization.

#line(length: 100%, stroke: gray)

==== 2.3 $N$ atoms <id-2-3-n-atoms>

Now consider $N$ atoms.

Each atom contributes one state,

$ | 1 angle.r, " "| 2 angle.r, dots.h, | N angle.r. $
The simplest tight-binding Hamiltonian is

$ H = E_0 sum_i | i angle.r angle.l i | -t sum_(angle.l i j angle.r) (| i angle.r angle.l j | + "h. c."). $
Here, $angle.l i, j angle.r$ means $i, j$ are nearest neighboring sites.

The original atomic level now produces $N$ different eigenstates.

For a one-dimensional periodic chain,

$ E (k) = E_0 -2 t cos k. $
The allowed momenta are discrete,

$ k = frac(2 pi n, N), $
but there are $N$ of them.

The entire band has a width of order

$ W tilde 4 t, $
which remains a microscopic energy scale independent of $N$.

But $N$ states must fit inside this finite bandwidth.

Therefore the characteristic level spacing scales as

$ boxed delta E tilde frac(W, N). $
As

$ N arrow.r infinity, $
we obtain

$ boxed delta E arrow.r 0. $
A discrete atomic level therefore becomes an effectively continuous energy band.

This is our first example of emergence:

$ boxed "discrete atomic spectrum"longrightarrow "continuous band in the thermodynamic limit". $
The microscopic hopping scale $t$ remains finite.

What becomes small is the spacing between the collective eigenstates.

#line(length: 100%, stroke: gray)

=== 3. The thermodynamic limit changes qualitative physics <id-3-the-thermodynamic-limit-changes-qualitative-physics>

This example introduces an extremely important idea in condensed matter physics:

$ boxed N arrow.r infinity $
is not always a quantitatively larger version of finite $N$.

It can be qualitatively different.

For every finite system,

$ delta E > 0. $
But in the thermodynamic limit,

$ lim_(N arrow.r infinity) delta E = 0. $
This allows arbitrarily low-energy excitations.

That possibility does not exist for the isolated atom.

Thus the order of scales changes:

$ Delta_(upright(a t o m)) tilde O (1), $
while

$ delta E_(upright(s o l i d)) tilde frac(1, N). $
This is one reason why macroscopic matter can display behavior that cannot be inferred simply from an isolated microscopic component.

#line(length: 100%, stroke: gray)

=== 4. When does this produce a metal? <id-4-when-does-this-produce-a-metal>

We should make one important distinction.

A continuous band does not automatically imply metallic behavior.

Suppose the band is completely filled, and the next band is separated by a finite gap,

$ Delta_(upright(b a n d)) > 0. $
Then the system can still be insulating.

For a metal, the chemical potential lies inside a partially filled band.

Near the Fermi energy, there are occupied and unoccupied states whose energy separation becomes arbitrarily small:

$ Delta E tilde frac(1, N). $
Hence,

$ boxed Delta_(upright(e x c i t a t i o n)) arrow.r 0 wide (N arrow.r infinity). $
The metal therefore possesses low-energy excitations that an isolated atom does not possess.

This is an important lesson:

#quote(block: true)[The collective organization of microscopic states can create entirely new low-energy physics.]#line(length: 100%, stroke: gray)

=== 5. From single-particle states to the many-body Hilbert space <id-5-from-single-particle-states-to-the-many-body-hilbert-space>

There is an even stronger version of the same argument.

Suppose each microscopic degree of freedom has $d$ possible states.

For $N$ independent degrees of freedom, the total Hilbert-space dimension is

$ boxed dim cal(H) = d^N. $
The number of quantum states therefore grows exponentially:

$ d^N = e^(N ln d). $
At the same time, for a local Hamiltonian,

$ H = sum_i h_i, $
the total energy bandwidth usually grows only extensively,

$ W_(upright(M B)) tilde N. $
Very roughly, the average many-body level spacing is therefore

$ delta E_(upright(M B)) tilde frac(W_(upright(M B)), dim cal(H)). $
Hence

$ delta E_(upright(M B)) tilde frac(N, d^N). $
Up to polynomial factors,

$ boxed delta E_(upright(M B)) tilde e^(-s N), $
where $s$ is an entropy density.

This is a fundamental feature of quantum many-body systems:

$ boxed "Hilbert space grows exponentially, while physical energy scales grow only extensively." $
Consequently, the many-body spectrum becomes extraordinarily dense.

Notice that this is conceptually different from the single-particle band:

$ delta E_(upright(b a n d)) tilde frac(1, N), $
whereas

$ delta E_(upright(m a n y -b o d y)) tilde e^(-s N). $
The exponential growth of Hilbert space is one of the basic reasons why quantum many-body physics is simultaneously difficult and rich.

#line(length: 100%, stroke: gray)

=== 6. What did we learn from the atom-to-metal example? <id-6-what-did-we-learn-from-the-atom-to-metal-example>

The microscopic Hamiltonian contains ordinary atoms and ordinary hopping amplitudes.

Nothing singular happens to the microscopic interaction scale.

Nevertheless, simply increasing the number of components produces a qualitatively new structure:

$ boxed "finite microscopic energy scale"+ "many states"arrow.r.double "arbitrarily small collective energy scales" $
This gives us one meaning of emergence:

#quote(block: true)[A large number of degrees of freedom can generate new physical scales and new low-energy phenomena that are absent in the microscopic constituents.]#line(length: 100%, stroke: gray)

=== 7. Simplest nontrivial example II: Adding random numbers <id-7-simplest-nontrivial-example-ii-adding-random-numbers>

Our first example showed that increasing the number of components can produce new structures.

Our second example will show something almost opposite.

Sometimes increasing the number of components makes the system simpler.

Consider independent random variables

$ x_1, x_2, dots.h, x_N. $
Suppose each variable is drawn from some probability distribution $p (x)$.

The microscopic distribution can be almost arbitrary.

For example, $x_i$ might be:

- the result of throwing a die,
- +1 or -1 from a coin toss,
- uniformly distributed on an interval,
- drawn from some irregular probability distribution.

Define

$ S_N = sum_(i = 1)^N x_i. $
What can we say about $S_N$ when $N$ is very large?

#line(length: 100%, stroke: gray)

=== 8. Law of large numbers <id-8-law-of-large-numbers>

Assume

$ angle.l x_i angle.r = mu $
and

$ upright(V a r) (x_i) = sigma^2. $
Then

$ angle.l S_N angle.r = N mu. $
Because the variables are independent,

$ upright(V a r) (S_N) = N sigma^2. $
Therefore the standard deviation is

$ Delta S_N = sigma sqrt(N). $
The average value grows as

$ angle.l S_N angle.r tilde N, $
whereas the fluctuation grows only as

$ Delta S_N tilde sqrt(N). $
Consequently, the relative fluctuation is

$ frac(Delta S_N, angle.l S_N angle.r) tilde frac(1, sqrt(N)). $
Thus,

$ boxed frac(Delta S_N, angle.l S_N angle.r) arrow.r 0 wide (N arrow.r infinity). $
Equivalently,

$ boxed frac(S_N, N) arrow.r mu. $
This is the law of large numbers.

#line(length: 100%, stroke: gray)

=== 9. Why macroscopic quantities look deterministic <id-9-why-macroscopic-quantities-look-deterministic>

This simple result already explains an important aspect of thermodynamics.

Microscopic quantities fluctuate.

Macroscopic quantities contain enormous numbers of microscopic contributions.

Suppose

$ N tilde 10^(23). $
Then

$ frac(1, sqrt(N)) tilde 10^(-11. 5). $
Relative fluctuations are extraordinarily small.

Thus quantities such as pressure, density, magnetization, and energy can behave almost deterministically even though their microscopic constituents fluctuate constantly.

This is another emergent phenomenon:

$ boxed "microscopic randomness"longrightarrow "macroscopic reproducibility". $
#line(length: 100%, stroke: gray)

=== 10. Central limit theorem <id-10-central-limit-theorem>

The law of large numbers tells us where the distribution becomes concentrated.

The central limit theorem tells us something deeper:

#quote(block: true)[It tells us the shape of the fluctuations.]Define the normalized variable

$ z_N = frac(S_N -N mu, sigma sqrt(N)). $
Under very general conditions,

$ boxed z_N arrow.r cal(N) (0, 1) $
as

$ N arrow.r infinity. $
Here, $cal(N) (a, b)$ stands for normal distribution centered at $a$ with width $b$.

In other words,

$ P (z) arrow.r frac(1, sqrt(2 pi)) e^(-z^2 \/ 2). $
The remarkable part is that the original microscopic distribution $p (x)$ does not need to be Gaussian.

After adding many independent contributions, the resulting fluctuations become approximately Gaussian.

Therefore,

$ "many different microscopic distributions"thick longrightarrow thick "Gaussian distribution" $
at large $N$.

#line(length: 100%, stroke: gray)

=== 11. Emergence as universality <id-11-emergence-as-universality>

This gives us a second meaning of emergence.

Different microscopic systems can produce the same macroscopic behavior.

The details of $p (x)$ become irrelevant.

At large $N$, only a small amount of information survives:

$ mu, wide sigma^2. $
The infinitely many details contained in the original probability distribution become unimportant.

This phenomenon is called

$ boxed "universality". $
Thus the many-body limit can simultaneously involve an enormous number of microscopic degrees of freedom and a remarkably simple macroscopic description.

This is one of the deepest recurring ideas in condensed matter physics.

#line(length: 100%, stroke: gray)

=== 12. Two opposite consequences of having many degrees of freedom <id-12-two-opposite-consequences-of-having-many-degrees-of-freedom>

We can now compare our two simplest examples.

==== Example 1: Atom to metal <example-1-atom-to-metal>

Increasing $N$ produces more and more states,

$ 1 arrow.r N, $
and the characteristic spacing becomes small:

$ delta E tilde frac(1, N). $
In the many-body problem,

$ delta E_(upright(M B)) tilde e^(-s N). $
Thus:

$ boxed "many degrees of freedom create new low -energy structure". $
#line(length: 100%, stroke: gray)

==== Example 2: Central limit theorem <example-2-central-limit-theorem>

Increasing $N$ suppresses relative fluctuations,

$ frac(Delta S_N, S_N) tilde frac(1, sqrt(N)), $
and removes sensitivity to microscopic details.

Thus:

$ boxed "many degrees of freedom produce universal simplicity". $
#line(length: 100%, stroke: gray)

=== 13. More is different—but also sometimes simpler <id-13-more-is-different-but-also-sometimes-simpler>

These two examples capture two fundamental aspects of condensed matter physics.

===== New phenomena <new-phenomena>

A large system can possess properties that none of its individual components possess:

$ boxed "new collective degrees of freedom and new energy scales". $
===== Universality <universality>

A large system can become insensitive to most microscopic details:

$ boxed "different microscopic systems can obey the same macroscopic theory". $
Thus,

$ boxed "More is different." $
But equally importantly,

$ boxed "More can also be simpler (universal)." $
This apparent paradox is one of the reasons condensed matter physics is simultaneously universal but diversified.

If every microscopic detail remained equally important at macroscopic scales, understanding a system containing 10#super[23] particles would be hopeless and not universal.

Instead, large systems often organize themselves into descriptions involving only a small number of collective variables and effective laws.

#line(length: 100%, stroke: gray)

=== 14. Microscopic description versus effective description <id-14-microscopic-description-versus-effective-description>

A macroscopic piece of matter might microscopically contain

$ 10^(23) $
electrons and nuclei.

One could imagine writing a microscopic Hamiltonian

$ H = sum_i frac(bold(p)_i^2, 2 m) + sum_(i < j) V (bold(r)_i -bold(r)_j) + dots.h.c. $
But knowing this Hamiltonian does not automatically tell us what the appropriate description of the system is.

At low energy, the relevant objects may instead be

$ "phonons", wide "quasiparticles", wide "spins", wide "Cooper pairs", wide "domain walls", $
or other collective degrees of freedom.

Therefore an important problem in condensed matter theory is not merely

$ boxed "How do we solve the microscopic Hamiltonian ?" $
but rather

$ boxed "What are the correct degrees of freedom at the scale of interest ?" $
#line(length: 100%, stroke: gray)

=== 15. The central question of this course <id-15-the-central-question-of-this-course>

The examples above suggest a general strategy.

Given a many-body system, we will repeatedly ask:

+ What are the microscopic degrees of freedom?
+ What happens as the number of degrees of freedom becomes large?
+ Which microscopic details remain important?
+ Which microscopic details become irrelevant?
+ What new collective degrees of freedom appear?
+ What new energy or length scales emerge?
+ Is there a simpler effective description?

These questions are more fundamental than simply diagonalizing a Hamiltonian.

They form the conceptual foundation of condensed matter theory.

#line(length: 100%, stroke: gray)

=== 16. A useful hierarchy of descriptions <id-16-a-useful-hierarchy-of-descriptions>

One way to think about condensed matter theory is through a hierarchy:

$ boxed "microscopic constituents" $
$ Downarrow $
$ boxed "many -body organization" $
$ Downarrow $
$ boxed "collective degrees of freedom" $
$ Downarrow $
$ boxed "effective theory" $
$ Downarrow $
$ boxed "universal macroscopic behavior". $
Much of this course will consist of learning how to move between these levels.

#line(length: 100%, stroke: gray)

=== 17. Looking ahead <id-17-looking-ahead>

In the next lectures, we will begin developing the language needed to describe quantum many-body systems efficiently.

Instead of labeling every particle individually, we will introduce occupation-number states and creation and annihilation operators.

This leads naturally to *second quantization*.

The motivation should now be clear.

The problem is not simply that there are many particles.

The important point is that in many-body physics, the relevant description is often not based on tracking individual particles at all.

Instead, we want a language adapted to

$ boxed "collective states, occupations, and excitations". $
Second quantization will provide precisely such a language.

#line(length: 100%, stroke: gray)

$ boxed "The many -body limit can qualitatively change physics." $
Two simple examples demonstrate this.

===== Atom $arrow.r$ metal <atom-rightarrow-metal>

$ delta E tilde frac(1, N) $
for a single-particle band, while many-body level spacings can scale as

$ delta E_(upright(M B)) tilde e^(-s N). $
Large systems therefore naturally develop extremely small energy scales and new low-energy physics.

===== Central limit theorem <central-limit-theorem>

$ frac(Delta S_N, S_N) tilde frac(1, sqrt(N)), $
and the distribution of normalized fluctuations becomes universal:

$ P (z) arrow.r frac(1, sqrt(2 pi)) e^(-z^2 \/ 2). $
Large systems therefore also become simpler and less sensitive to microscopic details.

Together these examples reveal two central ideas:

$ boxed "Emergence" $
and

$ boxed "Universality". $
These will remain recurring themes throughout condensed matter physics.