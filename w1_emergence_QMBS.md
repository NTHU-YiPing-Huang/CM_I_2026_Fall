# Week 1: Introduction and Emergence

## 1. What is emergence?

Condensed matter physics is fundamentally concerned with systems containing a very large number of interacting degrees of freedom.

A central question is:

> How can simple microscopic components give rise to collective behavior that is qualitatively different from the behavior of the individual components?

A useful working definition is:

$$
\boxed{
\text{Emergence: collective behavior that cannot be understood from individual components alone}
}
$$

The important point is not simply that a many-body system contains many particles. The important point is that increasing the number of degrees of freedom can change the qualitative structure of the problem.

A single atom has discrete energy levels. A macroscopic collection of atoms can form a metal with arbitrarily low-energy excitations.

A single random variable may have almost any probability distribution. The sum of a large number of independent random variables is described by an approximately universal Gaussian distribution.

These are two simple examples of a recurring theme:

$$
\boxed{
\text{Many} \neq \text{simply a larger version of one.}
}
$$

Instead, the large-$N$ limit can generate new structures, new effective laws, and new universal behavior.

---

# 2. Simplest nontrivial example I: From an atom to a metal

## 2.1 A single atom

Consider first an isolated atom.

The electronic Hamiltonian has a discrete spectrum,

$$
H_{\mathrm{atom}} |n\rangle = E_n |n\rangle.
$$

The separation between neighboring atomic orbitals is set by some microscopic energy scale,

$$
\Delta_{\mathrm{atom}}
\sim
E_{n+1}-E_n.
$$

For a finite atom, this energy scale remains finite.

Schematically,

$$
E_1,\qquad E_2,\qquad E_3,\qquad \cdots
$$

are discrete levels.

Suppose, for simplicity, that we focus on one particular atomic orbital with energy $E_0$.

For one atom, there is one such state.

---

## 2.2 Two atoms

Now bring two identical atoms close together.

If the atoms were completely isolated, the corresponding atomic states would be degenerate:

$$
|1\rangle,\qquad |2\rangle.
$$

Once electrons can tunnel between the two atoms, the simplest Hamiltonian is

$$
H=
E_0
\left(
|1\rangle\langle 1|
+
|2\rangle\langle 2|
\right)
-
t
\left(
|1\rangle\langle 2|
+
|2\rangle\langle 1|
\right).
$$

The eigenstates are

$$
|\pm\rangle
=
\frac{1}{\sqrt 2}
\left(
|1\rangle\pm |2\rangle
\right),
$$

with energies

$$
E_{\pm}=E_0\mp t.
$$

The original atomic level has split into two levels.

This is the simplest form of level hybridization.

---

## 2.3 $N$ atoms

Now consider $N$ atoms.

Each atom contributes one state,

$$
|1\rangle,\ |2\rangle,\ldots,|N\rangle.
$$

The simplest tight-binding Hamiltonian is

$$
H
=
E_0\sum_i |i\rangle\langle i|
-
t
\sum_{\langle ij\rangle}
\left(
|i\rangle\langle j|+\text{h.c.}
\right).
$$

Here, $\langle i,j\rangle$ means $i,j$ are nearest neighboring sites.

The original atomic level now produces $N$ different eigenstates.

For a one-dimensional periodic chain,

$$
E(k)=E_0-2t\cos k.
$$

The allowed momenta are discrete,

$$
k=\frac{2\pi n}{N},
$$

but there are $N$ of them.

The entire band has a width of order

$$
W\sim 4t,
$$

which remains a microscopic energy scale independent of $N$.

But $N$ states must fit inside this finite bandwidth.

Therefore the characteristic level spacing scales as

$$
\boxed{
\delta E\sim \frac{W}{N}.
}
$$

As

$$
N\rightarrow\infty,
$$

we obtain

$$
\boxed{
\delta E\rightarrow 0.
}
$$

A discrete atomic level therefore becomes an effectively continuous energy band.

This is our first example of emergence:

$$
\boxed{
\text{discrete atomic spectrum}
\longrightarrow
\text{continuous band in the thermodynamic limit}.
}
$$

The microscopic hopping scale $t$ remains finite.

What becomes small is the spacing between the collective eigenstates.

---

# 3. The thermodynamic limit changes qualitative physics

This example introduces an extremely important idea in condensed matter physics:

$$
\boxed{
N\rightarrow\infty
}
$$

is not always a quantitatively larger version of finite $N$.

