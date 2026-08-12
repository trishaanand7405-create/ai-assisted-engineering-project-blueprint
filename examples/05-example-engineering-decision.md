# Example Engineering Decision

> **A worked example showing how a significant engineering decision can be evaluated, recorded and communicated.**

---

## 1. Decision Identity

**Decision ID:**
EDR-001

**Title:**
Use a Modular Monolith for the MVP

**Product:**
Smart Campus Service Portal

**Date:**
[Example Date]

**Status:**
Accepted

**Decision Owner:**
Engineering Lead

---

## 2. Context

The Smart Campus Service Portal requires several functional areas:

* Student authentication
* Service catalogue
* Request submission
* Request tracking
* Staff request management
* Notifications

The team needs an architecture that can support these capabilities while remaining simple enough for a small engineering team to build, test and operate.

Several architectural approaches were considered.

---

## 3. Problem

The team must decide whether the MVP should be implemented as:

1. A modular monolith
2. A microservices architecture
3. A serverless/distributed architecture

The decision should consider the product's current scale, team capability, operational complexity and expected evolution.

---

## 4. Decision Drivers

The primary decision drivers are:

* Simplicity
* Maintainability
* Development speed
* Testability
* Operational overhead
* Clear separation of responsibilities
* Ability to evolve later
* Cost

The MVP does not currently require independent scaling of individual services.

---

## 5. Options Considered

### Option A — Modular Monolith

A single deployable application with clearly separated internal modules.

``
Application
├── Authentication
├── Services
├── Requests
├── Notifications
└── Administration
```

**Advantages:**

* Simple deployment
* Simple local development
* Low operational overhead
* Easy end-to-end testing
* Clear internal boundaries can still be established

**Disadvantages:**

* Modules share a deployment unit
* Independent scaling is limited
* Poor module boundaries could create future coupling

---

### Option B — Microservices

Separate services for major business capabilities.

``
Authentication Service
        │
Service Catalogue ── Request Service
        │                 │
        └── Notification Service
```

**Advantages:**

* Independent deployment
* Independent scaling
* Strong service boundaries

**Disadvantages:**

* Higher operational complexity
* Distributed-system failure modes
* More infrastructure
* More complex local development
* Greater testing complexity

---

### Option C — Serverless / Distributed Architecture

Use independently deployed functions and managed services for application capabilities.

**Advantages:**

* Potentially low infrastructure management
* Independent execution units
* Elastic scaling

**Disadvantages:**

* Greater architectural complexity for the current problem
* Additional platform dependencies
* More difficult local development and debugging
* Potentially unnecessary abstraction

---

## 6. Decision

> **The MVP will use a modular monolith architecture.**

The application will be implemented as a single deployable system with explicit internal module boundaries.

---

## 7. Rationale

The product is still validating its core workflow.

The primary engineering objective is therefore to establish a reliable product increment while keeping complexity proportional to the current problem.

A modular monolith provides:

* A simple deployment model
* Low operational overhead
* Straightforward testing
* Clear domain boundaries
* A potential path toward future decomposition

The team accepts that the architecture may evolve if actual product scale or organisational requirements justify it.

---

## 8. Architectural Structure

The initial application will use logical modules:

``
Smart Campus Portal
│
├── Identity
│
├── Service Catalogue
│
├── Service Requests
│
├── Notifications
│
└── Administration
```

Modules should expose clear interfaces and avoid unnecessary direct coupling.

---

## 9. Consequences

### Positive

* Faster initial development
* Easier deployment
* Lower infrastructure burden
* Easier debugging
* Simpler integration testing
* Lower initial operational cost

### Negative

* All modules share the same deployment lifecycle.
* Poor boundaries could create coupling.
* Independent scaling is not available initially.
* Future decomposition may require additional work.

---

## 10. Trade-Off

The team deliberately chooses:

> **Lower architectural complexity now in exchange for postponing independent service deployment.**

This is considered appropriate because the product does not yet demonstrate a requirement for distributed architecture.

---

## 11. Risks

| Risk                                  | Impact | Mitigation                  |
| ------------------------------------- | ------ | --------------------------- |
| Modules become tightly coupled        | High   | Define module boundaries    |
| Application becomes too large         | Medium | Monitor complexity          |
| Future scaling requirements emerge    | Medium | Keep architecture modular   |
| Team ignores architectural boundaries | Medium | Review dependency structure |

---

## 12. AI-Assisted Decision Support

AI was used to:

* Identify architectural alternatives
* Generate an initial comparison
* Surface potential trade-offs
* Suggest questions for architectural review

AI output was treated as decision-support material rather than authoritative architectural guidance.

The engineering team independently reviewed:

* Operational implications
* Product scale
* Team capability
* Complexity
* Security considerations
* Future evolution

---

## 13. Implementation Rules

The following rules accompany the decision:

1. Modules must have clear responsibilities.
2. Cross-module dependencies should be intentional.
3. Business logic should not be scattered across unrelated modules.
4. Shared utilities should remain genuinely shared.
5. Architecture should be reviewed if system complexity increases materially.

---

## 14. Reversal Conditions

The decision should be reconsidered if:

* Individual capabilities require independent scaling.
* Independent deployment becomes a demonstrated business requirement.
* Team ownership requires strong service isolation.
* Operational boundaries become necessary.
* The modular monolith becomes a measurable bottleneck.

The team should use evidence rather than architectural fashion to trigger reconsideration.

---

## 15. Review

**Review Trigger:**
Significant increase in scale, complexity or operational requirements.

**Review Outcome:**
Continue modular monolith unless evidence supports architectural evolution.

---

## 16. Final Record

**Decision:**
Use a modular monolith for the Smart Campus Service Portal MVP.

**Status:**
Accepted

**Primary Reason:**
The architecture provides sufficient capability for the current product stage while minimising unnecessary complexity.

---

## Guiding Principle

> **Choose the simplest architecture that adequately solves the current problem while preserving reasonable options for future evolution.**
