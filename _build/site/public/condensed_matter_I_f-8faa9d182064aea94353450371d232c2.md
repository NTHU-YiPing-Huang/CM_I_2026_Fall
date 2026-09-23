# Condensed Matter I — Final Presentation Topics

## About the Final Presentation

Condensed matter physics asks a deceptively simple question:

> **How do simple microscopic quantum rules give rise to the enormous variety of phenomena observed in matter?**

A solid contains an enormous number of interacting particles. In principle, its quantum state lives in a Hilbert space whose dimension grows exponentially with system size, making a direct description of all microscopic degrees of freedom practically impossible. Nevertheless, matter is not arbitrary. At low energies and long distances, remarkably simple organizing principles emerge: electrons form bands and Fermi surfaces, interacting particles behave as quasiparticles, broken symmetries generate collective modes, and completely new structures such as topology, fractionalization, and emergent gauge fields can appear.

The purpose of this course is therefore not simply to introduce a collection of models and computational techniques. Instead, we develop a sequence of ways to **organize quantum many-body problems**. Second quantization provides a language for many-particle states and excitations. Band theory organizes the motion of electrons in crystals. Green's functions and response theory tell us how interacting systems propagate and respond to experiments. Symmetry breaking and renormalization reveal why collective behavior can become largely independent of microscopic details. Entanglement, topology, and thermalization then extend these ideas to quantum phases and dynamical phenomena that cannot be understood within a simple independent-particle picture.

The final presentation is an opportunity to explore one concrete example of these broader ideas.

Each topic below begins with a physical phenomenon or conceptual question rather than a mathematical formalism. Your goal is to identify the **simplest model and the minimum set of theoretical ideas needed to explain the phenomenon**, and then use them to construct a coherent physical argument.

For each topic, four pieces of guidance are provided:

* **Key ideas** indicate the central physical message that your presentation should communicate.
* **Keywords** provide a starting point for textbooks, lecture notes, literature searches, and other resources. They are not intended to define the structure of your presentation.
* **If You Really Understand This...** is a conceptual question designed to test whether you can *reason with* the ideas you have learned, rather than simply reproduce definitions or formulas.
* **Hint** points toward a useful physical principle when you are stuck. **The hint is not the answer.** You should still construct the argument yourself.

The conceptual question is not necessarily a question whose answer you will find directly in a textbook or in your presentation references. There may also not be a unique perfect answer. What matters is whether you can identify the relevant physical principles and construct a coherent argument.

After preparing your presentation, try answering the question **without your slides, notes, the internet, or AI**. If you can explain your reasoning to another physics student, rather than merely state a keyword or definition, you have probably understood the central physics of your topic.

The goal is not to cover everything known about your topic. A successful presentation should instead make one important piece of condensed matter physics understandable:

> **What is the phenomenon, what is the simplest theoretical description that captures it, and what new physical idea do we learn from it?**

---

# Final Presentation Topics

## 1. Graphene and Dirac Fermions

### Key ideas

A remarkably simple tight-binding model on the honeycomb lattice produces a low-energy theory that looks very different from the microscopic lattice model. The two-sublattice structure leads to band touching at isolated points in momentum space, and excitations near these points behave approximately as massless Dirac fermions.

Graphene therefore provides a clean example of **emergent low-energy degrees of freedom arising from lattice geometry**.

### Keywords

`graphene`, `honeycomb lattice`, `tight-binding model`, `Dirac cone`, `Dirac point`, `pseudospin`, `Berry phase`

### If You Really Understand This...

> **Suppose you continuously distort the honeycomb lattice. Can the two Dirac points simply disappear? If not, what has to happen before a gap can open?**

### Hint

Think about **where the Dirac points live in momentum space**, what protects the crossing, and whether they can move.

---

## 2. Fermi Surfaces and Metals

### Key ideas

A many-electron ground state fills single-particle states up to the Fermi energy. At low temperature, however, most electrons in the Fermi sea cannot participate in low-energy processes because of the Pauli principle.

The relevant physics becomes concentrated near the Fermi surface. This reduction of an enormous many-body problem to a thin region in momentum space is one of the central organizing principles of metallic systems.

