# Example Project

> **A worked example showing how the AI-Assisted Engineering Project Blueprint can be applied from initial problem definition through project initiation.**

---

## 1. Example Project

**Project Name:**
Smart Campus Service Portal

**Project Type:**
Web application

**Project Context:**
A university wants to provide students with a single place to discover campus services, submit service requests and track the status of those requests.

**Project Status:**
Initiation

---

## 2. Problem Statement

Students currently use different channels to access campus services.

For example:

* Email for administrative requests
* Separate forms for facilities issues
* Different portals for academic services
* Phone calls for certain support requests

This creates fragmented experiences and makes it difficult for students to understand the status of their requests.

### Problem

> Students do not have a simple, consistent way to discover campus services, submit requests and track their progress.

---

## 3. Target Users

### Primary User

**Student**

A student needs to:

* Find the appropriate campus service.
* Understand what information is required.
* Submit a request.
* Track request status.
* Receive relevant updates.

### Secondary Users

**Service Staff**

Need to:

* Receive requests.
* Review request information.
* Update request status.
* Communicate progress.

**Service Administrator**

Needs to:

* Configure available services.
* Monitor service activity.
* Review operational information.

---

## 4. Project Objective

Create a simple campus service portal that allows students to discover services, submit requests and track request status through one consistent interface.

### Expected Value

For students:

* Reduced confusion
* Easier service discovery
* Better visibility into requests

For service staff:

* More structured requests
* Better request visibility
* Reduced manual communication

For the institution:

* More consistent service delivery
* Better operational visibility
* A foundation for future digital services

---

## 5. Initial Product Vision

> **Enable students to access campus services through one simple, transparent and consistent digital experience.**

The first version will focus on the most common student service requests rather than attempting to digitise every campus service.

---

## 6. Initial Scope

### In Scope

* Student login
* Service catalogue
* Service information
* Request submission
* Request status
* Basic staff request management
* Basic notifications

### Out of Scope

* Mobile-native applications
* Advanced analytics
* AI-based service recommendations
* Automated workflow optimisation
* Integration with every existing university system

The excluded capabilities may be considered after the initial product has been validated.

---

## 7. Initial Product Increment

The first meaningful increment will allow a student to:

```text
Login
  ↓
View Services
  ↓
Select Service
  ↓
Submit Request
  ↓
View Request Status
```

A service staff member will be able to:

```text
View Requests
  ↓
Open Request
  ↓
Update Status
  ↓
Add Response
```

This provides a complete end-to-end workflow without attempting to solve every campus-service scenario.

---

## 8. Initial User Stories

### US-001 — Discover Services

> As a student, I want to view available campus services so that I can find the service I need.

### US-002 — Submit Request

> As a student, I want to submit a service request so that the appropriate staff can process it.

### US-003 — Track Request

> As a student, I want to see the status of my request so that I know whether action has been taken.

### US-004 — Manage Request

> As a service staff member, I want to view and update requests so that I can process student needs.

---

## 9. Initial Backlog

| Priority | Item                      | Expected Value                 |
| -------: | ------------------------- | ------------------------------ |
|        1 | Student service catalogue | Enables service discovery      |
|        2 | Request submission        | Enables core service workflow  |
|        3 | Request status            | Provides transparency          |
|        4 | Staff request management  | Enables operational processing |
|        5 | Notifications             | Improves communication         |

---

## 10. Engineering Approach

### Proposed Technology

The example uses a deliberately simple architecture:

```text
Browser
   ↓
Web Application
   ↓
Application Services
   ↓
Database
```

The project should avoid unnecessary architectural complexity during the initial increment.

### Engineering Principles

* Simple architecture
* Clear separation of responsibilities
* Automated testing
* Version control
* Small increments
* Evidence-based decisions

---

## 11. AI-Assisted Engineering

AI may assist with:

* User Story refinement
* Acceptance Criteria suggestions
* Code scaffolding
* Test-case generation
* Documentation
* Debugging assistance

AI-generated output must be reviewed and validated.

For example, an AI-generated implementation suggestion may be considered a candidate solution, but the engineering team remains responsible for:

* Technical correctness
* Security
* Testing
* Maintainability
* Final acceptance

---

## 12. Quality Expectations

The initial increment should demonstrate:

* [ ] Student can access the application.
* [ ] Student can find a service.
* [ ] Student can submit a request.
* [ ] Student can view request status.
* [ ] Staff can view submitted requests.
* [ ] Staff can update request status.
* [ ] Core workflows have automated tests.
* [ ] Important errors are handled appropriately.

---

## 13. Initial Risks

| Risk                                           | Impact | Response                             |
| ---------------------------------------------- | ------ | ------------------------------------ |
| Requirements are incomplete                    | Medium | Use iterative discovery              |
| Integration with existing systems is difficult | High   | Defer complex integrations initially |
| Users have different service expectations      | Medium | Validate with representative users   |
| AI-generated code introduces defects           | Medium | Review and test all generated code   |
| Scope expands rapidly                          | High   | Protect the initial product boundary |

---

## 14. Success Criteria

The initial project increment will be considered successful when:

1. A student can complete the basic request workflow.
2. A service staff member can process that request.
3. Request status is visible to the student.
4. The workflow can be demonstrated end-to-end.
5. Core functionality has sufficient test evidence.
6. Initial users confirm that the workflow addresses the intended problem.

---

## 15. Example Project Lifecycle

The project would progress through:

```text
Project Brief
      ↓
Product Vision
      ↓
User Stories
      ↓
Product Backlog
      ↓
Sprint Planning
      ↓
Engineering
      ↓
Quality Validation
      ↓
Deployment
      ↓
Maintenance
      ↓
Feedback
      ↺
```

Each stage uses the corresponding checklists, templates and engineering practices defined elsewhere in the blueprint.

---

## 16. Why This Example Matters

This example deliberately avoids starting with:

> "Which technology should we use?"

Instead, it starts with:

> "What problem are we solving, for whom, and what meaningful outcome should we create?"

Technology and implementation decisions then follow from the problem, product goals, constraints and evidence.

---

## Guiding Principle

> **A good project starts with a meaningful problem and a measurable outcome—not with a technology stack.**
