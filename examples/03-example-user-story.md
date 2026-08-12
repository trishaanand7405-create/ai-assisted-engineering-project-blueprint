# Example User Story

> **A worked example showing how a product need can be expressed as a clear, testable User Story.**

---

## 1. Story Identity

**Story ID:**
US-003

**Title:**
Track Service Request

**Product:**
Smart Campus Service Portal

**Epic:**
Student Service Requests

**Priority:**
High

**Status:**
Ready for Sprint

---

## 2. User Story

> **As a** student
> **I want** to view the current status of my submitted service request
> **So that** I know whether my request has been received, is being processed, or has been completed.

---

## 3. User Context

### User

The primary user is a student who has already submitted a campus service request.

### Situation

After submitting a request, the student needs to know what is happening without contacting the service department separately.

### Current Problem

Without request visibility, students may send follow-up emails or make phone calls simply to ask whether their request has been received or processed.

---

## 4. Expected Value

### Student Value

The student gains confidence that the request has been received and can understand its current state.

### Product Value

The product provides transparency and reduces unnecessary status enquiries.

### Service Staff Value

Staff can spend less time responding to repetitive "What is the status?" enquiries.

---

## 5. Acceptance Criteria

The story is acceptable when:

* [ ] A student can view their submitted requests.
* [ ] Each request displays its current status.
* [ ] The displayed status reflects the latest recorded state.
* [ ] A student can open a request to see its details.
* [ ] Completed requests remain available in request history.
* [ ] A student cannot view another student's requests.

---

## 6. Behaviour Scenarios

### Scenario 1 — View Active Request

**Given:** the student has submitted a service request.

**When:** the student opens "My Requests".

**Then:** the system displays the student's submitted requests and their current statuses.

---

### Scenario 2 — View Request Details

**Given:** the student has submitted a service request.

**When:** the student selects the request.

**Then:** the system displays the request details and current status.

---

### Scenario 3 — Completed Request

**Given:** a student's request has been completed.

**When:** the student views request history.

**Then:** the completed request remains visible with its completed status.

---

### Scenario 4 — Unauthorised Request

**Given:** a request belongs to another student.

**When:** the student attempts to access that request.

**Then:** the system prevents access.

---

## 7. Functional Expectations

The system should:

1. Identify the authenticated student.
2. Retrieve requests belonging to that student.
3. Display request status.
4. Display request details.
5. Maintain request history.
6. Prevent unauthorised access.

---

## 8. Example Status Model

The initial product uses a simple status model:

``
Submitted
    ↓
Under Review
    ↓
In Progress
    ↓
Completed
```

A request may also enter:

``
Submitted
    ↓
Rejected
```

The exact status model should remain simple until real workflow requirements justify additional states.

---

## 9. Non-Functional Expectations

### Performance

Request status should load within an acceptable response time under normal system conditions.

### Security

A student must only be able to access requests they are authorised to view.

### Usability

Status information should be immediately understandable.

### Reliability

The displayed status should correspond to the latest successfully recorded request state.

### Accessibility

Status information should not depend solely on colour or visual indicators.

---

## 10. Dependencies

| Dependency             | Type      | Status   |
| ---------------------- | --------- | -------- |
| Student authentication | Technical | Required |
| Request persistence    | Technical | Required |
| Request status model   | Domain    | Required |
| Request management     | Product   | Required |

---

## 11. Assumptions

* Students have authenticated accounts.
* Each request has a unique identifier.
* Every request has a defined status.
* The system records status changes.
* Students can only access their own requests.

---

## 12. Edge Cases

### No Requests

The student has not submitted any requests.

**Expected:**
Display a clear empty-state message and provide a path to discover available services.

### Request Deleted or Archived

A previously visible request is no longer active.

**Expected:**
The system should apply the defined retention policy without producing confusing or misleading information.

### Status Update Failure

A status update has not been successfully persisted.

**Expected:**
The system must not present an uncommitted status as authoritative.

---

## 13. AI-Assisted Engineering

AI may assist the team by:

* Suggesting test scenarios
* Generating candidate test cases
* Reviewing the acceptance criteria for ambiguity
* Suggesting implementation approaches
* Generating documentation

AI output must be reviewed by the engineering team.

In particular, AI-generated security assumptions must not be accepted without verification.

---

## 14. Testing Notes

### Functional Tests

* [ ] Student can view their requests.
* [ ] Student can view request details.
* [ ] Current status is displayed.
* [ ] Completed requests remain accessible according to policy.
* [ ] Empty state is handled correctly.

### Security Tests

* [ ] Student cannot access another student's request.
* [ ] Request identifiers cannot be used to bypass authorisation.
* [ ] Unauthenticated access is prevented.

### Integration Tests

* [ ] Request status is retrieved from the correct persistence layer.
* [ ] Updated status is reflected correctly.

---

## 15. Evidence of Completion

The story should be supported by:

* Automated test results
* Successful acceptance testing
* Demonstrable user workflow
* Security test evidence
* Relevant code review evidence

---

## 16. Definition of Done

* [ ] Implementation complete.
* [ ] Acceptance Criteria satisfied.
* [ ] Functional tests pass.
* [ ] Security checks pass.
* [ ] Relevant integration tests pass.
* [ ] Code reviewed where required.
* [ ] Documentation updated where required.
* [ ] Feature demonstrated successfully.

---

## 17. Example Sprint Outcome

At the end of the Sprint, the team demonstrates:

``
Student Login
     ↓
My Requests
     ↓
Select Request
     ↓
View Status
     ↓
View Request Details
```

The demonstration provides direct evidence that the User Story delivers its intended outcome.

---

## Guiding Principle

> **A strong User Story connects a real user need to observable behaviour and testable outcomes.**
