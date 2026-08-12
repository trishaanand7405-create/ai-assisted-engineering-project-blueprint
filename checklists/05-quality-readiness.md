# Quality Readiness Checklist

> **Quality should be considered before implementation is complete, not discovered only after release.**

Use this checklist before declaring a product increment ready for release, demonstration or formal acceptance.

---

## 1. Requirements

* [ ] The relevant requirements are understood.
* [ ] Important User Stories are complete.
* [ ] Acceptance Criteria are defined.
* [ ] Expected behaviour is clear.
* [ ] Important assumptions have been validated.
* [ ] Known limitations are documented.

---

## 2. Functional Quality

* [ ] Implemented functionality behaves as expected.
* [ ] Primary user workflows have been tested.
* [ ] Important edge cases have been considered.
* [ ] Error handling has been tested where relevant.
* [ ] Integration points have been verified.
* [ ] No known critical functional defect remains.

---

## 3. Testing

* [ ] Relevant unit tests have been executed.
* [ ] Relevant integration tests have been executed.
* [ ] Acceptance tests have been performed.
* [ ] Regression checks have been performed where appropriate.
* [ ] Test failures have been investigated.
* [ ] Required test evidence is available.

---

## 4. Non-Functional Quality

Where relevant:

* [ ] Performance expectations have been considered.
* [ ] Security expectations have been considered.
* [ ] Usability has been reviewed.
* [ ] Accessibility has been considered.
* [ ] Reliability expectations have been considered.
* [ ] Resource usage is acceptable.

Not every project requires every check. Apply the appropriate level of quality for the product and its risk.

---

## 5. Code and Design Quality

* [ ] Code has been reviewed.
* [ ] Important design decisions are understood.
* [ ] Unnecessary complexity has been avoided.
* [ ] Significant technical debt is visible.
* [ ] Dependencies are understood.
* [ ] No unnecessary secrets or sensitive information are present.
* [ ] Important warnings or known risks have been reviewed.

---

## 6. AI-Assisted Quality

* [ ] AI-generated code has been reviewed.
* [ ] AI-generated tests have been evaluated.
* [ ] AI-generated documentation has been checked.
* [ ] AI-generated claims have been verified.
* [ ] AI-generated dependencies have been reviewed.
* [ ] Human engineering judgement has been applied to important decisions.

> **AI assistance does not constitute quality evidence by itself.**

---

## 7. Documentation

* [ ] User-facing documentation is sufficient.
* [ ] Setup instructions are accurate.
* [ ] Important configuration is documented.
* [ ] Known limitations are recorded.
* [ ] Relevant technical documentation is updated.
* [ ] Documentation matches the actual product behaviour.

---

## 8. Defects and Risks

* [ ] Known defects have been reviewed.
* [ ] Critical defects are resolved or explicitly accepted.
* [ ] Remaining risks are understood.
* [ ] Workarounds are documented where necessary.
* [ ] Significant technical debt is visible.
* [ ] Release-impacting risks have an owner or decision.

---

## 9. Quality Evidence

The team should be able to demonstrate:

* [ ] What was tested.
* [ ] What passed.
* [ ] What failed.
* [ ] What remains known.
* [ ] What evidence supports the quality decision.

Evidence should be proportional to project risk.

---

## 10. Quality Decision

### Ready

The product increment has sufficient evidence to proceed.

### Ready With Known Limitations

The remaining issues are understood, documented and consciously accepted.

### Not Ready

Critical quality concerns remain unresolved or insufficiently understood.

---

## Final Questions

Before accepting the increment:

* [ ] Does it do what we intended?
* [ ] Does it work for the intended users?
* [ ] Have the important risks been tested?
* [ ] Do we have sufficient evidence?
* [ ] Are remaining limitations understood?
* [ ] Would we be comfortable demonstrating or releasing it?

---

## Guiding Principle

> **Quality readiness means having enough evidence and understanding to make a responsible decision—not proving that the product is perfect.**
