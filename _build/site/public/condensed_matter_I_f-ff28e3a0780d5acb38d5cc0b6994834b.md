# Condensed Matter I — Final Presentation Topics

## About the Final Presentation

Condensed matter physics asks a deceptively simple question:

> **How do simple microscopic quantum rules give rise to the enormous variety of phenomena observed in matter?**

A solid contains an enormous number of interacting particles. In principle, its quantum state lives in a Hilbert space whose dimension grows exponentially with system size, making a direct description of all microscopic degrees of freedom practically impossible. Nevertheless, matter is not arbitrary. At low energies and long distances, remarkably simple organizing principles emerge: electrons form bands and Fermi surfaces, interacting particles behave as quasiparticles, broken symmetries generate collective modes, and completely new structures such as topology, fractionalization, and emergent gauge fields can appear.

The purpose of this course is therefore not simply to introduce a collection of models and computational techniques. Instead, we develop a sequence of ways to **organize quantum many-body problems**. Second quantization provides a language for many-particle states and excitations. Band theory organizes the motion of electrons in crystals. Green's functions and response theory tell us how interacting systems propagate and respond to experiments. Symmetry breaking and renormalization reveal why collective behavior can become largely independent of microscopic details. Entanglement, topology, and thermalization then extend these ideas to quantum phases and dynamical phenomena that cannot be understood within a simple independent-particle picture.

The final presentation is an opportunity to explore one concrete example of these broader ideas.

Each topic below begins with a physical phenomenon or conceptual question rather than a mathematical formalism. Your goal is to identify the **simplest model and the minimum set of theoretical ideas needed to explain the phenomenon**, and then use them to construct a coherent physical argument.

For each topic, three pieces of guidance are provided:

- **Key ideas** indicate the central physical message that your presentation should communicate.
- **Keywords** provide a starting point for textbooks, lecture notes, literature searches, and other resources. They are not intended to define the structure of your presentation.
- **Sanity question** gives the simplest test of whether you have understood the central idea. By the end of your preparation, you should be able to answer this question clearly in your own words, without consulting your slides, notes, the internet, or AI.

The goal is not to cover everything known about your topic. A successful presentation should instead make one important piece of condensed matter physics understandable:

> **What is the phenomenon, what is the simplest theoretical description that captures it, and what new physical idea do we learn from it?**

---

## 1. Graphene and Dirac Fermions

### Key ideas

A remarkably simple tight-binding model on the honeycomb lattice produces a low-energy theory that looks very different from the microscopic lattice model. The two-sublattice structure leads to band touching at isolated points in momentum space, and excitations near these points behave approximately as massless Dirac fermions. Graphene therefore provides a clean example of **emergent low-energy degrees of freedom** arising from lattice geometry.

### Keywords

`graphene`, `honeycomb lattice`, `tight-binding model`, `Dirac cone`, `Dirac point`, `pseudospin`, `Berry phase`

### Sanity question

> **Why does graphene have Dirac points instead of an ordinary band gap?**

---

## 2. Fermi Surfaces and Metals

### Key ideas

A many-electron ground state fills single-particle states up to the Fermi energy. At low temperature, however, most electrons in the Fermi sea cannot participate in low-energy processes because of the Pauli principle. The relevant physics is concentrated near the Fermi surface. This reduction of an enormous many-body problem to a thin region in momentum space is one of the central organizing principles of metallic systems.

### Keywords

`Fermi surface`, `Fermi energy`, `Fermi sea`, `density of states`, `Pauli principle`, `low-energy excitations`

### Sanity question

> **Why do electrons deep inside the Fermi sea usually not matter for low-energy physics?**

---

## 3. Van Hove Singularities

### Key ideas

The density of available quantum states depends not only on how many momentum states exist, but also on the geometry of the dispersion relation. Special points such as saddle points can produce a strongly enhanced or even singular density of states. This enhancement can amplify interaction effects and make otherwise weak instabilities important.