It can be qualitatively different.

For every finite system,

$$
\delta E>0.
$$

But in the thermodynamic limit,

$$
\lim_{N\rightarrow\infty}\delta E=0.
$$

This allows arbitrarily low-energy excitations.

That possibility does not exist for the isolated atom.

Thus the order of scales changes:

$$
\Delta_{\mathrm{atom}}\sim O(1),
$$

while

$$
\delta E_{\mathrm{solid}}\sim \frac{1}{N}.
$$

This is one reason why macroscopic matter can display behavior that cannot be inferred simply from an isolated microscopic component.

---

# 4. When does this produce a metal?

We should make one important distinction.

A continuous band does not automatically imply metallic behavior.

Suppose the band is completely filled, and the next band is separated by a finite gap,

$$
\Delta_{\mathrm{band}}>0.
$$

Then the system can still be insulating.

For a metal, the chemical potential lies inside a partially filled band.

Near the Fermi energy, there are occupied and unoccupied states whose energy separation becomes arbitrarily small:

$$
\Delta E\sim \frac{1}{N}.
$$

Hence,

$$
\boxed{
\Delta_{\mathrm{excitation}}
\rightarrow0
\qquad
(N\rightarrow\infty).
}
$$

The metal therefore possesses low-energy excitations that an isolated atom does not possess.

This is an important lesson:

> The collective organization of microscopic states can create entirely new low-energy physics.

---

# 5. From single-particle states to the many-body Hilbert space

There is an even stronger version of the same argument.

Suppose each microscopic degree of freedom has $d$ possible states.

For $N$ independent degrees of freedom, the total Hilbert-space dimension is

$$
\boxed{
\dim\mathcal H=d^N.
}
$$

The number of quantum states therefore grows exponentially:

$$
d^N=e^{N\ln d}.
$$

At the same time, for a local Hamiltonian,

$$
H=\sum_i h_i,
$$

the total energy bandwidth usually grows only extensively,

$$
W_{\mathrm{MB}}\sim N.
$$

Very roughly, the average many-body level spacing is therefore

$$
\delta E_{\mathrm{MB}}
\sim
\frac{W_{\mathrm{MB}}}{\dim\mathcal H}.
$$

Hence

$$
\delta E_{\mathrm{MB}}
\sim
\frac{N}{d^N}.
$$

Up to polynomial factors,

$$
\boxed{
\delta E_{\mathrm{MB}}\sim e^{-sN},
}
$$

where $s$ is an entropy density.

This is a fundamental feature of quantum many-body systems:

$$
\boxed{
\text{Hilbert space grows exponentially, while physical energy scales grow only extensively.}
}
$$

Consequently, the many-body spectrum becomes extraordinarily dense.

Notice that this is conceptually different from the single-particle band:

$$
\delta E_{\mathrm{band}}\sim \frac{1}{N},
$$

whereas

$$
\delta E_{\mathrm{many-body}}\sim e^{-sN}.
$$

The exponential growth of Hilbert space is one of the basic reasons why quantum many-body physics is simultaneously difficult and rich.

---

# 6. What did we learn from the atom-to-metal example?

The microscopic Hamiltonian contains ordinary atoms and ordinary hopping amplitudes.

Nothing singular happens to the microscopic interaction scale.

Nevertheless, simply increasing the number of components produces a qualitatively new structure:

$$
\boxed{
\text{finite microscopic energy scale}
+
\text{many states}
\Rightarrow
\text{arbitrarily small collective energy scales}
}
$$

This gives us one meaning of emergence:

> A large number of degrees of freedom can generate new physical scales and new low-energy phenomena that are absent in the microscopic constituents.

---

# 7. Simplest nontrivial example II: Adding random numbers

Our first example showed that increasing the number of components can produce new structures.

Our second example will show something almost opposite.

Sometimes increasing the number of components makes the system simpler.

Consider independent random variables

$$
x_1,x_2,\ldots,x_N.
$$

Suppose each variable is drawn from some probability distribution $p(x)$.

The microscopic distribution can be almost arbitrary.

For example, $x_i$ might be:

- the result of throwing a die,
- $+1$ or $-1$ from a coin toss,
- uniformly distributed on an interval,
- drawn from some irregular probability distribution.

Define

$$
S_N=\sum_{i=1}^N x_i.
$$

What can we say about $S_N$ when $N$ is very large?

---

# 8. Law of large numbers

Assume

