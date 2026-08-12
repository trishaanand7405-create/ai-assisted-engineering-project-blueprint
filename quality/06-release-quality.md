# Release Quality

> **A release is a decision supported by evidence, not simply a successful build.**

Release quality means having sufficient confidence that a product increment is ready for its intended users and environment.

The required level of evidence depends on the product, risk and context.

---

## 1. Release Readiness

Before release, the team should confirm:

* Intended functionality is implemented.
* Important Acceptance Criteria are satisfied.
* Relevant tests have passed.
* Known critical defects are resolved.
* Important limitations are understood.
* Documentation is sufficient.
* Deployment requirements are understood.

---

## 2. Release Quality Gate

Use a simple decision flow:

``
IMPLEMENT
    ↓
TEST
    ↓
VALIDATE
    ↓
REVIEW
    ↓
QUALITY CHECK
    ↓
RELEASE DECISION
```

A failed quality gate should lead to investigation or a conscious decision to defer the release.

---

## 3. Known Issues

Not every defect must prevent a release.

For non-critical issues, record:

* What the issue is
* Its impact
* Who is affected
* Current workaround, if any
* Planned follow-up

Never hide known limitations.

> **Transparent imperfection is better than false confidence.**

---

## 4. Release Evidence

The team should be able to demonstrate appropriate evidence such as:

* Test results
* Acceptance results
* Sprint Review evidence
* Deployment verification
* Performance observations
* Known-issue records

The amount of evidence should remain proportional to project risk.

---

## 5. AI-Assisted Release Preparation

AI can assist with:

* Release-note drafts
* Change summaries
* Documentation checks
* Test-result summaries
* Deployment checklists
* Identification of possible release risks

The team must verify generated release information before publishing it.

---

## 6. Release Decision

The release decision should consider:

``
VALUE
  +
QUALITY
  +
RISK
  +
READINESS
  ↓
RELEASE DECISION
```

The objective is not to eliminate every possible risk.

The objective is to understand the remaining risk and make a responsible decision.

---

## 7. Post-Release Verification

Quality does not end when deployment succeeds.

After release, verify:

* The application is available.
* Important workflows function correctly.
* Expected outputs are produced.
* No critical errors are appearing.
* Users can access the intended functionality.

Capture relevant observations for future improvement.

---

## 8. Workshop Release Standard

For student projects, a release should demonstrate that the team can answer:

1. What are we releasing?
2. What problem does it solve?
3. What evidence shows that it works?
4. What limitations remain?
5. How do we know the release is usable?
6. What would we improve next?

---

## Guiding Principle

> **Release when the team has enough evidence and understanding to make a responsible decision—not merely because the deadline has arrived.**
