# Defect and Incident Management

> **A defect is a product problem. An incident is a situation requiring an operational response.**

Effective maintenance requires a disciplined way to identify, understand, prioritise and resolve problems.

The objective is not merely to fix symptoms. The team should also learn from significant failures.

---

## 1. Defects and Incidents

A **defect** is behaviour that does not conform to an intended requirement or expected behaviour.

An **incident** is an operational event that causes, or may cause, unacceptable impact to users or the system.

They may overlap, but they are not identical.

``
DEFECT
  ↓
MAY CAUSE
  ↓
INCIDENT
```

A defect can exist without causing an immediate operational incident.

---

## 2. Identify the Problem

When a problem occurs, capture enough information to understand it.

Useful information includes:

* What happened?
* When did it happen?
* Who or what was affected?
* What was expected?
* What actually happened?
* Can it be reproduced?
* What changed recently?
* What evidence is available?

Avoid immediately assuming the cause.

---

## 3. Severity and Priority

Not every problem requires the same response.

Consider:

* User impact
* Business impact
* Number of affected users
* Data impact
* Security implications
* Availability
* Workaround availability

A simple classification might be:

``
CRITICAL
HIGH
MEDIUM
LOW
```

Severity describes **impact**.

Priority describes **how urgently the team should act**.

---

## 4. Incident Response

For a significant incident:

``
DETECT
  ↓
ASSESS
  ↓
CONTAIN
  ↓
RECOVER
  ↓
VERIFY
  ↓
LEARN
```

The immediate objective is to reduce harm and restore acceptable service.

Detailed investigation can continue after stability has been restored.

---

## 5. Root Cause

Teams should distinguish between:

* Symptom
* Immediate cause
* Contributing factors
* Root cause

For example:

``
USER SEES ERROR
      ↓
SERVICE FAILS
      ↓
INVALID CONFIGURATION
      ↓
CONFIGURATION CHANGE NOT VALIDATED
```

The final item may reveal an engineering-process problem rather than merely a coding error.

---

## 6. Fix the Cause Where Practical

A temporary workaround may restore service quickly.

However, the team should determine whether a permanent correction is required.

Possible actions include:

* Code correction
* Configuration correction
* Test improvement
* Monitoring improvement
* Documentation update
* Process improvement
* Architecture change

---

## 7. AI-Assisted Diagnosis

AI can help engineers:

* Analyse logs
* Summarise error patterns
* Generate hypotheses
* Suggest reproduction steps
* Identify related code
* Propose possible fixes

AI output should remain a **hypothesis until verified**.

Do not provide confidential information to AI systems unnecessarily.

---

## 8. Learning Without Blame

Incident analysis should focus on improving the system rather than assigning personal blame.

Ask:

* What allowed the problem to occur?
* Why was it not detected earlier?
* What made recovery difficult?
* What can prevent recurrence?
* What can make future diagnosis faster?

This produces stronger engineering practices.

---

## 9. From Problem to Improvement

A significant defect or incident should potentially create follow-up work:

``
PROBLEM
   ↓
INVESTIGATION
   ↓
CORRECTION
   ↓
VERIFICATION
   ↓
LEARNING
   ↓
BACKLOG IMPROVEMENT
```

This closes the feedback loop between maintenance and product development.

---

## Guiding Principle

> **Restore stability quickly, investigate responsibly and use failures to strengthen the engineering system.**
