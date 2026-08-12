# Testing and Validation

> **Testing produces evidence. Validation determines whether the product meets its intended purpose.**

Testing and validation are closely related but serve different purposes.

**Testing** checks whether the product behaves as expected.

**Validation** asks whether the product is actually solving the intended problem.

---

## 1. Testing Levels

A project may use several levels of testing:

| Level       | Purpose                                   |
| ----------- | ----------------------------------------- |
| Unit        | Verify individual functions or components |
| Integration | Verify components work together           |
| System      | Verify the complete application           |
| Acceptance  | Verify agreed requirements                |
| Regression  | Ensure existing behaviour still works     |

Not every project requires every level.

Use the level appropriate to the product and risk.

---

## 2. Test the Requirements

Tests should connect to requirements and Acceptance Criteria.

``
REQUIREMENT
    ↓
ACCEPTANCE CRITERION
    ↓
TEST CASE
    ↓
TEST RESULT
    ↓
EVIDENCE
```

This creates traceability between what the product should do and what was actually verified.

---

## 3. Positive and Negative Testing

Do not test only successful scenarios.

Consider:

### Positive cases

Expected inputs produce expected results.

### Negative cases

Invalid or unexpected inputs are handled appropriately.

### Boundary cases

Behaviour remains correct at important limits.

---

## 4. Test Data

Test data should be:

* Relevant
* Understandable
* Controlled
* Reproducible where practical
* Appropriate for the test objective

Avoid exposing real personal or confidential data unnecessarily.

For workshop projects, synthetic or prepared datasets should normally be preferred.

---

## 5. Validation

A technically correct system can still be the wrong product.

Validation asks:

* Does this solve the intended problem?
* Does it provide the expected user value?
* Does the workflow make sense?
* Are the outputs meaningful?
* Does the product meet its stated goals?

User feedback and Sprint Reviews are important sources of validation.

---

## 6. AI-Assisted Testing

AI can help generate:

* Test ideas
* Test cases
* Test code
* Edge cases
* Failure hypotheses
* Debugging suggestions

However:

> **AI-generated tests are suggestions, not evidence.**

The team must execute and evaluate the tests.

---

## 7. Defect Handling

When a defect is discovered:

1. Record it.
2. Understand the impact.
3. Reproduce it where possible.
4. Identify the cause.
5. Correct the problem.
6. Test the correction.
7. Check for regression.
8. Update the relevant evidence.

Do not simply hide a failing test to make the test suite pass.

---

## 8. Quality Evidence

Useful evidence includes:

* Test results
* Screenshots
* Logs
* Demonstrations
* Validation results
* Performance measurements
* Acceptance results

Evidence should be proportional to the importance and risk of the feature.

---

## Guiding Principle

> **A passing test tells us that a tested condition passed. It does not automatically prove that the product is correct.**

Good quality combines **testing, validation, evidence and engineering judgement**.
