# Track 03 — Multi-Agentic Pipelines

> **Coordinate specialised agents to accomplish a goal through collaboration, decision-making and controlled execution.**

This project track focuses on products where multiple specialised agents collaborate to perform a workflow that would be difficult or inefficient for a single component to perform alone.

A multi-agent system is **not simply multiple AI prompts**.

The agents should have meaningful responsibilities and a defined interaction pattern.

---

## 1. Typical Product Flow

``
USER / EVENT
     ↓
ORCHESTRATOR
     ↓
┌────┴────┐
↓         ↓
AGENT A   AGENT B
↓         ↓
└────┬────┘
     ↓
AGENT C / REVIEWER
     ↓
DECISION / OUTPUT
     ↓
USER / SYSTEM
```

The actual architecture depends on the product.

---

## 2. Define Agent Responsibilities

Each important agent should have a clear role.

Examples:

* Research Agent
* Data Agent
* Analysis Agent
* Planning Agent
* Validation Agent
* Recommendation Agent
* Monitoring Agent
* Reporting Agent

Avoid creating agents simply to increase the number of agents.

> **One agent should have one meaningful primary responsibility.**

---

## 3. Define the Workflow

The team should clearly identify:

* What starts the workflow?
* Which agent acts first?
* What information is passed between agents?
* Which agent makes decisions?
* Where is human approval required?
* What happens when an agent fails?
* How does the workflow terminate?

A simple workflow may be:

``
REQUEST
   ↓
PLANNER
   ↓
RESEARCHER
   ↓
ANALYST
   ↓
REVIEWER
   ↓
FINAL RESPONSE
```

---

## 4. State & Context

Agents may require shared or persistent context.

The team should identify:

* Input state
* Working context
* Intermediate results
* Decisions
* Final output

Keep state management as simple as possible.

> **Make important state visible rather than hiding it inside complex agent interactions.**

---

## 5. Tools & External Actions

An agent may use tools such as:

* Data processing
* Search
* Calculators
* APIs
* Databases
* Local files
* Application functions

Tool access should be controlled.

The team should understand:

> **What can each agent do, and what should it not be allowed to do?**

---

## 6. Validation & Human Oversight

Agentic systems can produce incorrect or unexpected results.

Where appropriate, include:

* Output validation
* Agent-to-agent review
* Rule-based checks
* Confidence or quality checks
* Human approval
* Failure handling

The team must be able to explain how it detects or handles an incorrect agent output.

---

## 7. Minimum Demonstration

By the later Sprints, the team should demonstrate:

* A clearly defined problem
* At least two meaningful specialised agents
* A defined coordination workflow
* Information exchanged between agents
* A useful tool or capability
* Validation or review
* A complete end-to-end execution
* A meaningful final outcome
* Known limitations

A simple, reliable two- or three-agent workflow is preferable to a large unstable agent network.

---

## Track Principle

> **Specialise → Coordinate → Validate → Deliver**

The objective is not to maximise the number of agents.

The objective is to demonstrate that **multiple specialised agents working together provide meaningful value beyond a single component**.

AI may assist the agents, but engineering discipline remains essential: **define responsibilities, control actions, validate outputs and measure the result.**
