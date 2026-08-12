# Example Deployment

> **A worked example showing how the Smart Campus Service Portal is prepared, deployed, verified and, if necessary, rolled back.**

---

## 1. Deployment Identity

**Product:**
Smart Campus Service Portal

**Release:**
v0.1.0 — MVP Increment

**Environment:**
Production

**Deployment Owner:**
Engineering Lead

**Deployment Status:**
Example

---

## 2. Deployment Objective

Deploy the validated Sprint 1 increment so that the core student-to-staff request workflow becomes available in the target environment.

The deployed functionality includes:

* Student authentication
* Service catalogue
* Service details
* Request submission
* Request persistence
* Staff request queue
* Request access control

---

## 3. Deployment Preconditions

Before deployment, confirm:

* [ ] Release scope is agreed.
* [ ] Acceptance Criteria are satisfied.
* [ ] Required tests pass.
* [ ] No unresolved release-blocking defects exist.
* [ ] Required configuration is available.
* [ ] Database changes have been reviewed.
* [ ] Deployment procedure has been reviewed.
* [ ] Rollback procedure is understood.
* [ ] Required stakeholders have been informed.

---

## 4. Release Artefact

The release is identified as:

``
Smart Campus Service Portal
        │
        └── v0.1.0
              │
              ├── Source Revision
              ├── Application Package
              ├── Configuration
              └── Database Migration
```

The exact release artefact should be traceable to a known source revision.

---

## 5. Environment Configuration

The production environment requires:

* Application configuration
* Database connection
* Authentication configuration
* Logging configuration
* Notification configuration

Secrets must be supplied through the approved secret-management mechanism.

They must **not** be committed to source control.

---

## 6. Deployment Sequence

### Step 1 — Confirm Release

Verify that the intended release version and source revision are correct.

### Step 2 — Prepare Environment

Confirm:

* Required runtime is available.
* Required dependencies are installed.
* Configuration is valid.
* Required services are available.

### Step 3 — Apply Database Changes

Run the reviewed database migration.

Verify that the migration completes successfully.

### Step 4 — Deploy Application

Deploy the approved application artefact.

### Step 5 — Start Application

Start or restart the application using the approved deployment mechanism.

### Step 6 — Verify Health

Confirm that the application starts successfully and basic health checks pass.

---

## 7. Deployment Verification

### Technical Verification

* [ ] Application starts successfully.
* [ ] Health endpoint responds.
* [ ] Database connectivity works.
* [ ] Logging is operational.
* [ ] Required configuration is loaded.
* [ ] No unexpected startup errors exist.

### Functional Verification

Execute the critical workflow:

``
Login
  ↓
View Service
  ↓
Submit Request
  ↓
Confirm Request
  ↓
Staff Views Request
```

### Result

**Expected:**
The complete workflow succeeds in the production environment.

---

## 8. Smoke Test

A minimal post-deployment smoke test verifies:

1. Application is reachable.
2. Student can authenticate.
3. Service catalogue loads.
4. Service details load.
5. Request can be submitted.
6. Request appears in staff queue.
7. Access control behaves correctly.

The smoke test should be fast enough to execute immediately after deployment.

---

## 9. Monitoring

After deployment, monitor:

* Application availability
* Error rates
* Response times
* Database errors
* Authentication failures
* Request submission failures
* Application logs

The initial monitoring period should receive increased attention because real usage may reveal conditions not covered during testing.

---

## 10. Example Deployment Issue

During the example deployment, the team notices an increase in request-submission errors.

Investigation identifies a configuration mismatch between the application and the production database.

### Response

1. Stop further rollout.
2. Confirm the configuration issue.
3. Correct the configuration.
4. Restart the affected application component.
5. Repeat smoke tests.
6. Confirm error rates return to normal.

The deployment proceeds only after successful verification.

---

## 11. Rollback Decision

Rollback should be considered if:

* Critical functionality is unavailable.
* Data integrity is at risk.
* Security is compromised.
* Error rates remain unacceptable.
* The deployment cannot be safely corrected within the agreed recovery window.

Rollback should be based on predefined criteria rather than panic or guesswork.

---

## 12. Rollback Example

If the deployment introduces a critical failure:

``
Current Release
      ↓
Failure Detected
      ↓
Rollback Decision
      ↓
Previous Known-Good Release
      ↓
Smoke Test
      ↓
Service Restored
```

Any database changes require a separately reviewed rollback or compatibility strategy.

---

## 13. Deployment Communication

### Before Deployment

Notify relevant stakeholders of:

* Release scope
* Deployment window
* Expected impact
* Responsible personnel
* Rollback approach

### After Deployment

Communicate:

* Deployment result
* Verification result
* Known issues
* Follow-up actions

---

## 14. AI-Assisted Deployment Work

AI may assist with:

* Reviewing deployment checklists
* Generating candidate verification scenarios
* Analysing logs
* Explaining configuration errors
* Drafting deployment documentation

AI must not independently execute production changes unless explicitly authorised through the project's controlled engineering process.

Production actions require human accountability and appropriate verification.

---

## 15. Deployment Evidence

The deployment record should retain:

* Release identifier
* Source revision
* Deployment timestamp
* Environment
* Deployment result
* Smoke-test result
* Relevant logs
* Known issues
* Rollback information, if applicable

This establishes traceability between the released artefact and its operational outcome.

---

## 16. Final Deployment Assessment

**Release:**
v0.1.0

**Deployment:**
Successful

**Smoke Test:**
Passed

**Critical Issues:**
None

**Rollback Required:**
No

**Follow-Up:**
Continue monitoring and collect user feedback.

---

## 17. Lessons Learned

The example demonstrates several important practices:

* Deployment should be treated as an engineering activity.
* Release artefacts must be traceable.
* Verification must occur immediately after deployment.
* Rollback conditions should be known before deployment.
* Configuration deserves the same discipline as application code.
* AI can assist deployment work but should not replace operational accountability.

---

## Guiding Principle

> **A deployment is complete only when the released system has been verified in its target environment and there is evidence that it is operating as intended.**
