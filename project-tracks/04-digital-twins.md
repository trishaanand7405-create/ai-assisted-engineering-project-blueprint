# Track 04 — Digital Twins

> **Represent a real or conceptual system as a computational model that can observe, simulate, analyse and evolve with its changing state.**

A Digital Twin is a computational representation of a physical, biological or conceptual system.

For this workshop, a Digital Twin does **not** require physical sensors, IoT infrastructure or cloud platforms.

A useful prototype can be created from **data, defined states, events, rules and simulation models**.

---

## 1. Typical Digital Twin Flow

```text
REAL / CONCEPTUAL SYSTEM
          ↓
     OBSERVATIONS
          ↓
      TWIN STATE
          ↓
   MODEL / SIMULATION
          ↓
   ANALYSIS / PREDICTION
          ↓
     INSIGHT / ACTION
          ↓
     STATE UPDATE
          ↺
```

The feedback loop is an important characteristic of a Digital Twin.

---

## 2. Define the Twin

The team should first define:

* What is being represented?
* What are its important properties?
* What states can it have?
* What events can change its state?
* What observations are available?
* What behaviours should be simulated?

Examples include:

* Manufacturing equipment
* Energy systems
* Vehicles
* Buildings
* Agricultural systems
* Biological systems
* Healthcare scenarios
* Smart-city components

---

## 3. Model the State

A Digital Twin should maintain a meaningful representation of the system's current state.

For example:

```text
SYSTEM
  │
  ├── State
  ├── Parameters
  ├── Measurements
  ├── Events
  └── History
```

The team should identify which values can change and what causes those changes.

---

## 4. Events & State Transitions

Events cause the Twin to evolve.

``
CURRENT STATE
      ↓
     EVENT
      ↓
STATE TRANSITION
      ↓
   NEW STATE
```

For example:

```text
Normal
  ↓
High Temperature Event
  ↓
Warning
  ↓
Critical Temperature Event
  ↓
Failure Risk
```

The transition rules should be understandable and testable.

---

## 5. Simulation

The Twin may simulate:

* Future states
* What-if scenarios
* System behaviour
* Failure conditions
* Interventions
* Alternative decisions

A simple simulation can be more valuable than a complicated model that cannot be explained.

> **A Digital Twin should help the user understand what may happen next or what could happen under different conditions.**

---

## 6. Data & Models

The Twin may use:

* Historical data
* Real-time or simulated observations
* Mathematical models
* Statistical models
* Machine Learning
* Rules
* State machines
* Event-driven logic

The team should clearly distinguish:

**Observed data** from **model assumptions** and **simulated outcomes**.

---

## 7. Minimum Demonstration

By the later Sprints, the team should demonstrate:

* A clearly defined system
* A computational representation of that system
* Meaningful states and parameters
* Events that change the state
* A working simulation or model
* At least one what-if scenario
* Useful visualisation or output
* Evidence that the model behaves as expected
* Known assumptions and limitations

Physical sensors and production IoT infrastructure are **not required**.

---

## Track Principle

> **Observe → Represent → Model → Simulate → Understand → Improve**

The objective is not to create a perfect replica of reality.

The objective is to create a **useful computational representation that helps people understand, analyse or explore the behaviour of a system**.
