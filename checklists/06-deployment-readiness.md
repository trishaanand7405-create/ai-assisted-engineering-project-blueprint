# Deployment Readiness Checklist

> **A product should be deployed only when the team understands what is being released, where it is going and how success will be verified.**

Use this checklist immediately before deployment.

---

## 1. Release Identification

* [ ] The product version is identified.
* [ ] The source revision or release tag is known.
* [ ] The intended artefact has been identified.
* [ ] The release contents are understood.
* [ ] Known limitations are documented.
* [ ] The team agrees on what is being deployed.

---

## 2. Quality Gate

* [ ] Required tests have passed.
* [ ] Critical defects are resolved or explicitly accepted.
* [ ] Acceptance Criteria have been satisfied.
* [ ] Required quality evidence is available.
* [ ] Known risks have been reviewed.
* [ ] The product is considered ready for deployment.

---

## 3. Environment

* [ ] The target environment is confirmed.
* [ ] Required runtime versions are available.
* [ ] Required dependencies are available.
* [ ] Required services are available.
* [ ] Required configuration is identified.
* [ ] Environment-specific differences are understood.

---

## 4. Configuration and Secrets

* [ ] Required configuration values are available.
* [ ] Configuration has been reviewed.
* [ ] Secrets are stored using an appropriate mechanism.
* [ ] No credentials are embedded in source code.
* [ ] No sensitive information is included in deployment artefacts.
* [ ] Environment-specific settings have been verified.

---

## 5. Build and Artefact

* [ ] The build completes successfully.
* [ ] The intended source revision was used.
* [ ] The deployable artefact is available.
* [ ] The artefact is identifiable.
* [ ] Dependencies are resolved.
* [ ] The deployment process is documented.

---

## 6. Deployment Process

* [ ] Deployment steps are known.
* [ ] Required permissions are available.
* [ ] Deployment dependencies are understood.
* [ ] Potential failure points are identified.
* [ ] Appropriate backup or recovery arrangements exist where required.
* [ ] The team knows who is responsible for the deployment.

---

## 7. Verification

* [ ] Smoke-test steps are prepared.
* [ ] Primary user workflow can be verified.
* [ ] Expected endpoints or services are known.
* [ ] Logs or other verification evidence are available.
* [ ] Post-deployment checks are defined.
* [ ] The team knows what constitutes a successful deployment.

---

## 8. Rollback and Recovery

* [ ] The previous known-good version is identifiable.
* [ ] Rollback or recovery steps are understood.
* [ ] Recovery does not depend on undocumented personal knowledge.
* [ ] Data-impact considerations have been reviewed.
* [ ] The team knows when rollback should be considered.

---

## 9. AI-Assisted Deployment

* [ ] AI-generated deployment commands have been reviewed.
* [ ] AI-generated configuration has been validated.
* [ ] Commands with system-level impact are understood before execution.
* [ ] Sensitive deployment information has not been unnecessarily exposed to AI.
* [ ] Human responsibility for the deployment decision is clear.

> **Never treat AI-generated deployment instructions as automatically safe.**

---

## 10. Final Go / No-Go Decision

Before deployment, the team should be able to answer:

* [ ] What exactly are we releasing?
* [ ] Where are we deploying it?
* [ ] Has it passed the required quality checks?
* [ ] Is the environment ready?
* [ ] How will we verify success?
* [ ] What will we do if deployment fails?

### GO

The deployment conditions are satisfied and the team accepts the remaining risks.

### NO-GO

A critical readiness condition is missing or insufficiently understood.

Do not deploy merely because the planned deployment time has arrived.

---

## Guiding Principle

> **Deploy when the release is understood, the environment is ready, verification is defined and recovery remains possible.**
