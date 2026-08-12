# Maintenance

> **A product is not finished when it is deployed. It enters its next stage of engineering.**

This folder defines how teams maintain, operate, evolve and continuously improve a product after deployment.

Maintenance is broader than defect fixing. It includes **observation, incident response, controlled change, technical-debt management and continuous improvement**.

---

## Folder Contents

| Document                                                                    | Purpose                                                           |
| --------------------------------------------------------------------------- | ----------------------------------------------------------------- |
| [01 — Maintenance Overview](01-maintenance-overview.md)                     | Establishes the role of maintenance in the product lifecycle      |
| [02 — Monitoring and Observability](02-monitoring-and-observability.md)     | Defines how teams understand running-system behaviour             |
| [03 — Defect and Incident Management](03-defect-and-incident-management.md) | Defines how problems and operational incidents are handled        |
| [04 — Change and Evolution](04-change-and-evolution.md)                     | Defines how products are changed safely over time                 |
| [05 — Technical Debt](05-technical-debt.md)                                 | Defines how engineering compromises are identified and managed    |
| [06 — Continuous Improvement](06-continuous-improvement.md)                 | Defines how products, processes and engineering practices improve |

---

## The Maintenance Lifecycle

Maintenance creates a continuous feedback loop:

``
DEPLOY
   ↓
OPERATE
   ↓
OBSERVE
   ↓
LEARN
   ↓
IMPROVE
   ↓
CHANGE
   ↓
TEST
   ↓
DEPLOY
   ↺
```

The product therefore remains connected to real-world usage throughout its lifecycle.

---

## Four Maintenance Responsibilities

### 1. Keep It Working

Monitor the system, identify failures and restore service when necessary.

### 2. Keep It Relevant

Respond to changing user needs, requirements and environments.

### 3. Keep It Maintainable

Manage technical debt, dependencies and increasing complexity.

### 4. Keep Improving

Use evidence and feedback to improve the product and the engineering system.

---

## Maintenance and AI

AI can assist with:

* Log analysis
* Defect diagnosis
* Code explanation
* Refactoring
* Test generation
* Dependency analysis
* Documentation
* Improvement suggestions

However:

> **AI can accelerate maintenance work, but it does not remove the need for evidence, verification or engineering judgement.**

AI-generated diagnoses are hypotheses until confirmed.

---

## Maintenance and the Product Backlog

Maintenance work should not become invisible background activity.

Significant items may become:

* Defects
* Technical-debt items
* Product Backlog items
* Improvement work
* Security work
* Dependency updates

This keeps maintenance connected to product priorities.

---

## Relationship with the Blueprint

The complete lifecycle now looks like:

``
product/
    ↓
engineering/
    ↓
ai-assisted-engineering/
    ↓
quality/
    ↓
deployment/
    ↓
maintenance/
    ↓
feedback
    ↺
```

This establishes the fundamental principle:

> **Software engineering is a continuous lifecycle, not a one-time delivery event.**

---

## Appropriate Maintenance

Not every issue requires immediate action.

Teams should balance:

* User value
* Risk
* Cost
* Technical complexity
* Urgency
* Future impact

Avoid both neglect and unnecessary maintenance work.

---

## Guiding Principle

> **Observe the product, respond to problems, manage change, control technical debt and continuously improve.**

The strongest engineering teams do not simply keep software running.

**They learn from running software and use that learning to make the next version better.**
