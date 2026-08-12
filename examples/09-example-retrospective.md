# Example Retrospective

> **A worked example showing how a team converts Sprint experience into concrete learning and improvement actions.**

---

## 1. Retrospective Identity

**Retrospective:**
Sprint 1 — Core Request Workflow

**Product:**
Smart Campus Service Portal

**Duration Reviewed:**
Two-week Sprint

**Participants:**
Product Owner, UX Designer, Full-Stack Engineer, QA Engineer

**Facilitator:**
Engineering Lead

**Status:**
Completed

---

## 2. Retrospective Purpose

The team reviews Sprint 1 to understand:

* What worked well
* What created friction
* What was learned
* Which practices should change
* Which improvements should be carried into the next Sprint

The objective is improvement, not blame.

---

## 3. Sprint Goal

The Sprint Goal was:

> **Enable a student to discover a campus service and submit a service request that can be viewed and processed by service staff.**

### Outcome

**Achieved**

The team delivered a working end-to-end workflow.

---

## 4. What Went Well?

### 4.1 Small End-to-End Scope

The team focused on a complete workflow rather than attempting to build many disconnected features.

**Learning:**
A small vertical increment provided useful product feedback early.

---

### 4.2 Clear Acceptance Criteria

Acceptance Criteria helped engineering and QA maintain a shared understanding of completion.

**Learning:**
Well-defined outcomes reduced ambiguity during implementation and testing.

---

### 4.3 Simple Architecture

The team avoided unnecessary microservices and infrastructure.

**Learning:**
The modular-monolith approach was sufficient for the current product stage.

---

### 4.4 Early Testing

QA participated throughout the Sprint rather than waiting until the end.

**Learning:**
Early validation exposed issues while they were still inexpensive to correct.

---

## 5. What Did Not Go Well?

### 5.1 Authentication Dependency

The authentication dependency was discovered later than expected.

**Impact:**
Some development work had to be temporarily adjusted.

---

### 5.2 Service Requirements Were Unclear

Some service information requirements changed during implementation.

**Impact:**
The team spent additional time revisiting the service-details workflow.

---

### 5.3 AI-Generated Code Required More Review Than Expected

AI-assisted coding accelerated initial implementation but produced code that required significant human review.

**Impact:**
Additional review and correction effort was required.

---

## 6. What Surprised Us?

The team expected the request form to require several fields.

During refinement, it became clear that many fields were unnecessary for the initial workflow.

### Learning

The smallest useful request model was substantially simpler than the initial proposal.

This reduced implementation effort and improved the user experience.

---

## 7. What Did We Learn?

### Product Learning

Students primarily need:

1. Clear service information.
2. A simple request process.
3. Confirmation that their request was received.
4. Visibility into what happens next.

---

### Engineering Learning

A modular monolith provides sufficient architectural capability for the current product stage.

Introducing distributed architecture now would add complexity without demonstrated benefit.

---

### Quality Learning

Acceptance Criteria should be established before implementation begins.

They provide a useful bridge between product intent and testable behaviour.

---

### AI-Assisted Engineering Learning

AI is useful for accelerating:

* Exploration
* Code scaffolding
* Test generation
* Documentation

However, generated output must be reviewed against the actual product context.

---

## 8. Incident Learning

The Sprint's deployment incident revealed an additional weakness in the release process.

The application health check passed, but the critical write workflow failed because of a configuration issue.

### Learning

> **Application startup is not sufficient evidence of application readiness.**

The deployment process should verify the critical user journey.

---

## 9. What Should We Continue?

* Small vertical increments
* Early QA involvement
* Explicit acceptance criteria
* Simple architecture
* Automated testing
* Evidence-based technical decisions
* Selective AI assistance

---

## 10. What Should We Stop?

### Stop Over-Specifying the MVP

Do not design complex functionality before validating the core workflow.

### Stop Treating AI Output as Finished Work

AI-generated code and documentation must remain subject to engineering review.

### Stop Using Application Startup as the Main Deployment Signal

Operational verification must include meaningful user workflows.

---

## 11. What Should We Start?

### 11.1 Dependency Review During Refinement

Identify technical dependencies before Sprint commitment.

### 11.2 Critical Workflow Smoke Tests

Add production verification of the most important user journey.

### 11.3 Configuration Validation

Automate validation of important environment configuration.

### 11.4 Earlier UX Validation

Review important user workflows before implementation is substantially complete.

---

## 12. Improvement Actions

| Action                              | Owner        | Priority | Target   |
| ----------------------------------- | ------------ | -------- | -------- |
| Add dependency review to refinement | Engineering  | High     | Sprint 2 |
| Add critical workflow smoke test    | QA           | High     | Sprint 2 |
| Automate configuration validation   | Engineering  | High     | Sprint 2 |
| Review service requirements earlier | Product / UX | Medium   | Sprint 2 |
| Establish AI code-review checklist  | Engineering  | Medium   | Sprint 2 |

---

## 13. Improvement Experiment

### Experiment

For the next Sprint, every major User Story will include a lightweight dependency review before Sprint commitment.

### Hypothesis

Earlier identification of dependencies will reduce mid-Sprint disruption.

### Measure

Track:

* Dependencies discovered after Sprint start.
* Work blocked by unknown dependencies.
* Stories requiring significant rework.

### Timebox

One Sprint.

### Owner

Engineering Lead.

---

## 14. Previous Improvement Review

This is the first Sprint retrospective, so there are no previous retrospective actions to review.

Future retrospectives should include this section and explicitly assess whether previous actions produced the intended improvement.

---

## 15. Team Health

| Area                   | Assessment         |
| ---------------------- | ------------------ |
| Collaboration          | Good               |
| Communication          | Good               |
| Product Clarity        | Improving          |
| Engineering Confidence | Good               |
| Quality Confidence     | Good               |
| Delivery Flow          | Improving          |
| AI-Assisted Workflow   | Useful with review |

---

## 16. Key Takeaways

### Most Important Learning

> Small, end-to-end increments produce better learning than large collections of partially completed features.

### Most Important Improvement

> Strengthen dependency and deployment verification.

### Most Important AI Learning

> AI accelerates engineering work, but engineering judgement remains essential.

---

## 17. Sprint 2 Implications

The retrospective does not automatically determine the next Sprint Backlog.

Instead, its findings become input to Product Backlog refinement and Sprint Planning.

Potential areas include:

``
Request Tracking
       │
       ├── Status Management
       ├── Notifications
       └── Improved Student Experience

Engineering Improvements
       │
       ├── Configuration Validation
       ├── Critical Workflow Smoke Tests
       └── Dependency Review
```

The Product Owner and team will prioritise these against current product needs.

---

## 18. Retrospective Outcome

**Sprint Goal:**
Achieved

**Product Increment:**
Delivered

**Major Learning:**
Keep increments small and end-to-end.

**Major Process Improvement:**
Strengthen dependency and deployment verification.

**Next Review:**
End of Sprint 2.

---

## Guiding Principle

> **A retrospective creates value when learning becomes action and action produces measurable improvement.**