### Keywords

`Fermi surface`, `Fermi energy`, `Fermi sea`, `density of states`, `Pauli principle`, `low-energy excitations`

### If You Really Understand This...

> **A metal contains roughly $10^{23}$ electrons. Why can much of its low-temperature physics nevertheless be described using only a tiny fraction of them? What determines how tiny that fraction is?**

### Hint

Start with the **Pauli principle**. Which electrons can actually change their occupation when the available thermal energy is only of order $k_B T$?

---

## 3. Van Hove Singularities

### Key ideas

The density of available quantum states depends not only on how many momentum states exist, but also on the geometry of the dispersion relation. Special points such as saddle points can produce a strongly enhanced or even singular density of states.

This enhancement can amplify interaction effects and make otherwise weak instabilities important.

### Keywords

`density of states`, `van Hove singularity`, `saddle point`, `tight-binding dispersion`, `Fermi surface`, `Lifshitz transition`

### If You Really Understand This...

> **Suppose interactions are weak everywhere in a band. Why might tuning the Fermi energy toward a van Hove singularity nevertheless completely change the phase of the system?**

### Hint

Ask what happens when a **small interaction acts on a very large number of low-energy states**.

---

## 4. Berry Phase and Electronic Polarization

### Key ideas

A Bloch state contains information beyond its energy. Its evolution through parameter or momentum space can accumulate a geometric phase. In crystalline systems, this geometric structure provides the modern description of quantities such as electric polarization.

This is an important lesson of quantum mechanics: **knowing the energy spectrum does not necessarily mean knowing all of the physics**.

### Keywords

`Berry phase`, `Berry connection`, `Zak phase`, `Bloch states`, `Wannier functions`, `modern theory of polarization`

### If You Really Understand This...

> **Two Bloch Hamiltonians have exactly the same energy bands $E_n(k)$. Must they describe the same physics? Construct an argument for why the answer can be no.**

### Hint

Energy eigenvalues are only part of an eigenvalue problem. What information is contained in the **eigenvectors**?

---

## 5. The Integer Quantum Hall Effect

### Key ideas

The integer quantum Hall effect provides a striking example in which a macroscopic transport coefficient is determined by a topological invariant. The Hall conductance becomes quantized and remains remarkably robust against microscopic imperfections.

It demonstrates how **global properties of quantum states can control experimentally measurable responses**.

### Keywords

`integer quantum Hall effect`, `Landau levels`, `Chern number`, `Berry curvature`, `Hall conductivity`, `topological invariant`

### If You Really Understand This...

> **Why can adding disorder make individual electronic wave functions extremely complicated while leaving the Hall conductance exactly quantized? What does this tell you about what is actually being measured?**

### Hint

Distinguish a quantity determined by **local details of wave functions** from one determined by a **global invariant**. When can an integer change continuously?

---

## 6. Topological Insulators and Edge States

### Key ideas

Two systems can both be insulating in the bulk and preserve the same conventional symmetries, yet still represent distinct phases. If their topological invariants differ, they cannot be smoothly connected without closing the bulk gap or changing the relevant symmetry.

The interface between them therefore reveals one of the most important principles of topological matter: **bulk-boundary correspondence**.

### Keywords

`topological insulator`, `bulk-boundary correspondence`, `edge state`, `band inversion`, `topological invariant`, `gap closing`

### If You Really Understand This...

> **Suppose you gradually deform a topological insulator into an ordinary insulator while preserving the relevant symmetry. At what point must the description fail to remain insulating, and why?**

### Hint

If two phases carry different discrete invariants, ask how that invariant could possibly change during a **continuous deformation**.

---

## 7. Quasiparticles and the Spectral Function

### Key ideas

In an interacting system, a bare particle generally does not propagate unchanged. Nevertheless, interactions can reorganize the many-body problem so that long-lived particle-like excitations emerge.

Green's functions and spectral functions provide a quantitative way to identify these quasiparticles and determine their energies, lifetimes, and spectral weights.

### Keywords

`Green's function`, `spectral function`, `quasiparticle`, `self-energy`, `quasiparticle lifetime`, `ARPES`

### If You Really Understand This...

