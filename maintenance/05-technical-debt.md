# Technical Debt

> **Technical debt is the future cost created by engineering decisions made today.**

Technical debt is not necessarily a mistake.

Sometimes a team deliberately chooses a simpler or faster solution because of time, learning, experimentation or product priorities.

The problem arises when debt becomes **invisible, unmanaged or excessively expensive**.

---

## 1. What Creates Technical Debt?

Technical debt can result from:

* Short-term implementation decisions
* Duplicated code
* Missing tests
* Outdated dependencies
* Temporary workarounds
* Overly complex architecture
* Incomplete documentation
* Deferred refactoring
* Poorly understood requirements

Not every imperfection is technical debt.

---

## 2. Intentional vs. Unintentional Debt

### Intentional debt

The team knowingly chooses a temporary compromise.

Example:

> "We will use the simple implementation for the prototype and revisit it if the product is validated."

This is acceptable when the decision is visible and understood.

### Unintentional debt

Debt emerges without deliberate recognition.

Examples include:

* Accidental complexity
* Duplicated implementations
* Missing tests
* Undocumented dependencies

Unintentional debt is more dangerous because the team may not realise the future cost.

---

## 3. Make Debt Visible

When meaningful debt is identified, record it.

A useful debt item describes:

* The problem
* Why it exists
* Its impact
* Its risk
* Possible improvement
* Appropriate timing

``
DEBT IDENTIFIED
      ↓
IMPACT UNDERSTOOD
      ↓
RECORDED
      ↓
PRIORITISED
      ↓
RESOLVED OR ACCEPTED
```

---

## 4. Prioritising Technical Debt

Not all debt deserves immediate attention.

Consider:

* Frequency of impact
* Severity of impact
* Security implications
* Maintenance cost
* Developer productivity
* Risk of failure
* Cost of fixing it

High-impact debt should receive higher priority.

---

## 5. The Cost of Ignoring Debt

Unmanaged debt can gradually produce:

``
SMALL COMPROMISE
      ↓
MORE COMPLEXITY
      ↓
SLOWER CHANGES
      ↓
MORE DEFECTS
      ↓
HIGHER MAINTENANCE COST
```

Debt tends to become more expensive when repeatedly ignored.

---

## 6. Technical Debt and AI

AI can both **create and reduce** technical debt.

AI may create debt through:

* Duplicated generated code
* Unnecessary abstractions
* Unused dependencies
* Poorly understood implementations
* Code accepted without review

AI may help reduce debt through:

* Refactoring
* Test generation
* Documentation
* Code analysis
* Dependency analysis

Human engineering judgement remains essential.

---

## 7. Refactor Deliberately

Do not refactor simply because code is imperfect.

A useful question is:

> **Is this problem creating enough risk or cost to justify changing it now?**

When the answer is yes, schedule the work rather than allowing it to remain invisible.

---

## 8. Debt Is a Product Decision

Technical debt competes with other product priorities.

Therefore, debt management should be connected to the Product Backlog and Sprint planning where appropriate.

``
TECHNICAL DEBT
      +
PRODUCT VALUE
      +
RISK
      ↓
PRIORITISATION
```

This keeps technical improvement connected to overall product strategy.

---

## Guiding Principle

> **Technical debt is manageable when it is visible, understood and deliberately prioritised.**

The goal is not **zero technical debt**.

The goal is **controlled technical debt that does not silently become an engineering crisis**.
