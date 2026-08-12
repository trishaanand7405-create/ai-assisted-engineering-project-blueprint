# Example Sprint

> **A worked example showing how the Smart Campus Service Portal backlog is converted into a focused Sprint Goal and a demonstrable product increment.**

---

## 1. Sprint Identity

**Sprint:**
Sprint 1 — Core Request Workflow

**Product:**
Smart Campus Service Portal

**Duration:**
2 weeks

**Sprint Status:**
Example

**Team:**
Product Owner, UX Designer, Full-Stack Engineer, QA Engineer

---

## 2. Sprint Goal

> **Enable a student to discover a campus service and submit a service request that can be viewed and processed by service staff.**

The Sprint deliberately focuses on establishing the **first end-to-end workflow** rather than building a large number of disconnected features.

---

## 3. Why This Sprint Goal?

The product vision requires a simple student-to-service workflow.

The team therefore prioritises the smallest useful slice:

``
Student
   ↓
Login
   ↓
Service Catalogue
   ↓
Service Details
   ↓
Submit Request
   ↓
Request Created
   ↓
Staff Views Request
```

This creates a demonstrable product increment.

---

## 4. Selected Backlog Items

| ID     | Backlog Item           | Priority | Expected Outcome                 |
| ------ | ---------------------- | -------: | -------------------------------- |
| US-001 | Discover services      |        1 | Student can find services        |
| US-002 | View service details   |        2 | Student understands requirements |
| US-003 | Submit service request |        3 | Request is created               |
| US-004 | Staff views request    |        4 | Staff can receive request        |

The team intentionally does **not** include request notifications or advanced request tracking in this Sprint.

---

## 5. Sprint Tasks

### US-001 — Service Catalogue

* [ ] Define initial service catalogue.
* [ ] Create service-list interface.
* [ ] Implement service retrieval.
* [ ] Add service discovery tests.

### US-002 — Service Details

* [ ] Define service information model.
* [ ] Create service-details interface.
* [ ] Display requirements.
* [ ] Add validation tests.

### US-003 — Request Submission

* [ ] Define request model.
* [ ] Design request form.
* [ ] Implement request creation.
* [ ] Validate required fields.
* [ ] Add automated tests.

### US-004 — Staff Request View

* [ ] Create staff request queue.
* [ ] Display request details.
* [ ] Add access control.
* [ ] Test staff access.

---

## 6. Sprint Capacity

| Role                | Availability | Primary Responsibility |
| ------------------- | ------------ | ---------------------- |
| Product Owner       | Part-time    | Product decisions      |
| UX Designer         | Part-time    | User workflow          |
| Full-Stack Engineer | Full Sprint  | Implementation         |
| QA Engineer         | Full Sprint  | Validation             |

Capacity should be considered when selecting Sprint work.

The team should not plan based on theoretical maximum capacity.

---

## 7. Dependencies

| Dependency          | Impact                           | Response                              |
| ------------------- | -------------------------------- | ------------------------------------- |
| Authentication      | Required for user identification | Use existing authentication mechanism |
| Service data        | Required for catalogue           | Create initial seed data              |
| Request persistence | Required for submission          | Establish minimal data model          |
| Staff access        | Required for processing          | Define basic role model               |

---

## 8. Sprint Risks

### Risk 1 — Request Model Becomes Too Complex

**Response:**
Start with the minimum information required to demonstrate the workflow.

### Risk 2 — Authentication Delays Development

**Response:**
Use an agreed development authentication mechanism while keeping the production boundary clear.

### Risk 3 — Team Attempts Too Much

**Response:**
Protect the Sprint Goal and remove lower-value work if necessary.

---

## 9. Engineering Approach

The team chooses a simple architecture:

``
Browser
   ↓
Web Application
   ↓
Service Layer
   ↓
Database
```

The Sprint does not introduce:

* Microservices
* Event streaming
* AI agents
* Advanced workflow engines
* Complex deployment infrastructure

Those technologies are not required to validate the initial product workflow.

---

## 10. AI-Assisted Work

AI is used selectively.

### Product Work

AI assists in:

* Reviewing User Stories
* Identifying missing acceptance scenarios
* Suggesting edge cases

### Engineering Work

AI assists with:

* Code scaffolding
* Test-case suggestions
* Documentation
* Debugging hypotheses

### Human Responsibilities

The team remains responsible for:

* Architecture
* Security
* Code correctness
* Acceptance
* Product decisions

---

## 11. Definition of Done

A backlog item is considered Done when:

* [ ] Implementation is complete.
* [ ] Acceptance Criteria are satisfied.
* [ ] Relevant automated tests pass.
* [ ] Security expectations are satisfied.
* [ ] Code review is complete where required.
* [ ] Documentation is updated where necessary.
* [ ] The feature is demonstrable.

---

## 12. Mid-Sprint Adjustment

During the Sprint, the team discovers that the original request form contains unnecessary fields.

Instead of implementing all of them, the Product Owner and team agree to retain only the information required for the initial workflow.

### Decision

Keep:

* Student identity
* Service
* Request title
* Request description
* Submission timestamp

Defer:

* Attachments
* Complex categorisation
* Priority selection
* Multiple participants

This keeps the Sprint aligned with its goal.

---

## 13. Sprint Review

At the Sprint Review, the team demonstrates:

``
Student Login
      ↓
Service Catalogue
      ↓
Service Details
      ↓
Request Form
      ↓
Request Submitted
      ↓
Staff Request Queue
      ↓
Request Details
```

### Outcome

The core workflow is demonstrable end-to-end.

---

## 14. Sprint Review Feedback

Example stakeholder feedback:

> "The basic workflow is clear, but students need to know what information is required before starting a request."

### Resulting Backlog Item

**US-005 — Display Request Requirements**

This item is added to the Product Backlog for future prioritisation.

The feedback does not automatically become Sprint work.

---

## 15. Retrospective

### What Went Well?

* Small end-to-end workflow was delivered.
* Team avoided unnecessary architectural complexity.
* Acceptance Criteria improved during refinement.
* AI-assisted test generation identified useful edge cases.

### What Could Improve?

* Service information was clarified too late.
* Authentication dependency should have been identified earlier.
* Some generated code required significant review.

### Improvement Action

> Add technical dependencies and important assumptions to backlog refinement before Sprint commitment.

---

## 16. Sprint Outcome

**Sprint Goal:**
Achieved

**Increment:**
Delivered

**Core Capability:**
Student-to-staff request workflow

**Major Learning:**
The smallest useful end-to-end workflow provided more product feedback than attempting to build several independent capabilities.

---

## 17. What Happens Next?

The next Sprint may focus on:

``
Request Tracking
       +
Status Management
       +
Notifications
       +
Improved Student Experience
```

However, these items should be selected only after reviewing the Product Backlog, feedback and current evidence.

---

## Guiding Principle

> **A good Sprint produces a meaningful increment and useful learning—not merely a large collection of completed tasks.**
