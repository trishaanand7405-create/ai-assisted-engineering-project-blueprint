# Testing & Validation

> **A product is not complete because it runs. It is complete when the team has evidence that it works as intended.**

Testing and validation provide evidence that the implementation satisfies its requirements and produces meaningful results.

The depth of testing should be proportional to the **risk, complexity and purpose** of the product.

---

## 1. Test Against the Requirement

Start with the User Story and Acceptance Criteria.

Ask:

* Does the implemented capability work?
* Does it produce the expected result?
* Does it handle invalid or unexpected input?
* Does it satisfy the agreed Acceptance Criteria?

Testing should verify **what the product is supposed to do**.

---

## 2. Test at Multiple Levels

Depending on the project, testing may include:

```text
Component Test
      ↓
Integration Test
      ↓
System / Workflow Test
      ↓
User / Acceptance Test
```

Not every student project needs sophisticated automated testing at every level.

The important principle is to test the **most important behaviour and risks**.

---

## 3. Data Validation

For data-driven systems, check:

* Data availability
* Data format
* Missing values
* Duplicates
* Invalid values
* Unexpected ranges
* Transformation results
* Data consistency

> **Validate data before trusting conclusions derived from it.**

---

## 4. AI / ML / DL Validation

Where models are used, consider:

* Training and test separation
* Appropriate evaluation metrics
* Model performance
* Overfitting
* Representative test data
* Prediction errors
* Unexpected outputs
* Important limitations

A model producing a prediction does not automatically mean the prediction is reliable.

---

## 5. Pipeline Validation

For intelligent data pipelines, verify:

```text
SOURCE
  ↓
ACQUISITION ✓
  ↓
PROCESSING ✓
  ↓
ANALYSIS ✓
  ↓
OUTPUT ✓
  ↓
DASHBOARD / USER ✓
```

Check both individual stages and the complete end-to-end flow.

---

## 6. Agent & Digital Twin Validation

For multi-agent and Digital Twin projects, additionally consider:

### Agents

* Are agent inputs correct?
* Are decisions or actions reasonable?
* Are interactions behaving as intended?
* Are unexpected loops or failures handled?

### Digital Twins

* Are states represented correctly?
* Are state transitions valid?
* Are simulation assumptions explicit?
* Do simulated outcomes remain within meaningful boundaries?

The team should distinguish **simulation or prediction** from real-world certainty.

---

## 7. Record Evidence

Every important test should produce some evidence.

Examples:

* Test result
* Screenshot
* Output sample
* Metric
* Log
* Demonstration
* Comparison
* User feedback

The evidence does not need to be elaborate.

> **Small, credible evidence is better than unsupported claims.**

---

## Testing & Validation Check

Before declaring the work Done:

* [ ] Requirements have been tested.
* [ ] Acceptance Criteria have been checked.
* [ ] Important data has been validated.
* [ ] Important components have been tested.
* [ ] Integration has been checked.
* [ ] Important failure cases have been considered.
* [ ] Results have supporting evidence.
* [ ] Known limitations are documented.

### Principle

> **Build → Test → Measure → Validate → Improve**

Testing is not a final activity performed after engineering.

**Testing is part of engineering.**