> **You are given only $A(k,\omega)$, without knowing the Hamiltonian. What can you infer about the particles or quasiparticles of the system, and what can you not infer?**

### Hint

Look separately at the **position, width, and weight** of features in $A(k,\omega)$. What physical information does each contain?

---

## 8. Landau Fermi Liquid

### Key ideas

Landau's Fermi-liquid theory explains why many interacting fermionic systems retain a surprisingly simple low-energy description. The interacting system can be continuously related to a noninteracting Fermi gas, while bare particles are replaced by renormalized quasiparticles.

The theory illustrates a recurring theme in condensed matter physics: **the correct low-energy degrees of freedom can be much simpler than the microscopic problem**.

### Keywords

`Landau Fermi liquid`, `quasiparticle`, `adiabatic continuity`, `quasiparticle residue`, `effective mass`, `Landau parameters`

### If You Really Understand This...

> **Interactions can completely change the many-body wave function. Why, then, can the Fermi surface and quasiparticle description survive? What would you look for experimentally to know that they have stopped surviving?**

### Hint

Think about **adiabatic continuity** and the pole of the Green's function. What happens to the pole, its residue, and its width?

---

## 9. Linear Response and the Kubo Formula

### Key ideas

Experiments usually probe a material by applying an external perturbation and measuring its response. Linear-response theory establishes a remarkable connection between this response and correlation functions of the unperturbed equilibrium system.

The Kubo formalism therefore provides a bridge between microscopic quantum dynamics and experimentally measurable quantities such as conductivity and susceptibility.

### Keywords

`linear response`, `Kubo formula`, `correlation function`, `susceptibility`, `conductivity`, `fluctuation-dissipation theorem`

### If You Really Understand This...

> **Why should fluctuations occurring in a system that you do not perturb contain information about what happens when you perturb it? What assumption makes this connection possible?**

### Hint

Both involve the same **correlation functions**. Think about equilibrium, causality, and the fluctuation-dissipation relation.

---

## 10. Screening in an Electron Gas

### Key ideas

Electrons interact through the long-range Coulomb interaction, but an electron in a metal does not simply experience the bare Coulomb field of every other electron. The surrounding electron density rearranges collectively and screens the perturbation.

Screening is a basic example of how **many-body effects transform microscopic interactions into effective interactions**.

### Keywords

`screening`, `electron gas`, `Lindhard function`, `polarization function`, `dielectric function`, `RPA`, `Thomas-Fermi screening`

### If You Really Understand This...

> **If the microscopic Coulomb interaction is long-ranged, how can the effective interaction inside a metal become short-ranged? Where did the long-range interaction go?**

### Hint

Do not think about two electrons alone. Ask how **all the other electrons rearrange** when one charge is introduced.

---

## 11. Spontaneous Symmetry Breaking and Goldstone Modes

### Key ideas

The Hamiltonian of a system may possess a symmetry that is not respected by its many-body state. In the thermodynamic limit, the system can spontaneously select one state among many symmetry-related possibilities.

When a continuous symmetry is broken, slow spatial variations of the chosen order produce low-energy collective excitations known as Goldstone modes.

### Keywords

`spontaneous symmetry breaking`, `order parameter`, `Goldstone theorem`, `Goldstone mode`, `collective excitation`, `thermodynamic limit`

### If You Really Understand This...

> **For any finite system, the exact ground state can respect the symmetry of the Hamiltonian. So where does a symmetry-broken state actually come from?**

### Hint

Pay attention to the **thermodynamic limit** and the order in which $N\rightarrow\infty$ and an infinitesimal symmetry-breaking field $h\rightarrow0$ are taken.

---

## 12. Magnons: When Spins Become Bosons

### Key ideas

An ordered magnet contains microscopic spins, but its low-energy excitations are collective waves involving many of them. Quantizing these spin waves produces bosonic quasiparticles called magnons.

This provides a particularly transparent example of how **new particles emerge from collective many-body motion**.

### Keywords

`Heisenberg model`, `spin wave`, `magnon`, `Holstein-Primakoff transformation`, `ferromagnet`, `antiferromagnet`, `Goldstone mode`

### If You Really Understand This...

