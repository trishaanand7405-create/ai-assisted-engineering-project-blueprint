# Engineering Decisions

> **Engineering is a continuous process of making, evaluating and revising decisions.**

Teams make technical decisions throughout the product lifecycle.

A decision may involve technology, architecture, data, models, agents, algorithms, interfaces, testing or deployment.

The objective is not to document every small choice.

> **Record decisions that are important enough to explain later.**

---

## 1. When to Record a Decision

Record a decision when it:

* Significantly affects the product.
* Changes the solution design.
* Introduces an important dependency.
* Involves a meaningful trade-off.
* Creates technical debt.
* Affects quality, security or reliability.
* May need to be revisited later.

Do not create documentation for trivial decisions.

---

## 2. Decision Record

Use this simple structure:

```text id 
DECISION
What did we decide?

CONTEXT
Why did we need to make this decision?

OPTIONS
What alternatives did we consider?

CHOICE
What did we select?

REASON
Why did we select it?

TRADE-OFF
What are the advantages and disadvantages?

IMPACT
What does this decision change?

STATUS
Proposed / Accepted / Superseded
```

Keep each decision record concise.

---

## 3. Example

```text 
DECISION
Use a local Python-based implementation for the first prototype.

CONTEXT
The team needs a working demonstration within the available
workshop environment.

OPTIONS
1. Local Python application
2. Cloud deployment
3. Containerised deployment

CHOICE
Local Python application.

REASON
It can be developed and demonstrated quickly without requiring
additional infrastructure.

TRADE-OFF
Less representative of a production cloud environment.

IMPACT
Deployment can be revisited in a later enhancement.

STATUS
Accepted
```

The example demonstrates **engineering reasoning**, not a mandatory technology choice.

---

## 4. AI-Assisted Decisions

When AI tools contribute to a technical decision, the team should still evaluate the recommendation.

Consider:

* What did the AI suggest?
* What evidence supports the suggestion?
* What alternatives were considered?
* What did the team verify?
* What risks remain?

```text 
AI SUGGESTION
      ↓
TEAM EVALUATION
      ↓
EVIDENCE / TESTING
      ↓
ENGINEERING DECISION
      ↓
RECORDED REASONING
```

> **AI may assist the decision. It does not own the decision.**

---

## 5. Decisions Can Change

Engineering decisions are not permanent.

New evidence may show that a decision should be:

* Improved
* Reversed
* Replaced
* Deferred
* Superseded

When this happens, record the new decision and explain why the earlier decision changed.

This creates a useful engineering history.

---

## Decision Quality Check

Before finalising an important decision:

* [ ] Is the decision clearly stated?
* [ ] Is the context understood?
* [ ] Were reasonable alternatives considered?
* [ ] Is there a clear reason for the choice?
* [ ] Are important trade-offs visible?
* [ ] Are significant impacts understood?
* [ ] Has the decision been validated where appropriate?
* [ ] Is the record concise enough to remain useful?

### Principle

> **Good engineers do not avoid decisions. They make informed decisions, validate them, communicate them and remain willing to change them when evidence changes.**
