# Solution Design

> **Design the simplest solution that can reliably satisfy the product requirement.**

Solution Design translates a Product requirement into an implementable technical approach.

The purpose is not to produce a large architecture document.

The purpose is to help the team answer:

> **"What are we going to build, and how will the pieces work together?"**

---

## 1. Start With the Requirement

Before designing:

* Identify the User Story.
* Review its Acceptance Criteria.
* Understand the expected inputs and outputs.
* Identify important constraints.
* Identify known risks and dependencies.

The design must serve the requirement.

---

## 2. Identify the Major Components

Break the solution into its meaningful components.

Depending on the project, these may include:

* User interface
* Application logic
* Data source
* Data processing
* Database or storage
* ML model
* Analytics component
* Agent
* Simulation engine
* API
* Reporting or dashboard component

Do not create components merely because a technology makes them possible.

> **One clear component is better than five unnecessary components.**

---

## 3. Define the Flow

Describe how information moves through the solution.

A simple flow may be:

```text 
INPUT
  ↓
PROCESS
  ↓
MODEL / LOGIC
  ↓
OUTPUT
  ↓
USER
```

For a more complex system:

```text 
DATA
  ↓
PROCESSING
  ↓
ANALYSIS
  ↓
DECISION / PREDICTION
  ↓
APPLICATION
  ↓
USER
```

The actual flow depends on the project track.

---

## 4. Define Interfaces

For each important component, identify:

* What does it receive?
* What does it produce?
* What format is used?
* Who or what consumes the output?

Clear interfaces reduce integration problems.

---

## 5. Consider Quality

The design should consider appropriate quality attributes such as:

* Correctness
* Reliability
* Performance
* Security
* Usability
* Maintainability
* Explainability

Not every project requires equal emphasis on every attribute.

> **Focus engineering effort where failure matters most.**

---

## 6. Record Important Decisions

If the team makes a significant technical choice, record:

```text 
DECISION
What did we choose?

REASON
Why did we choose it?

ALTERNATIVES
What else did we consider?

TRADE-OFF
What are we gaining and giving up?
```

Keep the record short.

The purpose is to preserve **engineering reasoning**, not generate paperwork.

---

## 7. Keep the Design Proportional

A student project does not need enterprise architecture for every feature.

Prefer:

> **Simple → Clear → Testable → Extendable**

over:

> **Complex → Distributed → Difficult to understand → Difficult to demonstrate**

Avoid introducing technologies such as containers, Kubernetes, microservices or cloud infrastructure unless the project genuinely requires them and the environment supports them.

---

# Solution Design Check

Before implementation:

* [ ] Is the requirement understood?
* [ ] Are the major components identified?
* [ ] Is the data/information flow clear?
* [ ] Are inputs and outputs understood?
* [ ] Are important interfaces defined?
* [ ] Are significant risks visible?
* [ ] Are important technical decisions recorded?
* [ ] Is the solution appropriately simple?

### Principle

> **Design enough to build confidently, but not so much that design becomes the project.**