> **Imagine removing all reference to individual spins and giving you only the low-energy spectrum of a magnet. What features would allow you to infer that the excitations are Goldstone modes of broken spin symmetry?**

### Hint

Ask what Goldstone's theorem predicts about the **excitation energy as momentum approaches zero**, and connect this with the broken continuous symmetry.

---

## 13. Superconductivity and Cooper Pairing

### Key ideas

The ordinary Fermi sea can become unstable when particles near the Fermi surface experience an effective attraction. Cooper pairing reorganizes the many-electron ground state and produces a superconducting energy gap and macroscopic phase coherence.

Superconductivity illustrates how an apparently weak microscopic interaction can **qualitatively reorganize a many-body ground state**.

### Keywords

`Cooper instability`, `Cooper pair`, `BCS theory`, `superconducting gap`, `Fermi surface`, `U(1) symmetry breaking`

### If You Really Understand This...

> **Why is the Fermi surface stable against many weak perturbations but unstable against an arbitrarily weak attractive interaction in the Cooper channel? What is special about pairing?**

### Hint

Focus on **two particles near the Fermi surface with opposite momenta**. What happens to the Cooper susceptibility at low energy?

---

## 14. Renormalization Group and Universality

### Key ideas

Near a continuous phase transition, fluctuations occur over many length scales and microscopic details can become irrelevant to long-distance physics. The renormalization group provides a systematic language for determining which features survive as the observation scale changes.

Fixed points and their relevant perturbations explain why **microscopically different systems can display identical critical behavior**.

### Keywords

`renormalization group`, `RG flow`, `fixed point`, `relevant operator`, `irrelevant operator`, `universality`, `critical exponent`

### If You Really Understand This...

> **If microscopic information is lost as we coarse-grain, how can the renormalization group make predictions rather than merely throw information away? What information survives?**

### Hint

RG does not discard everything equally. Think about **relevant, irrelevant, and marginal directions** near a fixed point.

---

## 15. Path Integrals and Quantum-to-Classical Correspondence

### Key ideas

Quantum mechanics can be reformulated as a sum over possible configurations or histories rather than solely through operators and wave functions. After introducing imaginary time, the quantum partition function resembles the statistical partition function of a classical system with an additional dimension.

This connection provides both conceptual insight and powerful computational methods.

### Keywords

`path integral`, `imaginary time`, `Euclidean action`, `partition function`, `quantum-classical mapping`, `Trotter decomposition`

### If You Really Understand This...

> **A $d$-dimensional quantum system can resemble a $(d+1)$-dimensional classical system. Is the extra dimension really equivalent to a spatial dimension? When would that analogy fail?**

### Hint

The extra coordinate is **imaginary time**. Compare its extent, boundary conditions, and scaling with those of ordinary spatial directions.

---

## 16. Entanglement Entropy and the Area Law

### Key ideas

A generic state in an exponentially large Hilbert space can contain an enormous amount of entanglement, but physically important ground states are often far more structured. For many local gapped systems, entanglement between a region and its surroundings scales primarily with the size of their common boundary.

The area law therefore reveals important information about the **organization of physically relevant many-body states inside Hilbert space**.

### Keywords

`reduced density matrix`, `entanglement entropy`, `Schmidt decomposition`, `area law`, `quantum correlations`, `ground-state entanglement`

### If You Really Understand This...

> **The Hilbert space permits states with volume-law entanglement, so why do ground states of local Hamiltonians so often occupy the tiny area-law corner of Hilbert space? What does locality have to do with it?**

### Hint

Ask where interactions can directly create correlations between a region $A$ and its complement $\bar A$. How many terms in a **local Hamiltonian cross the boundary**?

---

## 17. Matrix Product States and Tensor Networks

### Key ideas

The Hilbert space of a quantum many-body system grows exponentially with system size, apparently requiring exponentially many numbers to describe a generic state. Physical low-energy states, however, often occupy a highly structured corner of this Hilbert space.

Tensor networks exploit this structure by organizing entanglement efficiently, with matrix product states providing the fundamental one-dimensional example.

### Keywords

`matrix product state`, `tensor network`, `bond dimension`, `Schmidt decomposition`, `area law`, `DMRG`

