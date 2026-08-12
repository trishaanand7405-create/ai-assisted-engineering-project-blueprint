# AI-Assisted Testing

> **Use AI to increase test coverage and test thinking — not to manufacture confidence.**

AI can help engineers identify test cases, generate test code, analyse failures and explore edge conditions.

The team remains responsible for deciding whether the product is actually fit for purpose.

---

## 1. AI Testing Loop

Use a simple cycle:

``
REQUIREMENT
    ↓
TEST IDEA
    ↓
AI ASSISTANCE
    ↓
ENGINEER REVIEW
    ↓
EXECUTE TEST
    ↓
ANALYSE RESULT
    ↓
FIX / ACCEPT
```

AI output is a testing aid, not test evidence by itself.

---

## 2. Test Case Generation

AI can help generate scenarios for:

* Normal inputs
* Invalid inputs
* Boundary conditions
* Missing data
* Unexpected behaviour
* Error conditions
* User workflows

The team should compare generated tests with the actual Acceptance Criteria.

---

## 3. Test Code

AI can assist with:

* Unit tests
* Integration tests
* API tests
* Data validation tests
* Regression tests
* Test fixtures

Before accepting generated tests, verify that they test meaningful behaviour rather than merely increasing the number of test lines.

---

## 4. Edge-Case Thinking

One of AI's useful roles is helping teams ask:

> **What could go wrong?**

For example:

* What if the input is empty?
* What if the data is malformed?
* What if a model returns an unexpected result?
* What if an API is unavailable?
* What if an agent produces an invalid response?
* What happens at a boundary condition?

The team decides which scenarios actually matter.

---

## 5. Failure Analysis

When a test fails, AI can help:

* Explain error messages
* Analyse stack traces
* Suggest possible causes
* Propose debugging approaches
* Suggest additional tests

The engineer must reproduce and verify the problem.

``
AI SUGGESTION
     ↓
ENGINEER INVESTIGATION
     ↓
REPRODUCE
     ↓
FIX
     ↓
RETEST
```

---

## 6. AI Does Not Prove Quality

Never treat:

* AI-generated tests
* AI-generated explanations
* Passing generated tests
* AI confidence statements

as proof that the product is correct.

Quality requires evidence from appropriate validation.

---

## 7. Test the AI-Assisted Parts

If AI-generated code, models or workflows are part of the product, test their actual behaviour.

For AI-related systems, consider:

* Consistency
* Unexpected outputs
* Invalid inputs
* Hallucinated information
* Failure handling
* Reproducibility where applicable

---

## Guiding Principle

> **AI can help us discover what to test. Only executed evidence tells us what actually happened.**

The engineering team remains accountable for the quality of the product.
