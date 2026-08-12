# Example Incident

> **A worked example showing how an operational incident is detected, investigated, mitigated, resolved and converted into engineering learning.**

---

## 1. Incident Identity

**Incident ID:**
INC-001

**Title:**
Student Request Submission Failures

**Product:**
Smart Campus Service Portal

**Environment:**
Production

**Severity:**
High

**Status:**
Resolved

---

## 2. Incident Summary

Shortly after deployment of the Smart Campus Service Portal, students begin reporting that service requests cannot be submitted.

The service catalogue and request forms remain accessible, but submitting a request results in an error.

### User Impact

Students cannot complete the primary service-request workflow.

### Operational Impact

Service staff receive fewer new requests because submissions are failing.

---

## 3. Detection

The incident is detected through two channels:

1. Automated application error monitoring.
2. Student reports submitted through the support channel.

The monitoring system shows an increase in request-submission failures shortly after the latest deployment.

---

## 4. Initial Assessment

### Observed Behaviour

``
Student Login
      ↓
Service Catalogue      ✓
      ↓
Service Details        ✓
      ↓
Request Form           ✓
      ↓
Submit Request         ✗
      ↓
Server Error
```

The failure appears isolated to request creation.

---

## 5. Impact Assessment

| Area               | Impact                    |
| ------------------ | ------------------------- |
| Authentication     | No known impact           |
| Service Catalogue  | No known impact           |
| Service Details    | No known impact           |
| Request Submission | Major impact              |
| Existing Requests  | No known impact           |
| Staff Queue        | Reduced incoming requests |
| Data Integrity     | No evidence of corruption |

---

## 6. Timeline

| Time  | Event                                   |
| ----- | --------------------------------------- |
| 10:05 | New release deployed                    |
| 10:12 | First request-submission error detected |
| 10:15 | Monitoring alert triggered              |
| 10:20 | Incident investigation started          |
| 10:30 | Database configuration issue identified |
| 10:38 | Configuration corrected                 |
| 10:42 | Application restarted                   |
| 10:47 | Smoke tests passed                      |
| 10:55 | Error rate returned to normal           |
| 11:05 | Incident closed                         |

---

## 7. Investigation

### Initial Hypotheses

The team considers:

* Application defect
* Database connectivity problem
* Invalid configuration
* Authentication issue
* Database schema mismatch

### Evidence

Application logs show that the request service cannot establish the expected database connection for the request-creation operation.

Authentication and read operations continue to work.

### Finding

The production database connection configuration contains an incorrect connection parameter introduced during deployment.

---

## 8. Root Cause

### Primary Cause

An incorrect production database configuration value prevented the request-creation component from establishing the required database connection.

### Contributing Factors

* Configuration was manually entered.
* Deployment verification covered database connectivity but not the complete write workflow.
* The deployment checklist did not explicitly require a production request-submission test.

---

## 9. Immediate Response

### Containment

The team temporarily prevents further rollout while investigating the problem.

### Mitigation

The incorrect configuration value is corrected.

### Recovery

The application is restarted and the complete request-submission workflow is tested.

---

## 10. Resolution

After correcting the configuration:

``
Request Submission
       ↓
Application
       ↓
Database
       ↓
Request Created
       ↓
Staff Queue
```

The workflow succeeds.

Monitoring confirms that request-submission errors return to normal levels.

---

## 11. Verification

The team performs:

* [x] Student login test
* [x] Service catalogue test
* [x] Service details test
* [x] Request submission test
* [x] Request persistence test
* [x] Staff request visibility test
* [x] Application health check
* [x] Error-rate verification

### Verification Result

**PASS**

---

## 12. Rollback Assessment

A rollback was considered but not required.

### Reason

The application code was functioning correctly and the failure was isolated to configuration.

Correcting the configuration was lower-risk and faster than reverting the complete release.

---

## 13. AI-Assisted Investigation

AI was used to assist with:

* Log interpretation
* Hypothesis generation
* Identification of possible configuration causes
* Construction of candidate diagnostic steps

AI suggested several possible causes.

The engineering team verified each hypothesis against actual logs and environment configuration.

### Important Principle

The AI-generated diagnosis was treated as a **hypothesis**, not as evidence.

The final root cause was established through direct inspection and verification.

---

## 14. Corrective Actions

| Action                                | Owner       | Priority | Status  |
| ------------------------------------- | ----------- | -------- | ------- |
| Add production write-path smoke test  | QA          | High     | Planned |
| Validate configuration automatically  | Engineering | High     | Planned |
| Reduce manual configuration           | Engineering | Medium   | Planned |
| Improve deployment checklist          | Engineering | Medium   | Planned |
| Add configuration validation to CI/CD | Engineering | Medium   | Planned |

---

## 15. Prevention

The team introduces an improved deployment verification sequence:

``
Deployment
    ↓
Application Health
    ↓
Database Connectivity
    ↓
Read Workflow
    ↓
Write Workflow
    ↓
End-to-End Workflow
    ↓
Release Confirmation
```

This provides stronger evidence than checking only whether the application starts successfully.

---

## 16. Lessons Learned

### What Worked Well?

* Monitoring detected the issue quickly.
* Logs provided useful diagnostic information.
* The team isolated the failure to a specific workflow.
* The problem was corrected without a full rollback.

### What Did Not Work Well?

* Production write-path verification was incomplete.
* Configuration depended too heavily on manual input.
* Deployment verification did not fully exercise the critical user journey.

---

## 17. Process Improvement

The team updates the deployment process to require:

* Automated configuration validation.
* Production smoke testing of the critical workflow.
* Explicit verification of write operations.
* Clear rollback criteria.

The incident therefore produces a change in the engineering system rather than merely a record of the failure.

---

## 18. Incident Closure

**Incident Status:**
Closed

**Resolution:**
Production configuration corrected.

**User Impact:**
Request submission restored.

**Data Loss:**
None identified.

**Rollback:**
Not required.

**Follow-Up:**
Preventive engineering actions added to the backlog.

---

## 19. Example Incident Lifecycle

``
Detect
  ↓
Assess
  ↓
Contain
  ↓
Investigate
  ↓
Identify Cause
  ↓
Mitigate
  ↓
Verify
  ↓
Resolve
  ↓
Learn
  ↓
Improve
```

---

## Guiding Principle

> **The purpose of incident management is not merely to restore service; it is to turn operational failure into measurable engineering improvement.**
