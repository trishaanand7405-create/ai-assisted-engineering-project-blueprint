# Quality Principles

> **Quality is a team habit, not a final inspection.**

The following principles guide quality decisions throughout the AI-Assisted Engineering lifecycle.

---

## 1. Quality Starts Early

Do not wait until the end of a Sprint or project to think about quality.

Consider quality when:

* Defining the problem
* Writing requirements
* Designing the solution
* Selecting data
* Implementing code
* Planning tests

Early validation is usually cheaper than late correction.

---

## 2. Quality Is Shared

Every team member contributes to quality.

The Product Owner protects product value.

The Scrum Master supports an effective process.

Engineers protect technical quality.

The entire team participates in validation.

> **No role can transfer its quality responsibility to another role.**

---

## 3. Requirements Must Be Testable

A requirement should be sufficiently clear that the team can determine whether it has been satisfied.

Prefer:

``
REQUIREMENT
     ↓
ACCEPTANCE CRITERIA
     ↓
TEST
     ↓
EVIDENCE
```

Avoid vague requirements that cannot be objectively evaluated.

---

## 4. Prevent Before Correct

The team should prefer preventing defects over repeatedly fixing them.

Examples:

* Validate inputs early.
* Use clear interfaces.
* Keep changes small.
* Review important decisions.
* Automate repeatable checks.
* Test critical behaviour.

---

## 5. Simplicity Is a Quality Attribute

Complexity creates additional opportunities for failure.

Prefer:

* Simple architecture
* Small components
* Clear interfaces
* Minimal dependencies
* Understandable code
* Straightforward workflows

Do not introduce complexity without a reason.

---

## 6. Evidence Over Assumption

A statement such as:

> "It should work."

is not quality evidence.

Prefer:

> "The acceptance test passed with these inputs and produced the expected result."

Evidence may be automated or manual depending on the situation.

---

## 7. Test What Matters

Testing effort should reflect risk and importance.

Prioritise:

* Critical user journeys
* Important business logic
* High-risk integrations
* Data transformations
* Failure conditions
* Security-sensitive behaviour

Do not measure quality by test-count alone.

---

## 8. AI Output Requires Verification

AI-generated output is not automatically trustworthy.

Apply:

``
GENERATE
   ↓
REVIEW
   ↓
VERIFY
   ↓
TEST
   ↓
ACCEPT
```

The greater the potential impact of an error, the stronger the validation should be.

---

## 9. Quality Includes Sustainability

Teams should consider unnecessary:

* Computation
* Storage
* Network traffic
* Dependencies
* Repeated processing
* AI calls

A simpler solution that delivers the same value is often the better engineering solution.

---

## 10. Improve Continuously

Quality problems should become learning opportunities.

Use:

* Sprint Reviews
* Retrospectives
* Defect analysis
* Test results
* User feedback
* Engineering observations

The objective is not merely to fix individual defects.

It is to improve the system that produced them.

---

## Guiding Principle

> **Make quality visible, make it testable and make it everyone's responsibility.**
