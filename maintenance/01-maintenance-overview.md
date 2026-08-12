# Maintenance Overview

> **A product is not finished when it is deployed. It enters its next stage of engineering.**

Maintenance is the disciplined work required to keep a product useful, reliable, secure and adaptable after release.

It includes more than fixing defects. It also includes monitoring, responding to incidents, managing change, addressing technical debt and continuously improving the product.

---

## 1. The Product Lifecycle Continues

Deployment does not end the engineering lifecycle:

``
BUILD
  ↓
QUALITY
  ↓
DEPLOY
  ↓
OPERATE
  ↓
OBSERVE
  ↓
LEARN
  ↓
IMPROVE
  ↺
```

Maintenance creates the feedback loop between real-world usage and future engineering work.

---

## 2. Types of Maintenance

Maintenance commonly includes:

| Type       | Purpose                                        |
| ---------- | ---------------------------------------------- |
| Corrective | Fix defects and failures                       |
| Adaptive   | Respond to environmental or dependency changes |
| Perfective | Improve functionality or usability             |
| Preventive | Reduce future risks and failures               |

A single change may involve more than one category.

---

## 3. Maintenance Is Planned Work

Maintenance activities should enter the appropriate work-management system.

Examples include:

* Defect reports
* Incident follow-ups
* Dependency updates
* Security improvements
* Performance improvements
* Technical-debt items
* User-requested enhancements

Avoid maintaining important work through informal conversations alone.

---

## 4. Observe Before Changing

When a production problem occurs, resist the temptation to immediately modify code.

First understand:

* What is happening?
* Who is affected?
* When did it begin?
* What changed recently?
* What evidence is available?
* How severe is the impact?

Good maintenance begins with **observation and diagnosis**.

---

## 5. Change Safely

Maintenance changes should follow the same engineering discipline as new development:

``
UNDERSTAND
    ↓
PLAN
    ↓
CHANGE
    ↓
TEST
    ↓
REVIEW
    ↓
DEPLOY
    ↓
VERIFY
```

A small maintenance change can still introduce significant risk.

---

## 6. AI-Assisted Maintenance

AI can assist with:

* Log analysis
* Defect diagnosis
* Code explanation
* Dependency analysis
* Test generation
* Refactoring suggestions
* Documentation updates
* Root-cause investigation

AI-generated explanations and fixes must still be validated against the actual system.

> **AI may suggest the cause. Evidence must establish the cause.**

---

## 7. Maintenance and Technical Debt

Maintenance often reveals accumulated technical debt.

Teams should distinguish between:

* Necessary maintenance
* Valuable improvement
* Technical-debt reduction
* Unnecessary refactoring

Not every imperfect piece of code needs immediate replacement.

Prioritise work according to **value, risk and impact**.

---

## 8. Maintenance as Learning

Real usage provides information that development alone cannot provide.

Teams can learn from:

* User feedback
* Defects
* Incidents
* Performance data
* Support requests
* Monitoring
* Deployment failures

This information should influence future Product Backlog decisions.

---

## Guiding Principle

> **Maintain the product deliberately, learn from real usage and improve it without losing control of complexity.**
