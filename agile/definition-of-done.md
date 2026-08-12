Excellent. This is **Artifact 5 — `agile/definition-of-done.md`**, the final document in the `agile/` folder.

I would keep this particularly practical: students need a **quick quality gate** they can use before declaring a Sprint increment complete.

# Definition of Done

> **"Done" means the agreed work is complete, tested and demonstrable — not merely coded.**

The **Definition of Done (DoD)** is the team's shared quality standard.

A Sprint item should be considered **Done** only when the applicable criteria below have been satisfied.

---

## 1. Requirement

* [ ] The work addresses the agreed User Story or requirement.
* [ ] Acceptance Criteria have been considered.
* [ ] The expected outcome is clearly understood.

---

## 2. Implementation

* [ ] The agreed functionality has been implemented.
* [ ] The implementation is integrated with the relevant product components.
* [ ] No known critical issue prevents the functionality from being used or demonstrated.
* [ ] The team understands the implementation sufficiently to explain it.

---

## 3. Data / AI / Domain Validation

Where applicable:

* [ ] Data has been checked for obvious quality problems.
* [ ] Processing or transformation has been validated.
* [ ] Models, agents, pipelines or simulations produce meaningful results.
* [ ] Important assumptions and limitations are known.
* [ ] Results are not presented as reliable beyond the evidence available.

---

## 4. Testing

* [ ] The functionality has been tested.
* [ ] Expected inputs and outputs have been checked.
* [ ] Important failure or edge cases have been considered.
* [ ] Existing working functionality has not knowingly been broken.

Testing does not have to be sophisticated.

> **A simple meaningful test is better than no test.**

---

## 5. Demonstrability

* [ ] The increment can be demonstrated.
* [ ] The team can explain what was built.
* [ ] The team can explain how it was tested.
* [ ] The result can be compared with the Sprint Goal.

A screenshot, local application, dashboard, API, simulation, prediction or other appropriate working output may constitute a demonstration.

---

## 6. Documentation

* [ ] Important implementation decisions are recorded.
* [ ] Required instructions have been updated.
* [ ] Known limitations are documented.
* [ ] New assumptions or dependencies are recorded where necessary.

Documentation should be **minimal but sufficient**.

---

# Definition of Done — Final Check

Before declaring an item or Sprint increment **Done**, ask:

``
Does it satisfy the requirement?
            ↓
Is it implemented?
            ↓
Has it been tested?
            ↓
Does it produce the expected result?
            ↓
Can we demonstrate it?
            ↓
Can we explain its limitations?
            ↓
YES → DONE
```

If a critical answer is **No**, the work should normally remain **Incomplete** or return to the backlog.

## Important Principle

> **"Almost finished" is not Done.**

However, incomplete work is not failure.

Record what remains, return it to the Product Backlog, and allow the team to prioritise it for a future Sprint.

### Team Rule

**Done = Implemented + Tested + Demonstrable + Understood**

The Definition of Done protects **quality, transparency and trust** throughout the product lifecycle.