### Keywords

`density of states`, `van Hove singularity`, `saddle point`, `tight-binding dispersion`, `Fermi surface`, `Lifshitz transition`

### Sanity question

> **What feature of a band dispersion produces a van Hove singularity?**

---

## 4. Berry Phase and Electronic Polarization

### Key ideas

A Bloch state contains information beyond its energy. Its evolution through parameter or momentum space can accumulate a geometric phase. In crystalline systems this geometric structure provides the modern description of quantities such as electric polarization and demonstrates that quantum geometry can have directly observable consequences.

### Keywords

`Berry phase`, `Berry connection`, `Zak phase`, `Bloch states`, `Wannier functions`, `modern theory of polarization`

### Sanity question

> **Why can't the polarization of a crystal simply be defined by adding up classical dipole moments of unit cells?**

---

## 5. The Integer Quantum Hall Effect

### Key ideas

The integer quantum Hall effect provides a striking example in which a macroscopic transport coefficient is determined by a topological invariant. The Hall conductance becomes quantized and robust against many microscopic imperfections. It demonstrates how global properties of quantum states can control experimentally measurable responses.

### Keywords

`integer quantum Hall effect`, `Landau levels`, `Chern number`, `Berry curvature`, `Hall conductivity`, `topological invariant`

### Sanity question

> **Why can Hall conductance be quantized even when the sample contains imperfections?**

---

## 6. Topological Insulators and Edge States

### Key ideas

Two systems can both be insulating in the bulk and preserve the same conventional symmetries, yet still represent distinct phases. If their topological invariants differ, they cannot be smoothly connected without closing the bulk gap or changing the relevant symmetry. The interface between them therefore reveals boundary states through bulk-boundary correspondence.

### Keywords

`topological insulator`, `bulk-boundary correspondence`, `edge state`, `band inversion`, `topological invariant`, `gap closing`

### Sanity question

> **Why must something special happen at the boundary between topologically distinct insulators?**

---

## 7. Quasiparticles and the Spectral Function

### Key ideas

In an interacting system, a bare particle generally does not propagate unchanged. Nevertheless, interactions can reorganize the many-body problem so that long-lived particle-like excitations emerge. Green's functions and spectral functions provide a quantitative way to identify these quasiparticles and determine their energies, lifetimes, and spectral weights.

### Keywords

`Green's function`, `spectral function`, `quasiparticle`, `self-energy`, `quasiparticle lifetime`, `ARPES`

### Sanity question

> **What would a sharp peak in a spectral function tell you physically?**

---

## 8. Landau Fermi Liquid

### Key ideas

Landau's Fermi-liquid theory explains why many interacting fermionic systems retain a surprisingly simple low-energy description. The interacting system can be continuously related to a noninteracting Fermi gas, while bare particles are replaced by renormalized quasiparticles. The theory illustrates a recurring theme in condensed matter physics: the correct low-energy degrees of freedom can be much simpler than the microscopic problem.

### Keywords

`Landau Fermi liquid`, `quasiparticle`, `adiabatic continuity`, `quasiparticle residue`, `effective mass`, `Landau parameters`

### Sanity question

> **If electrons interact strongly, why is it sometimes still meaningful to talk about individual quasiparticles?**

---

## 9. Linear Response and the Kubo Formula

### Key ideas

Experiments usually probe a material by applying an external perturbation and measuring its response. Linear-response theory establishes a remarkable connection between this response and correlation functions of the unperturbed equilibrium system. The Kubo formalism therefore provides a bridge between microscopic quantum dynamics and experimentally measurable quantities such as conductivity and susceptibility.

### Keywords

`linear response`, `Kubo formula`, `correlation function`, `susceptibility`, `conductivity`, `fluctuation-dissipation theorem`

### Sanity question

> **Why can information about an equilibrium system tell us how it responds to a weak external field?**

