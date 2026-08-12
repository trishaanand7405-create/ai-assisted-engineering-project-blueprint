# Data & Components

> **Every engineered product transforms inputs into useful outputs through a set of connected components.**

The team must understand what information enters the system, how it is transformed, which components perform the work, and what the product produces.

This document provides a common foundation for all four project tracks.

---

## 1. Identify the Inputs

Inputs may include:

* User-provided information
* Files
* Databases
* APIs
* Sensors
* Public datasets
* Events
* Messages
* Model outputs
* Simulation states

For each important input, identify:

```text
SOURCE → FORMAT → PURPOSE
```

Do not assume that available data is automatically suitable for the product.

---

## 2. Understand the Data

Where data is involved, consider:

* Source and ownership
* Structure and format
* Quality
* Missing values
* Duplicates
* Outliers
* Relevant features
* Privacy or security concerns
* Transformation requirements

> **Bad input data can produce bad product outcomes regardless of how sophisticated the technology is.**

---

## 3. Identify Components

A component performs a meaningful responsibility within the product.

Examples include:

```text
Data Acquisition
Data Processing
Database / Storage
Analytics
ML / DL Model
Agent
Simulation Engine
Business Logic
API
Dashboard / UI
```

The project may use only a subset of these.

---

## 4. Define Component Responsibilities

Each major component should have a clear responsibility.

Use the simple rule:

> **One component → One clear primary responsibility.**

For example:

```text 
Data Source
    ↓
Acquisition Component
    ↓
Processing Component
    ↓
Analytics / Model Component
    ↓
Application Component
    ↓
User
```

Clear responsibilities make the system easier to test, explain and maintain.

---

## 5. Define Inputs and Outputs

For each major component, identify:

| Component   | Input         | Processing         | Output        |
| ----------- | ------------- | ------------------ | ------------- |
| Acquisition | Source data   | Collect            | Raw data      |
| Processing  | Raw data      | Clean / transform  | Prepared data |
| Model       | Prepared data | Predict / classify | Result        |
| Application | Result        | Present / act      | User outcome  |

The actual components will vary by project.

---

## 6. Data and Component Flow

The team should be able to draw a simple flow:

```text 
INPUT
  ↓
ACQUIRE
  ↓
PROCESS
  ↓
TRANSFORM
  ↓
COMPUTE
  ↓
OUTPUT
  ↓
USER / SYSTEM
```

For agentic or Digital Twin projects, additional feedback loops may exist.

```text 
OBSERVE
   ↓
PROCESS
   ↓
DECIDE / SIMULATE
   ↓
ACT / RESPOND
   ↓
OBSERVE AGAIN
```

---

## 7. Component Quality Check

Before implementation, ask:

* [ ] Are the important inputs identified?
* [ ] Do we understand the data?
* [ ] Are major components identified?
* [ ] Does each component have a clear responsibility?
* [ ] Are component inputs and outputs understood?
* [ ] Is the overall flow understandable?
* [ ] Have unnecessary components been avoided?

### Principle

> **Clear data flows and clear component responsibilities are more valuable than architectural complexity.**

The team should be able to explain its complete data and component flow to another team in **a few minutes**.
