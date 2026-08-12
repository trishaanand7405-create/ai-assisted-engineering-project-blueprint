# Incident Record Template

> **Use this template to document significant incidents, their impact, response, resolution and learning.**

An Incident Record should capture facts and decisions clearly enough that the team can understand what happened, how it was handled and what should change as a result.

---

## 1. Incident Identity

**Incident ID:**
INC-[number]

**Title:**
[Concise incident title]

**Date / Time Detected:**
[Date and time]

**Date / Time Resolved:**
[Date and time]

**Severity:**
[Critical / High / Medium / Low]

**Status:**
[Open / Investigating / Mitigated / Resolved / Closed]

**Incident Owner:**
[Person / Role]

---

## 2. Incident Summary

### What Happened?

[Provide a concise factual description of the incident.]

### Impact

[Describe who or what was affected.]

### Duration

[State the duration of the impact.]

### Current Status

[Describe the current state.]

---

## 3. Detection

**How Was the Incident Detected?**

[Monitoring / User Report / Testing / Manual Observation / Other]

**Detection Evidence:**

[Reference relevant logs, metrics, alerts, reports or other evidence.]

---

## 4. Impact Assessment

| Area                  | Impact   |
| --------------------- | -------- |
| Users                 | [Impact] |
| Product Functionality | [Impact] |
| Data                  | [Impact] |
| Performance           | [Impact] |
| Availability          | [Impact] |
| Security              | [Impact] |
| Other                 | [Impact] |

---

## 5. Timeline

| Time   | Event / Action |
| ------ | -------------- |
| [Time] | [Event]        |
| [Time] | [Event]        |
| [Time] | [Event]        |
| [Time] | [Event]        |

Keep the timeline factual and chronological.

---

## 6. Investigation

### Initial Hypothesis

[Describe the initial understanding of the problem.]

### Evidence

* [Evidence]
* [Evidence]
* [Evidence]

### Findings

[Describe what the investigation established.]

---

## 7. Root Cause

### Primary Cause

[Describe the confirmed root cause.]

### Contributing Factors

* [Factor]
* [Factor]
* [Factor]

Avoid assigning blame. Focus on the conditions that allowed the incident to occur.

---

## 8. Immediate Response

### Containment

[Describe actions taken to limit impact.]

### Mitigation

[Describe actions taken to restore acceptable operation.]

### Recovery

[Describe actions taken to restore the system fully.]

---

## 9. Resolution

### Corrective Action

[Describe the change that resolved the incident.]

### Verification

[Describe how the resolution was verified.]

### Result

[Describe the final outcome.]

---

## 10. AI-Assisted Investigation

**AI Used?**
[Yes / No]

### AI Contribution

[Describe how AI assisted with analysis, diagnosis, log interpretation or remediation.]

### Verification

[Describe how AI-generated hypotheses or recommendations were verified.]

> **AI-generated incident analysis must be treated as a hypothesis until supported by evidence.**

---

## 11. Follow-Up Actions

| Action   | Type                                    | Owner   | Priority   | Due    |
| -------- | --------------------------------------- | ------- | ---------- | ------ |
| [Action] | [Corrective / Preventive / Improvement] | [Owner] | [Priority] | [Date] |
| [Action] | [Corrective / Preventive / Improvement] | [Owner] | [Priority] | [Date] |

---

## 12. Prevention

What should change to reduce the likelihood or impact of recurrence?

* [Prevention action]
* [Prevention action]
* [Prevention action]

Possible areas include:

* Testing
* Monitoring
* Architecture
* Deployment
* Documentation
* Process
* Training
* Automation

---

## 13. Lessons Learned

### What Worked Well?

* [Observation]
* [Observation]

### What Did Not Work Well?

* [Observation]
* [Observation]

### What Should Change?

* [Improvement]
* [Improvement]

---

## 14. Communication

### Stakeholders Notified

* [Stakeholder]
* [Stakeholder]

### Communication Summary

[Summarise important communications.]

---

## 15. Closure Review

Before closing the incident:

* [ ] Impact is understood.
* [ ] Root cause is understood sufficiently.
* [ ] Service or product behaviour is restored.
* [ ] Resolution has been verified.
* [ ] Follow-up actions are recorded.
* [ ] Owners are assigned.
* [ ] Important lessons are documented.
* [ ] Required stakeholders have been informed.

---

## 16. Closure

**Incident Status:**
[Closed / Monitoring]

**Closed By:**
[Person / Role]

**Closure Date:**
[Date]

**Final Summary:**
[Concise final statement.]

---

## Guiding Principle

> **An incident record should help the team learn and improve, not merely document that something went wrong.**
