# Example Product

> **A worked example showing how the Product Vision, user needs, scope and backlog can be translated into a concrete product direction.**

---

## 1. Product Identity

**Product Name:**
Smart Campus Service Portal

**Product Version:**
MVP / Initial Release

**Product Owner:**
Campus Digital Services

**Primary Users:**
Students

**Secondary Users:**
Service Staff and Service Administrators

---

## 2. Product Vision

> **Enable students to access campus services through one simple, transparent and consistent digital experience.**

The product should reduce the fragmentation currently experienced when students interact with different campus services.

---

## 3. Problem

Students currently need to use different channels for different campus services.

This creates several problems:

* Students may not know which channel to use.
* Service requests may contain incomplete information.
* Students have limited visibility into request progress.
* Staff spend time handling repetitive status enquiries.
* Service experiences vary between departments.

---

## 4. Target Users

### Primary Persona — Student

**Goal:**
Find and use campus services quickly.

**Needs:**

* Clear service information
* Simple request submission
* Request status visibility
* Relevant notifications

**Pain Points:**

* Fragmented service channels
* Unclear processes
* Lack of status visibility

---

### Secondary Persona — Service Staff

**Goal:**
Process student service requests efficiently.

**Needs:**

* Structured requests
* Complete request information
* Request status management
* Ability to communicate with students

---

### Secondary Persona — Service Administrator

**Goal:**
Maintain and monitor the campus service catalogue.

**Needs:**

* Service configuration
* Basic operational visibility
* Ability to manage service availability

---

## 5. Core Product Capabilities

The MVP provides:

1. Authentication
2. Service catalogue
3. Service details
4. Request submission
5. Request tracking
6. Staff request management
7. Basic notifications

---

## 6. Primary User Journey

``
Student
   │
   ▼
Login
   │
   ▼
Service Catalogue
   │
   ▼
Service Details
   │
   ▼
Request Form
   │
   ▼
Submit Request
   │
   ▼
Request Confirmation
   │
   ▼
Track Status
```

The journey should remain simple enough for a first-time user to understand without training.

---

## 7. Staff Journey

``
Staff Login
   │
   ▼
Request Queue
   │
   ▼
Request Details
   │
   ▼
Review
   │
   ▼
Update Status
   │
   ▼
Add Response
   │
   ▼
Student Notification
```

---

## 8. Product Scope

### MVP Includes

* Student authentication
* Service catalogue
* Service descriptions
* Request creation
* Request status
* Staff request queue
* Status updates
* Basic notifications

### MVP Excludes

* Native mobile applications
* Advanced analytics
* AI service recommendations
* Predictive request routing
* Complex workflow automation
* Full integration with every university system

---

## 9. Product Goals

### Goal 1 — Simplify Discovery

Students should be able to identify the appropriate campus service without knowing which department owns it.

### Goal 2 — Simplify Requests

Students should be able to submit a request using a clear, structured workflow.

### Goal 3 — Improve Transparency

Students should be able to understand what is happening with their requests.

### Goal 4 — Improve Staff Workflow

Staff should receive structured requests that contain the information required for processing.

---

## 10. Success Measures

| Measure                                    | Initial Target              |
| ------------------------------------------ | --------------------------- |
| Student can complete core request workflow | 100% in acceptance testing  |
| Core workflow test coverage                | Defined by engineering team |
| Request status visible to student          | 100% of supported requests  |
| Critical defects at release                | 0                           |
| User feedback on basic workflow            | Positive / acceptable       |
| Demonstrable end-to-end workflow           | Yes                         |

Targets should be refined when real usage data becomes available.

---

## 11. Product Backlog

| Priority | Product Item        | Expected Outcome                 |
| -------: | ------------------- | -------------------------------- |
|        1 | Service catalogue   | Students discover services       |
|        2 | Service details     | Students understand requirements |
|        3 | Request submission  | Students submit requests         |
|        4 | Request tracking    | Students see progress            |
|        5 | Staff request queue | Staff process requests           |
|        6 | Status management   | Staff communicate progress       |
|        7 | Notifications       | Students receive updates         |

---

## 12. Example User Story

### US-003 — Track Request

> **As a** student
> **I want** to view the status of my submitted request
> **So that** I know whether it has been received, processed or completed.

### Acceptance Criteria

* [ ] Student can view submitted requests.
* [ ] Each request has a visible status.
* [ ] Status reflects the latest recorded state.
* [ ] Student can open request details.
* [ ] Completed requests remain visible in request history.

---

## 13. Product Quality Expectations

The product should be:

### Simple

A first-time user should understand the primary workflow without extensive instruction.

### Transparent

Users should receive clear information about request status.

### Reliable

The core request workflow should behave consistently.

### Secure

Authentication and user data must be handled appropriately.

### Maintainable

The implementation should remain understandable and changeable.

---

## 14. AI-Assisted Product Work

AI may support:

* Product backlog refinement
* User Story analysis
* Acceptance Criteria suggestions
* UX alternative exploration
* Documentation
* Feedback summarisation

AI should not independently decide:

* Product priorities
* User needs
* Release commitments
* Acceptance of defects
* Sensitive policy decisions

---

## 15. Product Risks

### Risk 1 — Scope Expansion

Additional campus services may continuously create new requirements.

**Response:**
Protect the MVP boundary and add new capabilities through backlog prioritisation.

### Risk 2 — Service Variation

Different departments may have substantially different workflows.

**Response:**
Begin with a common request model and introduce specialised workflows only when evidence justifies them.

### Risk 3 — Integration Complexity

Existing university systems may expose inconsistent interfaces.

**Response:**
Keep integrations outside the first increment where possible.

---

## 16. Product Evolution

After the MVP, potential future capabilities include:

``
MVP
 │
 ├── More Campus Services
 │
 ├── Improved Notifications
 │
 ├── Service Analytics
 │
 ├── Workflow Automation
 │
 ├── Mobile Experience
 │
 └── AI-Assisted Service Discovery
```

These are possibilities, not commitments.

They should be evaluated against actual user feedback and product evidence.

---

## 17. Example Product Decision

The team deliberately chooses **not** to introduce AI-powered recommendations in the MVP.

### Reason

The core problem is service fragmentation, not recommendation quality.

The initial product should first establish:

* Service discovery
* Request submission
* Request tracking
* Staff processing

AI capabilities can be considered after the basic workflow produces sufficient evidence about actual user behaviour.

---

## Guiding Principle

> **A product should solve the most important problem first; sophistication should follow evidence rather than lead it.**