---

## 10. Screening in an Electron Gas

### Key ideas

Electrons interact through the long-range Coulomb interaction, but an electron in a metal does not simply experience the bare Coulomb field of every other electron. The surrounding electron density rearranges collectively and screens the perturbation. Screening is a basic example of how many-body effects transform microscopic interactions into effective low-energy interactions.

### Keywords

`screening`, `electron gas`, `Lindhard function`, `polarization function`, `dielectric function`, `RPA`, `Thomas-Fermi screening`

### Sanity question

> **Why doesn't an electron inside a metal feel the bare Coulomb potential of another electron at long distances?**

---

## 11. Spontaneous Symmetry Breaking and Goldstone Modes

### Key ideas

The Hamiltonian of a system may possess a symmetry that is not respected by its many-body state. In the thermodynamic limit, the system can spontaneously select one state among many symmetry-related possibilities. When a continuous symmetry is broken, slow spatial variations of the chosen order produce low-energy collective excitations known as Goldstone modes.

### Keywords

`spontaneous symmetry breaking`, `order parameter`, `Goldstone theorem`, `Goldstone mode`, `collective excitation`, `thermodynamic limit`

### Sanity question

> **How can the ground state break a symmetry that the Hamiltonian still has?**

---

## 12. Magnons: When Spins Become Bosons

### Key ideas

An ordered magnet contains microscopic spins, but its low-energy excitations are collective waves involving many of them. Quantizing these spin waves produces bosonic quasiparticles called magnons. This provides a particularly transparent example of how collective excitations emerge and why the most useful low-energy particles need not be microscopic constituents of matter.

### Keywords

`Heisenberg model`, `spin wave`, `magnon`, `Holstein-Primakoff transformation`, `ferromagnet`, `antiferromagnet`, `Goldstone mode`

### Sanity question

> **A magnon is not an elementary particle, so what exactly is being quantized?**

---

## 13. Superconductivity and Cooper Pairing

### Key ideas

The ordinary Fermi sea can become unstable when particles near the Fermi surface experience an effective attraction. Cooper pairing reorganizes the many-electron ground state and produces a superconducting energy gap and macroscopic phase coherence. Superconductivity illustrates how an apparently weak microscopic interaction can qualitatively change a many-body ground state.

### Keywords

`Cooper instability`, `Cooper pair`, `BCS theory`, `superconducting gap`, `Fermi surface`, `U(1) symmetry breaking`

### Sanity question

> **Why can a weak attraction have a dramatic effect on a Fermi sea?**

---

## 14. Renormalization Group and Universality

### Key ideas

Near a continuous phase transition, fluctuations occur over many length scales and microscopic details can become irrelevant to long-distance physics. The renormalization group provides a systematic language for determining which features survive as the observation scale changes. Fixed points and their relevant perturbations explain why microscopically different systems can display identical critical behavior.

### Keywords

`renormalization group`, `RG flow`, `fixed point`, `relevant operator`, `irrelevant operator`, `universality`, `critical exponent`

### Sanity question

> **Why can two microscopically completely different materials have the same critical exponents?**

---

## 15. Path Integrals and Quantum-to-Classical Correspondence

### Key ideas

Quantum mechanics can be reformulated as a sum over possible configurations or histories rather than solely through operators and wave functions. After introducing imaginary time, the quantum partition function resembles the statistical partition function of a classical system with an additional dimension. This connection provides both conceptual insight and powerful computational methods.

### Keywords

`path integral`, `imaginary time`, `Euclidean action`, `partition function`, `quantum-classical mapping`, `Trotter decomposition`

### Sanity question

> **Where does the extra dimension come from when a quantum problem is mapped to a classical statistical problem?**

---

## 16. Entanglement Entropy and the Area Law

### Key ideas

