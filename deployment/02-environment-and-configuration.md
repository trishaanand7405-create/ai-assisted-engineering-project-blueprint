# Environment and Configuration

> **A deployment is only reproducible when its environment and configuration are understood.**

Software behaves within an environment.

Operating system, runtime versions, dependencies, configuration, data sources and external services can all affect behaviour.

---

## 1. Know the Environment

Before deployment, identify the important characteristics of the target environment:

* Operating system
* Runtime or language version
* Required libraries
* Application dependencies
* Database or data sources
* Network requirements
* Required services
* Available resources

Do not assume that the deployment environment is identical to the developer's machine.

---

## 2. Environment Separation

Where appropriate, distinguish between:

``
DEVELOPMENT
     ↓
VALIDATION
     ↓
STAGING
     ↓
PRODUCTION
```

For small workshop projects, some environments may be combined.

The important principle is that the team understands **which environment it is changing**.

---

## 3. Configuration

Configuration may include:

* Application settings
* Host and port
* Database location
* File paths
* Feature settings
* Logging level
* External service endpoints

Configuration that changes between environments should not normally require changing application source code.

---

## 4. Dependencies

Record important dependencies and versions where practical.

Examples include:

* Python packages
* Node packages
* System libraries
* Database versions
* Framework versions

Reproducible dependency information helps another team member recreate the environment.

---

## 5. Secrets

Secrets must be protected.

Never place credentials directly into:

* Source code
* Public repositories
* Documentation
* Screenshots
* AI prompts
* Committed configuration files

Examples include:

* Passwords
* API keys
* Access tokens
* Private certificates

Use environment-appropriate secret-management mechanisms.

---

## 6. Configuration vs Code

A useful separation is:

``
APPLICATION CODE
      +
CONFIGURATION
      ↓
RUNNING APPLICATION
```

The same application should ideally be deployable to different environments by changing appropriate configuration rather than modifying its source code.

---

## 7. Local Development

Student teams should document the minimum steps required to reproduce the development environment.

For example:

``
CLONE
  ↓
INSTALL DEPENDENCIES
  ↓
CONFIGURE
  ↓
RUN
  ↓
VERIFY
```

Another team member should be able to follow the instructions without depending on undocumented personal knowledge.

---

## 8. AI Assistance

AI can help engineers:

* Explain configuration files
* Identify missing dependencies
* Generate environment setup instructions
* Troubleshoot configuration errors
* Compare environment differences

However, never paste secrets into an AI tool simply to obtain troubleshooting assistance.

---

## Configuration Principle

> **Make configuration explicit, protect secrets and minimise environment-specific surprises.**

A deployment should be understandable not only to the person who created it, but to the next engineer who needs to run it.