$$
\langle x_i\rangle=\mu
$$

and

$$
\mathrm{Var}(x_i)=\sigma^2.
$$

Then

$$
\langle S_N\rangle=N\mu.
$$

Because the variables are independent,

$$
\mathrm{Var}(S_N)=N\sigma^2.
$$

Therefore the standard deviation is

$$
\Delta S_N=\sigma\sqrt N.
$$

The average value grows as

$$
\langle S_N\rangle\sim N,
$$

whereas the fluctuation grows only as

$$
\Delta S_N\sim \sqrt N.
$$

Consequently, the relative fluctuation is

$$
\frac{\Delta S_N}{\langle S_N\rangle}
\sim
\frac{1}{\sqrt N}.
$$

Thus,

$$
\boxed{
\frac{\Delta S_N}{\langle S_N\rangle}
\rightarrow0
\qquad
(N\rightarrow\infty).
}
$$

Equivalently,

$$
\boxed{
\frac{S_N}{N}\rightarrow\mu.
}
$$

This is the law of large numbers.

---

# 9. Why macroscopic quantities look deterministic

This simple result already explains an important aspect of thermodynamics.

Microscopic quantities fluctuate.

Macroscopic quantities contain enormous numbers of microscopic contributions.

Suppose

$$
N\sim10^{23}.
$$

Then

$$
\frac{1}{\sqrt N}
\sim10^{-11.5}.
$$

Relative fluctuations are extraordinarily small.

Thus quantities such as pressure, density, magnetization, and energy can behave almost deterministically even though their microscopic constituents fluctuate constantly.

This is another emergent phenomenon:

$$
\boxed{
\text{microscopic randomness}
\longrightarrow
\text{macroscopic reproducibility}.
}
$$

---

# 10. Central limit theorem

The law of large numbers tells us where the distribution becomes concentrated.

The central limit theorem tells us something deeper:

> It tells us the shape of the fluctuations.

Define the normalized variable

$$
z_N
=
\frac{S_N-N\mu}{\sigma\sqrt N}.
$$

Under very general conditions,

$$
\boxed{
z_N
\rightarrow
\mathcal N(0,1)
}
$$

as

$$
N\rightarrow\infty.
$$

Here, $\mathcal N(a,b)$ stands for normal distribution centered at $a$ with width $b$.

In other words,

$$
P(z)
\rightarrow
\frac{1}{\sqrt{2\pi}}
e^{-z^2/2}.
$$

The remarkable part is that the original microscopic distribution $p(x)$ does not need to be Gaussian.

After adding many independent contributions, the resulting fluctuations become approximately Gaussian.

Therefore,

$$
\text{many different microscopic distributions}
\;\longrightarrow\;
\text{Gaussian distribution}
$$

at large $N$.

---

# 11. Emergence as universality

This gives us a second meaning of emergence.

Different microscopic systems can produce the same macroscopic behavior.

The details of $p(x)$ become irrelevant.

At large $N$, only a small amount of information survives:

$$
\mu,
\qquad
\sigma^2.
$$

The infinitely many details contained in the original probability distribution become unimportant.

This phenomenon is called

$$
\boxed{
\text{universality}.
}
$$

Thus the many-body limit can simultaneously involve an enormous number of microscopic degrees of freedom and a remarkably simple macroscopic description.

This is one of the deepest recurring ideas in condensed matter physics.

---

# 12. Two opposite consequences of having many degrees of freedom

We can now compare our two simplest examples.

## Example 1: Atom to metal

Increasing $N$ produces more and more states,

$$
1\rightarrow N,
$$

and the characteristic spacing becomes small:

$$
\delta E\sim\frac{1}{N}.
$$

In the many-body problem,

$$
\delta E_{\mathrm{MB}}\sim e^{-sN}.
$$

Thus:

$$
\boxed{
\text{many degrees of freedom create new low-energy structure}.
}
$$

---

## Example 2: Central limit theorem

Increasing $N$ suppresses relative fluctuations,

$$
\frac{\Delta S_N}{S_N}
\sim\frac{1}{\sqrt N},
$$

and removes sensitivity to microscopic details.

Thus:

$$
\boxed{
\text{many degrees of freedom produce universal simplicity}.
}
$$

---

# 13. More is different—but also sometimes simpler

These two examples capture two fundamental aspects of condensed matter physics.

### New phenomena

A large system can possess properties that none of its individual components possess:

