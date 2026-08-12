# Engineering Decision Record Template

> **Use this template to capture significant engineering decisions, their context and their consequences.**

An Engineering Decision Record (EDR) should be used when a decision is important enough that future team members may need to understand **why** it was made.

---

## 1. Decision Identity

**Decision ID:**
EDR-[number]

**Title:**
[Concise decision title]

**Date:**
[Date]

**Status:**
[Proposed / Accepted / Rejected / Superseded]

**Decision Owner:**
[Person / Role]

**Related Project:**
[Project name]

---

## 2. Context

### Problem or Situation

[Describe the engineering problem, requirement or situation that requires a decision.]

### Why Is a Decision Needed?

[Explain why the current situation cannot simply continue without making a decision.]

---

## 3. Decision Drivers

The decision should consider:

* [Driver]
* [Driver]
* [Driver]

Examples:

* Maintainability
* Security
* Performance
* Simplicity
* Cost
* Reliability
* Compatibility
* Developer experience
* Sustainability

---

## 4. Options Considered

### Option A — [Name]

**Description:**
[Describe the option.]

**Advantages:**

* [Advantage]
* [Advantage]

**Disadvantages:**

* [Disadvantage]
* [Disadvantage]

---

### Option B — [Name]

**Description:**
[Describe the option.]

**Advantages:**

* [Advantage]
* [Advantage]

**Disadvantages:**

* [Disadvantage]
* [Disadvantage]

---

### Option C — [Name]

**Description:**
[Describe the option.]

**Advantages:**

* [Advantage]
* [Advantage]

**Disadvantages:**

* [Disadvantage]
* [Disadvantage]

---

## 5. Decision

### Selected Option

> **[State the selected option.]**

### Decision Statement

[Clearly describe what the team has decided to do.]

---

## 6. Rationale

[Explain why this option was selected over the alternatives.]

The rationale should focus on the decision drivers rather than personal preference.

---

## 7. Consequences

### Positive Consequences

* [Consequence]
* [Consequence]
* [Consequence]

### Negative Consequences

* [Consequence]
* [Consequence]

### Trade-offs

[Describe the important trade-offs accepted by the team.]

---

## 8. Risks

| Risk   | Impact   | Mitigation   |
| ------ | -------- | ------------ |
| [Risk] | [Impact] | [Mitigation] |
| [Risk] | [Impact] | [Mitigation] |

---

## 9. AI-Assisted Decision Support

### AI Used?

[Yes / No]

### AI Contribution

[Describe how AI assisted the decision, if applicable.]

Examples:

* Option exploration
* Technical research
* Code analysis
* Documentation analysis
* Trade-off identification

### Human Verification

[Describe how AI-generated information was verified.]

> **AI assistance supports decision preparation; it does not constitute decision authority.**

---

## 10. Implementation Impact

### Components Affected

* [Component]
* [Component]

### Documentation Affected

* [Document]
* [Document]

### Testing Affected

* [Test]
* [Test]

### Deployment / Operations Impact

[Describe relevant operational implications.]

---

## 11. Reversal Conditions

The decision should be reconsidered if:

* [Condition]
* [Condition]
* [Condition]

This section is particularly important for decisions involving significant architectural or technology commitments.

---

## 12. Related Decisions

| Decision ID | Relationship                           |
| ----------- | -------------------------------------- |
| [EDR-ID]    | [Related decision]                     |
| [EDR-ID]    | [Supersedes / Depends on / Influences] |

---

## 13. Review

**Review Trigger:**
[Condition requiring review]

**Review Date:**
[Date]

**Reviewed By:**
[Person / Role]

**Review Outcome:**
[Continue / Modify / Supersede / Reverse]

---

## 14. Final Record

**Status:**
[Accepted / Rejected / Superseded]

**Approved By:**
[Person / Role]

**Approval Date:**
[Date]

**Notes:**
[Additional context]

---

## Guiding Principle

> **Record important engineering decisions so that future engineers can understand not only what was chosen, but why it was chosen and what trade-offs were accepted.**
