# Deployment Process

> **A deployment process should be repeatable, observable and reversible.**

Deployment should follow a known sequence rather than depend on memory or improvised commands.

The process may be simple for a student project, but the engineering discipline should remain the same.

---

## 1. Deployment Flow

``
PREPARE
   ↓
BUILD
   ↓
TEST
   ↓
PACKAGE
   ↓
DEPLOY
   ↓
VERIFY
   ↓
RECORD
```

Each stage has a clear purpose.

---

## 2. Prepare

Before deployment:

* Confirm the target environment.
* Confirm the version being deployed.
* Check required configuration.
* Confirm dependencies.
* Review known issues.
* Ensure the required artefact is available.

Do not begin deployment without knowing what is being deployed and where.

---

## 3. Build and Test

Use the established build process.

Confirm that:

* The source version is correct.
* The build succeeds.
* Relevant tests pass.
* The artefact is identifiable.

A deployment should not be used as a substitute for testing.

---

## 4. Deploy

Perform the deployment using documented steps.

Depending on the project, this may involve:

* Copying an application
* Installing a package
* Updating a service
* Starting a container
* Publishing a web application
* Updating a static site

Use the simplest appropriate mechanism.

---

## 5. Verify

Immediately after deployment, perform basic verification.

Check:

* Application starts.
* Expected endpoint is available.
* Important functionality works.
* Required data or services are accessible.
* No obvious deployment errors are present.

``
DEPLOY
   ↓
SMOKE TEST
   ↓
VERIFY
   ↓
ACCEPT / RECOVER
```

---

## 6. Record

Record enough information to identify what happened.

Useful information includes:

* Version
* Date
* Environment
* Deployment result
* Important changes
* Known issues

For a small workshop project, this may be a simple entry in project documentation.

---

## 7. Failed Deployment

If deployment fails:

1. Stop further changes.
2. Identify the failure.
3. Preserve useful error information.
4. Determine whether recovery is possible.
5. Restore the previous known-good state when necessary.
6. Record the problem.
7. Investigate before attempting again.

Do not repeatedly execute commands without understanding the failure.

---

## 8. AI Assistance

AI can assist with:

* Deployment commands
* Script creation
* Configuration troubleshooting
* Log interpretation
* Deployment documentation

Treat generated commands as potentially unsafe until reviewed.

Before executing a command, understand:

* What it changes
* Where it operates
* What permissions it requires
* Whether it can be reversed

---

## Guiding Principle

> **A good deployment is not merely successful; it is understandable, verifiable and recoverable.**
