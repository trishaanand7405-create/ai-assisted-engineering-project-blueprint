# Rollback and Recovery

> **A responsible deployment includes a plan for what happens when things go wrong.**

Rollback and recovery provide a controlled way to return a product to a known-good state or restore service after a failed deployment.

The objective is not to eliminate every failure.

The objective is to make failure **manageable, observable and recoverable**.

---

## 1. Recovery Flow

``
PROBLEM DETECTED
      ↓
ASSESS IMPACT
      ↓
STOP / CONTAIN
      ↓
ROLL BACK OR RECOVER
      ↓
VERIFY
      ↓
RECORD
      ↓
IMPROVE
```

The appropriate response depends on the nature and severity of the problem.

---

## 2. When to Roll Back

Rollback should be considered when a deployment introduces a significant problem such as:

* Application failure
* Critical functionality not working
* Severe configuration error
* Data access failure
* Unacceptable performance
* Security-related problem

Not every defect requires immediate rollback.

The decision should consider impact, urgency and available alternatives.

---

## 3. Known-Good State

A rollback is only useful when the team knows what the previous good state was.

Useful identifiers include:

* Previous release version
* Git tag
* Commit identifier
* Previous package
* Previous container image
* Known-good configuration

``
CURRENT RELEASE
      ↓
    FAILURE
      ↓
KNOWN-GOOD RELEASE
      ↓
    VERIFY
```

---

## 4. Recovery vs. Rollback

Rollback is not the only recovery strategy.

Recovery may involve:

* Restarting a service
* Correcting configuration
* Restoring data
* Re-deploying the same version
* Disabling a problematic feature
* Reverting to a previous release

Choose the simplest safe response that restores the required service.

---

## 5. Data Considerations

Rollback becomes more complicated when a deployment changes data.

Before making significant data changes, understand:

* What data is affected
* Whether the change is reversible
* Whether backups exist
* Whether the previous application version can use the changed data

> **Application rollback does not automatically mean data rollback.**

Data recovery requires its own consideration and verification.

---

## 6. Verify Recovery

After rollback or recovery:

* Confirm the intended version is running.
* Execute appropriate smoke tests.
* Verify critical workflows.
* Check important logs.
* Confirm that the original problem is no longer present.

``
RECOVER
   ↓
VERIFY
   ↓
CONFIRM
   ↓
RESUME
```

Never assume that rollback succeeded merely because the command completed.

---

## 7. Learn From Failure

After a significant deployment failure, capture:

* What happened
* What caused it
* How it was detected
* What recovery action was taken
* How long recovery required
* What should change in the future

This turns an operational failure into an engineering learning opportunity.

---

## 8. AI-Assisted Recovery

AI can assist with:

* Log analysis
* Error interpretation
* Recovery-plan suggestions
* Identifying possible causes
* Drafting incident records

However, recovery commands require particular caution.

Before executing an AI-generated recovery command, understand its:

* Scope
* Permissions
* Side effects
* Data impact
* Reversibility

Never experiment blindly against a live environment.

---

## Guiding Principle

> **Deploy with confidence, but always know how you would recover if that confidence proves wrong.**
