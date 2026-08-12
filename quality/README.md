# Quality

> **Quality is built into the product; it is not inspected into the product at the end.**

This folder defines the quality practices used throughout the AI-Assisted Engineering Project Blueprint.

Quality is treated as a **shared engineering responsibility** spanning requirements, design, implementation, testing, validation and release.

---

## Folder Contents

| Document                                                      | Purpose                                              |
| ------------------------------------------------------------- | ---------------------------------------------------- |
| [01 — Quality Overview](01-quality-overview.md)               | Defines the overall quality approach                 |
| [02 — Quality Principles](02-quality-principles.md)           | Establishes the principles guiding quality decisions |
| [03 — Requirements Quality](03-requirements-quality.md)       | Defines how requirements become clear and testable   |
| [04 — Code and Design Quality](04-code-and-design-quality.md) | Defines expectations for technical quality           |
| [05 — Testing and Validation](05-testing-and-validation.md)   | Defines testing, validation and evidence             |
| [06 — Release Quality](06-release-quality.md)                 | Defines release-readiness and quality gates          |

---

## Quality Across the Lifecycle

Quality is considered continuously:

``
PROBLEM
   ↓
REQUIREMENTS
   ↓
DESIGN
   ↓
IMPLEMENTATION
   ↓
TESTING
   ↓
VALIDATION
   ↓
RELEASE
   ↓
FEEDBACK
   ↺
```

Each stage provides an opportunity to identify and prevent problems before they become more expensive to correct.

---

## Quality Is Not Just Testing

Testing is an important quality activity, but quality is broader.

``
                 QUALITY
                    │
      ┌─────────────┼─────────────┐
      ↓             ↓             ↓
 REQUIREMENTS    DESIGN         CODE
      │             │             │
      └─────────────┼─────────────┘
                    ↓
              TEST & VALIDATE
                    ↓
                 RELEASE
```

A product can pass its tests and still fail to solve the user's actual problem.

---

## Quality and AI

AI-assisted development introduces additional responsibility.

AI may generate:

* Requirements
* Designs
* Code
* Tests
* Documentation
* Analysis

All important AI-generated output must be appropriately **reviewed, verified and validated**.

> **AI output is assistance. Engineering evidence remains the authority.**

---

## Appropriate Quality

This blueprint does not promote unnecessary perfection or bureaucracy.

Teams should seek the appropriate level of quality for:

* The product
* The users
* The project scope
* The technical risk
* The intended environment

The goal is:

> **Enough quality to deliver responsibly, with evidence to support the decision.**

---

## Relationship with Other Folders

``
product/
    ↓
WHAT SHOULD BE BUILT
    ↓
engineering/
    ↓
HOW IT IS BUILT
    ↓
ai-assisted-engineering/
    ↓
HOW AI ASSISTS
    ↓
quality/
    ↓
HOW WE KNOW IT IS GOOD ENOUGH
    ↓
deployment/
    ↓
HOW IT IS RELEASED
```

Quality therefore acts as a **continuous discipline**, not a final project phase.

---

## Guiding Principle

> **Build quality early. Keep it visible. Test what matters. Validate with evidence. Release responsibly.**

Quality belongs to **the entire team**.
