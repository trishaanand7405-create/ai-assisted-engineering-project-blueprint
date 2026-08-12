# Monitoring and Observability

> **You cannot reliably maintain what you cannot observe.**

Monitoring and observability help a team understand how a product behaves after deployment.

They provide evidence about system health, user-facing behaviour and emerging problems.

---

## 1. Monitoring vs. Observability

These concepts are related but different.

**Monitoring** asks:

> Is the system behaving within expected conditions?

**Observability** asks:

> What can we learn about the system's internal behaviour from the information it produces?

Both support effective maintenance.

---

## 2. What to Observe

The appropriate signals depend on the product.

Examples include:

* Application availability
* Response time
* Error rates
* Resource usage
* Failed operations
* Important business events
* User-facing failures

Do not collect information simply because it is technically possible.

Collect information that helps the team make decisions.

---

## 3. Logs

Useful logs should help engineers understand what happened.

Good logging generally provides:

* Timestamp
* Event or operation
* Relevant context
* Severity
* Error information where applicable

Avoid logging:

* Passwords
* API keys
* Access tokens
* Sensitive personal information

---

## 4. Metrics

Metrics provide measurable signals about system behaviour.

Examples:

``
REQUESTS
   ↓
SUCCESS / FAILURE
   ↓
RESPONSE TIME
   ↓
RESOURCE USAGE
```

Metrics should have a clear purpose.

A large number of metrics does not automatically produce better observability.

---

## 5. Alerts

Alerts should identify conditions that require attention.

Good alerts should be:

* Relevant
* Actionable
* Understandable
* Proportional to risk

Avoid creating alerts that trigger frequently without requiring action.

> **An alert should tell the team that something needs attention—not simply that something changed.**

---

## 6. Health Checks

A simple health check can provide an early indication that an application is operational.

Depending on the system, this might verify:

* Application process
* Database connectivity
* Required service availability
* Critical configuration
* Basic application functionality

Health checks should remain simple and reliable.

---

## 7. Observability and AI

AI can assist engineers by:

* Summarising logs
* Identifying unusual patterns
* Suggesting possible causes
* Grouping related errors
* Generating diagnostic hypotheses

AI analysis should be treated as an investigation aid.

It should not be treated as definitive evidence without verification.

---

## 8. Privacy and Security

Observability data can itself become sensitive.

Teams should consider:

* What information is collected
* Where it is stored
* Who can access it
* How long it is retained
* Whether sensitive information is masked

> **Observe enough to operate responsibly, but do not collect information without purpose.**

---

## 9. From Signal to Action

Monitoring becomes useful when it leads to an engineering response:

``
SIGNAL
  ↓
OBSERVE
  ↓
INTERPRET
  ↓
ACT
  ↓
VERIFY
  ↓
LEARN
```

The objective is not to create dashboards for their own sake.

The objective is to help the team **understand, respond and improve**.

---

## Guiding Principle

> **Make important system behaviour visible, keep signals purposeful and turn observations into informed engineering decisions.**
