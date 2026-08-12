# AI-Assisted Coding

> **Generate faster. Understand first. Test always.**

AI coding assistants can significantly accelerate implementation, but generated code must be treated as **untrusted engineering input** until reviewed and validated.

---

## 1. The AI Coding Loop

Use a simple cycle:

``
UNDERSTAND
    ↓
PROMPT
    ↓
REVIEW
    ↓
MODIFY
    ↓
TEST
    ↓
INTEGRATE
```

Do not move directly from **Prompt → Commit**.

---

## 2. Give AI Good Context

A useful coding request should provide:

* Objective
* Relevant requirements
* Existing code/context
* Expected input
* Expected output
* Constraints
* Technology/version
* Error information, when debugging

Poor context usually produces poor results.

---

## 3. Ask for Small Changes

Prefer focused requests such as:

* Create one function.
* Add one validation rule.
* Fix one failing test.
* Refactor one component.
* Explain one error.

Avoid asking AI to generate an entire unfamiliar system in one step.

> **Small prompts support small, reviewable changes.**

---

## 4. Review Generated Code

Before accepting AI-generated code, check:

### Correctness

Does it actually solve the requirement?

### Readability

Can another engineer understand it?

### Dependencies

Does it introduce unnecessary libraries?

### Security

Does it create obvious security risks?

### Performance

Does it perform unnecessary computation or data movement?

### Maintainability

Can the team modify it later?

---

## 5. Test Generated Code

Every meaningful AI-generated change should be validated.

Use:

* Unit tests
* Integration tests
* Manual tests
* Input/output checks
* Edge cases
* Existing project tests

A successful execution does not automatically mean the implementation is correct.

---

## 6. Avoid AI-Generated Complexity

Do not accept complexity merely because AI produced it.

Watch for:

* Unnecessary abstractions
* Duplicate code
* Excessive dependencies
* Over-engineered architecture
* Unused functions
* Large generated files
* Hidden assumptions

Apply the project's principle:

> **Clean, Green and Lean.**

---

## 7. Human Ownership

The person accepting AI-generated code should be able to explain:

* What the code does
* Why it is needed
* What assumptions it makes
* How it was tested
* What limitations remain

If the engineer cannot explain the code, it is not ready to be accepted.

---

## Guiding Principle

> **AI can write code faster than a human. It cannot take responsibility for the code.**

The final authority remains:

**Understand → Review → Test → Decide.**