### If You Really Understand This...

> **If tensor networks can efficiently describe exponentially large quantum systems, why haven't they solved the quantum many-body problem? Identify precisely where the exponential difficulty can return.**

### Hint

Efficiency depends on the required **bond dimension**, not merely on writing the state as a tensor network. Ask what determines that bond dimension.

---

## 18. Topological Order and Fractionalization

### Key ideas

Not every phase of matter can be characterized by spontaneous symmetry breaking and a local order parameter. Topologically ordered states possess long-range patterns of quantum entanglement and can support emergent excitations with fractional quantum numbers or unusual statistics.

They illustrate one of the most dramatic forms of emergence: **collective organization can generate effective particles and gauge structures that are absent from the microscopic Hamiltonian**.

### Keywords

`topological order`, `fractionalization`, `anyons`, `long-range entanglement`, `ground-state degeneracy`, `emergent gauge field`

### If You Really Understand This...

> **Suppose every local measurement in two quantum states looks essentially identical. Could they nevertheless represent different phases of matter? If yes, where is the missing information stored?**

### Hint

Look beyond local expectation values. Think about **nonlocal operators, entanglement, topology, and what happens when the system is placed on a nontrivial manifold**.

---

## 19. Eigenstate Thermalization Hypothesis

### Key ideas

An isolated quantum system evolves unitarily, so its complete quantum state never literally becomes a thermal mixed state. Nevertheless, local observables can approach values predicted by statistical mechanics.

The eigenstate thermalization hypothesis explains this by proposing that individual many-body energy eigenstates can already encode thermal properties for sufficiently complex quantum systems.

### Keywords

`eigenstate thermalization hypothesis`, `ETH`, `quantum thermalization`, `many-body eigenstates`, `diagonal ensemble`, `quantum chaos`, `entanglement entropy`

### If You Really Understand This...

> **If you know one highly excited many-body eigenstate, under what circumstances could that single pure state tell you the temperature-dependent properties of an entire macroscopic system? Why is that surprising?**

### Hint

Write down what ETH says about the **diagonal matrix elements of a local observable** in the energy eigenbasis. Then ask what the energy density determines.

---

## 20. Many-Body Localization: When Thermalization Fails

### Key ideas

Thermalization is not inevitable. In sufficiently disordered interacting systems, quantum interference can prevent the system from acting as its own thermal bath.

Many-body localized systems can retain information about their initial conditions for extremely long times and therefore provide an important counterexample to the assumptions underlying ordinary equilibrium statistical mechanics.

### Keywords

`many-body localization`, `MBL`, `Anderson localization`, `ETH violation`, `local integrals of motion`, `entanglement growth`, `memory of initial state`

### If You Really Understand This...

> **Two isolated interacting systems have the same energy density: one thermalizes and one is many-body localized. Long after the experiment begins, what information distinguishes them, and where is that information stored?**

### Hint

Compare what happens to **local memory, conserved quantities, and entanglement** in an ETH system and an MBL system.

---

# A Final Check Before Your Presentation

Your presentation is **not** expected to provide a complete review of the literature.

Instead, try to construct a logical chain:

$$
\boxed{
\text{physical question}
\rightarrow
\text{minimal model}
\rightarrow
\text{central theoretical idea}
\rightarrow
\text{physical consequence}
}
$$

You should be able to explain:

1. **What is the physical question?**
2. **Why is it nontrivial?**
3. **What is the simplest model or framework that captures the essential physics?**
4. **What is the central theoretical result?**
5. **What does that result mean physically?**
6. **What does the simple description leave out?**

Finally, return to the **If You Really Understand This...** question for your topic.

Do not try to memorize an answer. Instead, identify the physical principles involved and construct the argument yourself.

A useful test is:

> **Could you answer the question at a blackboard, without your slides, notes, the internet, or AI, and defend your reasoning when someone asks "why?"**

If the answer is yes, you have probably reached the level of understanding expected from the project.

The objective is not to know everything about your chosen subject. The objective is to understand one piece of condensed matter physics deeply enough that you can explain not only **what happens**, but also **why it happens**.
