# User Stories

> **A User Story describes a valuable capability from the perspective of the person who needs it.**

User Stories translate **Product Goals into actionable product requirements**.

A good User Story explains **who needs something, what they need and why it matters**.

---

## 1. Basic User Story Format

Use the standard structure:

> **As a [user], I want [capability], so that [value].**

### Example

> As a data analyst, I want to view processed data through a dashboard, so that I can identify important patterns quickly.

The technology used to implement the capability is deliberately not specified.

---

## 2. What Makes a Good User Story?

A useful User Story should be:

* **User-centred** — describes a user need.
* **Valuable** — provides meaningful product value.
* **Understandable** — the whole team can explain it.
* **Small enough** — ideally manageable within a Sprint.
* **Testable** — the team can determine whether it works.
* **Prioritisable** — the Product Owner can compare its value with other work.

Avoid writing stories that are simply technical tasks.

### Weak

> As a developer, I want to create a Python preprocessing function.

### Better

> As a model user, I want input data to be automatically cleaned, so that predictions are based on valid data.

Technical implementation tasks can be created **underneath** the User Story.

---

## 3. Acceptance Criteria

Every important User Story should have clear **Acceptance Criteria**.

Acceptance Criteria describe the conditions that must be satisfied for the story to be accepted.

Example:

``
User Story:
As a user, I want to view a prediction,
so that I can make an informed decision.

Acceptance Criteria:
- A valid input can be submitted.
- A prediction is generated.
- The result is displayed clearly.
- Invalid input produces an understandable response.
```

Acceptance Criteria should be **specific enough to test**.

---

## 4. Story Breakdown

A large requirement should be divided into smaller stories.

``
PRODUCT GOAL
      │
      ▼
     EPIC
      │
      ├── User Story 1
      ├── User Story 2
      ├── User Story 3
      └── User Story 4
```

Avoid creating a single enormous User Story that takes several Sprints to complete.

> **Small stories make progress visible.**

---

## 5. INVEST as a Simple Guide

A good User Story should generally be:

* **I** — Independent where practical
* **N** — Negotiable
* **V** — Valuable
* **E** — Estimable
* **S** — Small
* **T** — Testable

Do not treat this as a rigid checklist. Use it as a thinking tool.

---

## User Story Quality Check

Before adding a story to the Product Backlog:

* [ ] Is the user identifiable?
* [ ] Is the user's need clear?
* [ ] Is the value clear?
* [ ] Is the story small enough?
* [ ] Can the team understand it?
* [ ] Can it be tested?
* [ ] Are Acceptance Criteria available where needed?
* [ ] Does it contribute to a Product Goal?

### Principle

> **A User Story is not a specification. It is a starting point for collaboration between the Product Owner and the engineering team.**
