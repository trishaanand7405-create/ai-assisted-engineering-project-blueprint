# Sprint 7 — Deployment & Release

> **Prepare the working product for release and make it usable outside the development team.**

Sprint 7 introduces the transition from **development to release**.

The team should establish a simple, reproducible way for another person to obtain, run and evaluate the product.

Production-grade cloud infrastructure is **not required** for this workshop.

---

## Sprint Goal

> **Create a release-ready version of the working product and demonstrate how it can be deployed and used.**

---

## Inputs

Bring forward:

* Working product from Sprint 6
* Product demonstration scenario
* Test evidence
* Known limitations
* Engineering decisions
* Required dependencies

---

## 00–10 min — Plan

The team should determine:

* What exactly is being released?
* What version or release identifier will be used?
* How will another person run the product?
* What dependencies are required?
* What is the minimum deployment setup?
* What must be checked before release?

Keep the deployment approach appropriate to the available environment.

---

## 10–45 min — Execute

Prepare the release.

Activities may include:

### Packaging

Ensure the required:

* Source code
* Configuration
* Data or sample data
* Dependencies
* Instructions

are available.

### Deployment

Deploy or run the product using an appropriate local or accessible environment.

Examples may include:

* Local application
* Local API
* Streamlit application
* Flask application
* Static web application
* Simple executable workflow

### Verification

Perform a basic release verification:

``
INSTALL / START
      ↓
APPLICATION RUNS
      ↓
PRIMARY WORKFLOW
      ↓
EXPECTED RESULT
```

---

## 45–55 min — Review

Demonstrate the release process.

Another team member should, where practical, be able to follow the instructions and run the product.

Show:

1. How the product is started
2. The primary user workflow
3. Expected result
4. Release/version information
5. Known limitations

---

## 55–60 min — Retrospective

Discuss:

* Could another person run our product?
* What deployment problem occurred?
* What was missing?
* What should be automated eventually?
* What should change in Sprint 8?

Record one improvement.

---

## Sprint Deliverables

By the end of Sprint 7:

* [ ] Release-ready product
* [ ] Version/release identifier
* [ ] Required dependencies identified
* [ ] Deployment/run instructions
* [ ] Release verification
* [ ] Demonstrable primary workflow
* [ ] Known limitations
* [ ] One Retrospective improvement

---

## Definition of Done for Sprint 7

Sprint 7 is Done when:

> **A person outside the immediate development activity can understand how to obtain, start and use the released product.**

The release does not need enterprise-grade infrastructure.

It needs to be **repeatable, understandable and usable**.

### Sprint Principle

> **If nobody else can run it, it is not yet a usable release.**