A generic state in an exponentially large Hilbert space can contain an enormous amount of entanglement, but physically important ground states are often far more structured. For many local gapped systems, entanglement between a region and its surroundings scales primarily with the size of their common boundary. The area law therefore reveals important information about the organization of quantum many-body states.

### Keywords

`reduced density matrix`, `entanglement entropy`, `Schmidt decomposition`, `area law`, `quantum correlations`, `ground-state entanglement`

### Sanity question

> **Why does the entanglement entropy of many ground states scale with the boundary instead of the volume?**

---

## 17. Matrix Product States and Tensor Networks

### Key ideas

The Hilbert space of a quantum many-body system grows exponentially with system size, apparently requiring exponentially many numbers to describe a generic state. Physical low-energy states, however, often occupy a highly structured corner of this Hilbert space. Tensor networks exploit this structure by organizing entanglement efficiently, with matrix product states providing the fundamental one-dimensional example.

### Keywords

`matrix product state`, `tensor network`, `bond dimension`, `Schmidt decomposition`, `area law`, `DMRG`

### Sanity question

> **How can a state living in an exponentially large Hilbert space sometimes be represented efficiently?**

---

## 18. Topological Order and Fractionalization

### Key ideas

Not every phase of matter can be characterized by spontaneous symmetry breaking and a local order parameter. Topologically ordered states possess long-range patterns of quantum entanglement and can support emergent excitations with fractional quantum numbers or unusual statistics. They illustrate how collective organization can generate entirely new effective degrees of freedom.

### Keywords

`topological order`, `fractionalization`, `anyons`, `long-range entanglement`, `ground-state degeneracy`, `emergent gauge field`

### Sanity question

> **If there is no local order parameter, what tells us that a topologically ordered state is a distinct phase of matter?**

---

## 19. Eigenstate Thermalization Hypothesis

### Key ideas

An isolated quantum system evolves unitarily, so its complete quantum state never literally becomes a thermal mixed state. Nevertheless, local observables can approach values predicted by statistical mechanics. The eigenstate thermalization hypothesis explains this by proposing that individual many-body energy eigenstates already encode thermal properties for sufficiently complex quantum systems.

### Keywords

`eigenstate thermalization hypothesis`, `ETH`, `quantum thermalization`, `many-body eigenstates`, `diagonal ensemble`, `quantum chaos`, `entanglement entropy`

### Sanity question

> **If an isolated quantum system evolves unitarily and never becomes a mixed state, how can it appear thermal?**

---

## 20. Many-Body Localization: When Thermalization Fails

### Key ideas

Thermalization is not inevitable. In sufficiently disordered interacting systems, quantum interference can prevent the system from acting as its own thermal bath. Many-body localized systems can retain information about their initial conditions for extremely long times and therefore provide a useful counterexample to the assumptions underlying ordinary equilibrium statistical mechanics.

### Keywords

`many-body localization`, `MBL`, `Anderson localization`, `ETH violation`, `local integrals of motion`, `entanglement growth`, `memory of initial state`

### Sanity question

> **What information does an MBL system remember that a thermalizing system eventually forgets?**

---

# A Final Check Before Your Presentation

Your presentation is **not** expected to provide a complete review of the literature. Instead, ask yourself whether you can construct a logical chain

\[
\text{physical question}
\longrightarrow
\text{minimal model}
\longrightarrow
\text{central theoretical idea}
\longrightarrow
\text{physical consequence}.
\]

You should be able to explain:

1. **What is the physical question?**
2. **Why is it nontrivial?**
3. **What is the simplest model or framework that captures the essential physics?**
4. **What is the central result?**
5. **What does that result mean physically?**
6. **What does the simple description leave out?**

Most importantly, return to the **sanity question** for your topic.

If you can answer it clearly, in your own words, without consulting your slides, notes, the internet, or AI, then you have probably understood the central idea.

The objective is not to know everything about your chosen subject. The objective is to understand one piece of condensed matter physics deeply enough that you can explain **why it works**.
