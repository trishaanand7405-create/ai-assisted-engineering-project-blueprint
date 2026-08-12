# Requirements Quality

> **Good engineering begins with a requirement that the team can understand, build and verify.**

Poor requirements create ambiguity, rework and defects. Requirements quality therefore becomes the first practical quality gate in the product lifecycle.

---

## 1. A Quality Requirement

A useful requirement should be:

* Clear
* Relevant
* Specific
* Consistent
* Feasible
* Testable
* Traceable

The team should be able to determine whether the requirement has been satisfied.

---

## 2. Avoid Ambiguity

Avoid statements such as:

* "The system should be fast."
* "The interface should be user-friendly."
* "The model should be accurate."
* "The application should handle large data."

These statements may express intent but are difficult to test.

Prefer measurable or observable expectations.

For example:

> "The dashboard should display the requested result within five seconds for the defined workshop dataset."

---

## 3. User Stories

A User Story should communicate:

``
WHO
 ↓
WHAT
 ↓
WHY
```

For example:

```text
As a student,
I want to view my project status,
so that I can understand what remains before the Sprint Review.
```

The story should be supported by appropriate Acceptance Criteria.

---

## 4. Acceptance Criteria

Acceptance Criteria define what must be true for a requirement to be accepted.

Good criteria should be:

* Specific
* Observable
* Testable
* Relevant to the story

A simple flow is:

``
USER STORY
    ↓
ACCEPTANCE CRITERIA
    ↓
IMPLEMENTATION
    ↓
TEST
    ↓
ACCEPT / REJECT
```

---

## 5. Requirements and Scope

Requirements should remain aligned with the Product Goal and Sprint Goal.

When a new request appears, ask:

1. Is it valuable?
2. Is it relevant?
3. Is it necessary now?
4. What existing work would it affect?
5. Should it enter the Product Backlog?

Do not silently expand Sprint scope.

---

## 6. Requirements and AI

AI can help:

* Identify ambiguity
* Suggest missing scenarios
* Generate alternative wording
* Find potential edge cases
* Convert requirements into draft User Stories
* Suggest Acceptance Criteria

However, AI must not invent research findings or user needs and present them as validated facts.

The Product Owner and team remain responsible for the final requirement.

---

## 7. Traceability

Important requirements should be traceable through the engineering lifecycle:

``
REQUIREMENT
     ↓
USER STORY
     ↓
DESIGN
     ↓
IMPLEMENTATION
     ↓
TEST
     ↓
EVIDENCE
```

This helps the team answer:

> **Why does this code, test or feature exist?**

---

## 8. Requirement Quality Check

Before implementation, ask:

* Do we understand the requirement?
* Who benefits from it?
* What value does it provide?
* Is it sufficiently specific?
* Can we test it?
* Are Acceptance Criteria defined?
* Are important assumptions visible?
* Does it support the Product Goal?

If the team cannot answer these questions, clarification should happen before significant implementation begins.

---

## Guiding Principle

> **A requirement is ready for engineering when the team understands what must be achieved and how achievement can be verified.**
