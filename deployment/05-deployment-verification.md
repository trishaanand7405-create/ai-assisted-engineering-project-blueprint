# Deployment Verification

> **Deployment is not complete until the team has verified that the deployed product works in its target environment.**

A successful deployment command, build pipeline or hosting operation does not by itself prove that the product is usable.

Deployment verification provides evidence that the deployed version is available and behaving as expected.

---

## 1. Verification Flow

``
DEPLOY
   ↓
START
   ↓
SMOKE TEST
   ↓
FUNCTIONAL CHECK
   ↓
ENVIRONMENT CHECK
   ↓
ACCEPT / INVESTIGATE
```

The depth of verification should reflect the product's complexity and risk.

---

## 2. Smoke Testing

A smoke test provides a quick indication that the deployment is operational.

Typical checks include:

* Application starts
* Main endpoint responds
* User interface loads
* Required service is reachable
* Basic workflow completes

Smoke tests should be fast enough to run after every deployment.

---

## 3. Functional Verification

Verify the most important user-facing behaviour.

For example:

``
USER ACTION
    ↓
APPLICATION PROCESSING
    ↓
EXPECTED RESULT
```

Focus first on the workflows that are essential to the Product Goal.

Do not attempt to reproduce every possible test during a basic deployment verification.

---

## 4. Environment Verification

A deployment may behave differently from local development.

Check important environment-specific factors:

* Configuration
* Environment variables
* File paths
* Database connections
* External services
* Network access
* Runtime versions
* Permissions

The purpose is to identify deployment-specific problems early.

---

## 5. Verification Evidence

Useful evidence may include:

* Test results
* Application logs
* Screenshots
* Endpoint responses
* Console output
* Demonstration results

Evidence should be sufficient to support the deployment decision without creating unnecessary documentation overhead.

---

## 6. Failed Verification

If verification fails:

1. Record the failure.
2. Determine whether it is caused by the deployment or the application.
3. Assess impact.
4. Correct or recover as appropriate.
5. Repeat verification.

A deployment that technically completed but fails critical verification should not be considered successfully released.

---

## 7. AI-Assisted Verification

AI can help:

* Generate smoke-test ideas
* Interpret logs
* Suggest diagnostic steps
* Compare expected and observed behaviour
* Draft verification records

AI suggestions must still be checked against the actual deployed environment.

> **Never treat an AI-generated statement such as "deployment looks healthy" as deployment evidence.**

---

## 8. Verification Checklist

Before declaring a deployment successful, ask:

* Is the intended version running?
* Is the application accessible?
* Does the primary workflow work?
* Are required dependencies available?
* Is the environment configured correctly?
* Are there critical errors?
* Has sufficient evidence been captured?

---

## Guiding Principle

> **Verify the product where it actually runs—not merely where it was built.**