$$
\boxed{
\text{new collective degrees of freedom and new energy scales}.
}
$$

### Universality

A large system can become insensitive to most microscopic details:

$$
\boxed{
\text{different microscopic systems can obey the same macroscopic theory}.
}
$$

Thus,

$$
\boxed{
\text{More is different.}
}
$$

But equally importantly,

$$
\boxed{
\text{More can also be simpler (universal).}
}
$$

This apparent paradox is one of the reasons condensed matter physics is simultaneously universal but diversified.

If every microscopic detail remained equally important at macroscopic scales, understanding a system containing $10^{23}$ particles would be hopeless and not universal.

Instead, large systems often organize themselves into descriptions involving only a small number of collective variables and effective laws.

---

# 14. Microscopic description versus effective description

A macroscopic piece of matter might microscopically contain

$$
10^{23}
$$

electrons and nuclei.

One could imagine writing a microscopic Hamiltonian

$$
H
=
\sum_i
\frac{\mathbf p_i^2}{2m}
+
\sum_{i<j}
V(\mathbf r_i-\mathbf r_j)
+\cdots.
$$

But knowing this Hamiltonian does not automatically tell us what the appropriate description of the system is.

At low energy, the relevant objects may instead be

$$
\text{phonons},
\qquad
\text{quasiparticles},
\qquad
\text{spins},
\qquad
\text{Cooper pairs},
\qquad
\text{domain walls},
$$

or other collective degrees of freedom.

Therefore an important problem in condensed matter theory is not merely

$$
\boxed{
\text{How do we solve the microscopic Hamiltonian?}
}
$$

but rather

$$
\boxed{
\text{What are the correct degrees of freedom at the scale of interest?}
}
$$

---

# 15. The central question of this course

The examples above suggest a general strategy.

Given a many-body system, we will repeatedly ask:

1. What are the microscopic degrees of freedom?
2. What happens as the number of degrees of freedom becomes large?
3. Which microscopic details remain important?
4. Which microscopic details become irrelevant?
5. What new collective degrees of freedom appear?
6. What new energy or length scales emerge?
7. Is there a simpler effective description?

These questions are more fundamental than simply diagonalizing a Hamiltonian.

They form the conceptual foundation of condensed matter theory.

---

# 16. A useful hierarchy of descriptions

One way to think about condensed matter theory is through a hierarchy:

$$
\boxed{
\text{microscopic constituents}
}
$$

$$
\Downarrow
$$

$$
\boxed{
\text{many-body organization}
}
$$

$$
\Downarrow
$$

$$
\boxed{
\text{collective degrees of freedom}
}
$$

$$
\Downarrow
$$

$$
\boxed{
\text{effective theory}
}
$$

$$
\Downarrow
$$

$$
\boxed{
\text{universal macroscopic behavior}.
}
$$

Much of this course will consist of learning how to move between these levels.

---

# 17. Looking ahead

In the next lectures, we will begin developing the language needed to describe quantum many-body systems efficiently.

Instead of labeling every particle individually, we will introduce occupation-number states and creation and annihilation operators.

This leads naturally to **second quantization**.

The motivation should now be clear.

The problem is not simply that there are many particles.

The important point is that in many-body physics, the relevant description is often not based on tracking individual particles at all.

Instead, we want a language adapted to

$$
\boxed{
\text{collective states, occupations, and excitations}.
}
$$

Second quantization will provide precisely such a language.

---

# Summary

The central message of this lecture is:

$$
\boxed{
\text{The many-body limit can qualitatively change physics.}
}
$$

Two simple examples demonstrate this.

### Atom $\rightarrow$ metal

$$
\delta E\sim\frac{1}{N}
$$

for a single-particle band, while many-body level spacings can scale as

$$
\delta E_{\mathrm{MB}}\sim e^{-sN}.
$$

Large systems therefore naturally develop extremely small energy scales and new low-energy physics.

### Central limit theorem

$$
\frac{\Delta S_N}{S_N}
\sim\frac{1}{\sqrt N},
$$

and the distribution of normalized fluctuations becomes universal:

$$
P(z)\rightarrow
\frac{1}{\sqrt{2\pi}}e^{-z^2/2}.
$$

Large systems therefore also become simpler and less sensitive to microscopic details.

Together these examples reveal two central ideas:

$$
\boxed{
\text{Emergence}
}
$$

and

$$
\boxed{
\text{Universality}.
}
$$

These will remain recurring themes throughout condensed matter physics.
