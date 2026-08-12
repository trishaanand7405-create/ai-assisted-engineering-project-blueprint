# Framework

> **The operating framework for AI-Assisted Engineering.**

This folder defines the common framework that connects **Product, Agile, Engineering, Project Tracks and Sprints** into one coherent product development lifecycle.

The framework is intentionally technology-independent and follows the project's guiding philosophy:

> **Clean, Green and Lean Engineering.**

---

## Framework Structure

The framework is organised into six complementary areas:

| Document                                                        | Purpose                                     |
| --------------------------------------------------------------- | ------------------------------------------- |
| [01 — Framework Overview](01-framework-overview.md)             | Defines the overall framework               |
| [02 — Operating Model](02-operating-model.md)                   | Defines how teams operate                   |
| [03 — Product Lifecycle](03-product-lifecycle.md)               | Defines the complete product lifecycle      |
| [04 — Team Working Model](04-team-working-model.md)             | Defines team roles and collaboration        |
| [05 — Delivery Model](05-delivery-model.md)                     | Defines incremental product delivery        |
| [06 — Feedback and Improvement](06-feedback-and-improvement.md) | Defines learning and continuous improvement |

---

## How the Framework Connects

``
                    FRAMEWORK
                        │
        ┌───────────────┼───────────────┐
        ↓               ↓               ↓
     PRODUCT          AGILE        ENGINEERING
        │               │               │
        └───────────────┼───────────────┘
                        ↓
                 PROJECT TRACK
                        ↓
                     SPRINT
                        ↓
               WORKING INCREMENT
                        ↓
                    RELEASE
                        ↓
                   FEEDBACK
                        ↓
                  IMPROVEMENT
                        ↺
```

The framework provides the **common operating model**.

The individual project tracks provide the **technical context**.

The Sprints provide the **execution rhythm**.

---

## Guiding Philosophy

### Clean

Keep decisions, architecture, code and documentation understandable.

### Green

Avoid unnecessary computation, infrastructure, duplication and resource consumption.

### Lean

Build the smallest useful product increment and learn from it.

---

## Relationship with Other Folders

The framework does not replace the detailed project guidance elsewhere in the repository.

``
agile/
    ↓
HOW THE TEAM WORKS

product/
    ↓
WHAT & WHY TO BUILD

engineering/
    ↓
HOW TO BUILD IT

project-tracks/
    ↓
WHAT KIND OF PRODUCT

sprints/
    ↓
WHEN & WHAT TO DELIVER

framework/
    ↓
HOW EVERYTHING CONNECTS
```

The remaining folders provide supporting operational material such as checklists, deployment guidance, quality practices, templates, examples and facilitator resources.

---

## Core Principle

> **A framework should create clarity, not bureaucracy.**

Use this framework to help teams make better product and engineering decisions—not to create unnecessary process or documentation.

The desired outcome is simple:

> **A team that can take a problem, build a useful product, release it, learn from it and improve it continuously.**
