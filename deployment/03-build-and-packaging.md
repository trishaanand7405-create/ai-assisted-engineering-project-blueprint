# Build and Packaging

> **A build turns source into a reproducible artefact that can be tested, deployed and identified.**

Build and packaging practices make deployment more predictable.

The exact mechanism depends on the technology used by the project, but the underlying principles remain the same.

---

## 1. Source to Artefact

A simple flow is:

``
SOURCE CODE
     ↓
DEPENDENCIES
     ↓
BUILD
     ↓
PACKAGE
     ↓
ARTEFACT
     ↓
TEST
     ↓
DEPLOY
```

The resulting artefact should represent a known version of the product.

---

## 2. Reproducible Builds

A build should be repeatable.

The team should know:

* What source version was built
* Which dependencies were used
* Which build commands were executed
* Which configuration was required
* Where the resulting artefact is stored

Avoid undocumented manual build steps.

---

## 3. Packaging

Packaging creates a deployable unit.

Depending on the project, this could be:

* Python package
* Web application bundle
* Container image
* Executable
* Static site
* Application archive

Use the simplest packaging approach appropriate for the project.

---

## 4. Version Identification

Every deployable artefact should be identifiable.

Useful identifiers include:

* Version number
* Git commit
* Release tag
* Build number

For example:

``
PRODUCT
  ↓
VERSION
  ↓
BUILD
  ↓
ARTEFACT
  ↓
DEPLOY
```

This helps the team determine exactly what is running.

---

## 5. Build Validation

A successful build does not automatically mean the product works.

After building, perform appropriate checks:

* Build completes successfully
* Required files exist
* Dependencies resolve
* Application starts
* Basic tests pass

Build failures should be investigated rather than bypassed.

---

## 6. Minimise Build Complexity

A build process should be:

* Simple
* Documented
* Repeatable
* Fast enough for the project
* Easy for another team member to execute

Avoid introducing sophisticated build infrastructure when a simple command sequence is sufficient.

> **Build automation should remove repetition, not create ceremony.**

---

## 7. AI-Assisted Build Work

AI can help generate:

* Build scripts
* Packaging configuration
* Dependency files
* CI workflows
* Troubleshooting suggestions
* Build documentation

Review generated scripts carefully.

Build scripts can modify files, install software or execute commands, so blindly running generated commands is inappropriate.

---

## 8. Build Artefact Principle

The team should be able to answer:

1. What source produced this artefact?
2. What version is it?
3. What dependencies were used?
4. How was it built?
5. Has it been tested?
6. Can we reproduce it?

If these questions cannot be answered, the deployment process needs improvement.

---

## Guiding Principle

> **Build once from a known source state, identify the resulting artefact and deploy something the team can reproduce.**
