# Deployment

> **Deploy deliberately, verify immediately and keep recovery possible.**

This folder defines the deployment practices used by the AI-Assisted Engineering Project Blueprint.

Deployment is treated as an **engineering discipline**, not simply the act of moving files or starting an application.

The objective is to make deployment **repeatable, understandable, verifiable and recoverable**.

---

## Folder Contents

| Document                                                                  | Purpose                                                             |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| [01 — Deployment Overview](01-deployment-overview.md)                     | Establishes the deployment lifecycle and core principles            |
| [02 — Environment and Configuration](02-environment-and-configuration.md) | Defines environment, dependency, configuration and secret practices |
| [03 — Build and Packaging](03-build-and-packaging.md)                     | Defines reproducible builds and deployable artefacts                |
| [04 — Deployment Process](04-deployment-process.md)                       | Defines the practical deployment sequence                           |
| [05 — Deployment Verification](05-deployment-verification.md)             | Defines post-deployment verification and evidence                   |
| [06 — Rollback and Recovery](06-rollback-and-recovery.md)                 | Defines recovery strategies when deployment fails                   |

---

## Deployment Lifecycle

The complete deployment flow is:

``
SOURCE
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
RELEASE
   ↓
MONITOR
   ↓
RECOVER / IMPROVE
```

Deployment therefore connects engineering and quality with the operational life of the product.

---

## Core Deployment Principles

### 1. Know What You Are Deploying

Every deployment should identify the version or artefact being released.

### 2. Know Where You Are Deploying

Understand the target environment and its configuration.

### 3. Make Deployment Repeatable

Avoid undocumented manual procedures that depend on individual team members.

### 4. Verify Immediately

A completed deployment command is not proof that the application works.

### 5. Protect Secrets

Credentials and sensitive configuration must never be casually embedded in source code or deployment artefacts.

### 6. Keep Recovery Possible

Every meaningful deployment should have a reasonable recovery path.

---

## Relationship with Other Blueprint Areas

Deployment follows naturally from the preceding engineering disciplines:

``
product/
    ↓
engineering/
    ↓
ai-assisted-engineering/
    ↓
quality/
    ↓
deployment/
    ↓
maintenance/
```

The sequence answers:

``
WHAT SHOULD WE BUILD?
        ↓
HOW SHOULD WE BUILD IT?
        ↓
HOW CAN AI ASSIST?
        ↓
HOW DO WE KNOW IT IS GOOD?
        ↓
HOW DO WE RELEASE IT?
        ↓
HOW DO WE OPERATE AND IMPROVE IT?
```

---

## AI and Deployment

AI can be useful for:

* Generating deployment scripts
* Explaining configuration
* Troubleshooting failures
* Analysing logs
* Drafting deployment documentation
* Suggesting verification steps

But deployment commands can have real system consequences.

Therefore:

> **Understand and review AI-generated deployment instructions before executing them.**

---

## Appropriate Complexity

This blueprint does not require students to implement enterprise-scale DevOps infrastructure.

The deployment approach should be proportional to:

* Project size
* Product risk
* Technology
* Target environment
* Team capability

A simple, documented deployment process is preferable to a sophisticated process that the team does not understand.

---

## Guiding Principle

> **Build reproducibly. Deploy deliberately. Verify objectively. Recover safely.**

A deployment is successful when the team can explain **what was deployed, where it was deployed, how it was verified and how it can be recovered**.
