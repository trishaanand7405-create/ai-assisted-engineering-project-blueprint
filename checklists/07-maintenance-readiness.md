# Maintenance Readiness Checklist

> **Maintenance readiness means the team can observe, diagnose, change and recover the product responsibly after release.**

Use this checklist when establishing or reviewing the ongoing maintenance capability of a product.

---

## 1. Product Operation

* [ ] The deployed version is identifiable.
* [ ] The current operating environment is known.
* [ ] Important dependencies are documented.
* [ ] Required configuration is understood.
* [ ] Operational responsibilities are clear.
* [ ] Known limitations are documented.

---

## 2. Monitoring and Observability

* [ ] Important application behaviour can be observed.
* [ ] Appropriate logs are available.
* [ ] Important errors can be identified.
* [ ] Relevant health checks exist where appropriate.
* [ ] Important metrics are available where needed.
* [ ] Monitoring information is accessible to responsible team members.
* [ ] Sensitive information is not unnecessarily exposed through logs or monitoring.

---

## 3. Defect Management

* [ ] A mechanism exists for reporting defects.
* [ ] Defects contain sufficient information for investigation.
* [ ] Severity and priority can be established.
* [ ] Critical defects have an appropriate response path.
* [ ] Known workarounds are documented.
* [ ] Significant defects can be connected to future engineering work.

---

## 4. Incident Readiness

* [ ] The team knows how to recognise a significant incident.
* [ ] Initial response responsibilities are understood.
* [ ] Containment options are known.
* [ ] Recovery options are understood.
* [ ] Verification steps are available.
* [ ] Significant incidents can be documented and reviewed.

---

## 5. Change and Evolution

* [ ] A process exists for proposing meaningful changes.
* [ ] Change impact can be assessed.
* [ ] Relevant tests can be identified.
* [ ] Compatibility concerns are considered.
* [ ] Significant changes are reviewed.
* [ ] Changes can be traced to their reason or requirement.

---

## 6. Technical Debt

* [ ] Significant technical debt is visible.
* [ ] Important workarounds are documented.
* [ ] High-impact debt can be prioritised.
* [ ] Technical-debt items can enter the Product Backlog.
* [ ] The team understands the risks associated with deferred improvements.
* [ ] Debt is reviewed periodically.

---

## 7. Recovery

* [ ] The current known-good version is identifiable.
* [ ] Rollback or recovery procedures are understood.
* [ ] Important data-recovery considerations are known.
* [ ] Recovery steps have been tested where appropriate.
* [ ] The team knows who can initiate recovery.
* [ ] Post-recovery verification is defined.

---

## 8. AI-Assisted Maintenance

* [ ] AI may be used for appropriate diagnostic and maintenance tasks.
* [ ] AI-generated diagnoses are treated as hypotheses.
* [ ] AI-generated fixes are reviewed and tested.
* [ ] Sensitive operational information is protected.
* [ ] AI-generated changes are traceable to an engineering decision.
* [ ] Human responsibility for maintenance decisions remains clear.

---

## 9. Continuous Improvement

* [ ] User feedback can reach the product team.
* [ ] Incident learnings can produce improvement work.
* [ ] Monitoring observations can influence engineering decisions.
* [ ] Technical debt can be addressed deliberately.
* [ ] Retrospective or improvement activities occur periodically.
* [ ] Improvements are evaluated for actual impact.

---

## 10. Maintenance Readiness Decision

The team should be able to answer:

* [ ] How do we know the product is healthy?
* [ ] How do we discover a problem?
* [ ] How do we investigate it?
* [ ] How do we correct it?
* [ ] How do we recover if the correction fails?
* [ ] How do we prevent recurrence?
* [ ] How do we feed the learning back into product development?

### Ready

The product has a practical maintenance and recovery capability appropriate to its context.

### Not Ready

Important operational, diagnostic or recovery capabilities are missing.

---

## Guiding Principle

> **A product is maintenance-ready when the team can observe it, understand problems, make controlled changes and recover without depending on guesswork.**
