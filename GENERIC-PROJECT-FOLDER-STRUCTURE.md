# Generic Project Folder Structure

> **A technology-neutral reference structure for projects developed using the AI-Assisted Engineering Project Blueprint.**

---

## 1. Purpose

This document defines a **generic project folder structure** that can be used as a starting point for projects developed under the AI-Assisted Engineering Project Blueprint.

The structure is intentionally technology-neutral.

It is designed to accommodate projects involving:

* AI / Machine Learning / Data Science / Deep Learning
* Intelligent Data Pipelines
* Multi-Agentic Pipelines
* Digital Twins
* Conventional software systems
* Data-intensive engineering systems
* Research-oriented computational systems

The structure provides a common organisational language without requiring every project to use every directory.

---

# 2. Design Principles

The project structure follows several principles.

### 2.1 Source Is Separated from Supporting Artefacts

Production or research source code should not be mixed with:

* Tests
* Documentation
* Configuration
* Generated output
* Temporary files

### 2.2 Documentation Is a First-Class Artefact

Documentation should evolve with the project rather than being created only at the end.

### 2.3 Tests Belong to the Project

Testing is part of engineering work and should have a visible, maintainable location.

### 2.4 Configuration Is Explicit

Configuration should be separated from implementation logic.

### 2.5 Generated Artefacts Are Not Source

Build output, caches, generated reports and temporary files should not pollute the source tree.

### 2.6 The Structure Should Remain Lightweight

A small project should not be forced to create dozens of empty directories.

> **Create structure when the project has a real need for it.**

---

# 3. Recommended Generic Structure

A mature project may use the following structure:

```text
project-name/
│
├── README.md
├── LICENSE
├── CHANGELOG.md
├── CONTRIBUTING.md
├── SECURITY.md
├── .gitignore
├── requirements.txt
├── Makefile
│
├── docs/
│   ├── README.md
│   ├── architecture/
│   ├── product/
│   ├── engineering/
│   ├── operations/
│   └── decisions/
│
├── src/
│   └── project_name/
│       ├── __init__.py
│       ├── config/
│       ├── domain/
│       ├── services/
│       ├── pipelines/
│       ├── models/
│       ├── agents/
│       ├── simulation/
│       ├── interfaces/
│       └── utils/
│
├── tests/
│   ├── unit/
│   ├── integration/
│   ├── system/
│   └── fixtures/
│
├── scripts/
│   ├── setup/
│   ├── validation/
│   ├── data/
│   └── utilities/
│
├── config/
│   ├── development/
│   ├── test/
│   └── production/
│
├── data/
│   ├── raw/
│   ├── processed/
│   └── sample/
│
├── experiments/
│   ├── README.md
│   └── ...
│
├── assets/
│   ├── images/
│   ├── diagrams/
│   └── examples/
│
├── reports/
│   ├── quality/
│   ├── experiments/
│   └── validation/
│
└── build/
    └── ...
```

---

# 4. Root-Level Files

## `README.md`

The primary entry point to the project.

It should explain:

* What the project is
* Why it exists
* The problem being addressed
* Current status
* How to get started
* How to run the project
* How to test it
* Where important documentation lives

---

## `LICENSE`

Defines the legal licensing terms under which the project is distributed.

---

## `CHANGELOG.md`

Records significant project changes across releases.

---

## `CONTRIBUTING.md`

Defines how contributors participate in the project.

This may include:

* Development workflow
* Branching conventions
* Commit conventions
* Pull-request expectations
* Testing requirements
* Documentation expectations

---

## `SECURITY.md`

Defines the project's security reporting and handling expectations.

This becomes particularly important when the project handles:

* User information
* Credentials
* Operational data
* Healthcare-related information
* Infrastructure
* External integrations

---

## `.gitignore`

Defines generated, temporary, local and sensitive files that should not be committed.

---

## `requirements.txt`

Defines Python dependencies when Python is used.

Project-specific dependencies belong here rather than in the blueprint's global `requirements.txt`.

---

## `Makefile`

Provides convenient project-level commands such as:

```text
make setup
make test
make validate
make docs
make build
```

The actual targets should reflect the project's technology and workflow.

---

# 5. `docs/`

The documentation directory contains project-specific knowledge.

Recommended areas include:

```text
docs/
├── README.md
├── architecture/
├── product/
├── engineering/
├── operations/
└── decisions/
```

### `architecture/`

Contains:

* Architecture descriptions
* System context
* Component relationships
* Data flows
* Deployment architecture

### `product/`

Contains:

* Product requirements
* Personas
* User Stories
* Product decisions
* Acceptance criteria

### `engineering/`

Contains:

* Engineering conventions
* Development guidance
* Implementation decisions
* Technical workflows

### `operations/`

Contains:

* Operational procedures
* Monitoring
* Deployment
* Incident response
* Recovery

### `decisions/`

Contains important engineering decisions and their rationale.

A lightweight Architecture Decision Record pattern may be used here.

---

# 6. `src/`

The `src/` directory contains the primary implementation.

For Python projects:

```text
src/
└── project_name/
```

The package name should correspond to the project rather than the repository name when appropriate.

---

# 7. Domain-Oriented Source Structure

A mature project may organise source code into meaningful responsibilities:

```text
src/project_name/
├── config/
├── domain/
├── services/
├── pipelines/
├── models/
├── agents/
├── simulation/
├── interfaces/
└── utils/
```

Not every project needs every directory.

---

## `domain/`

Contains the core concepts and rules of the problem domain.

Examples:

* Entities
* Value objects
* State definitions
* Domain rules
* Events

This directory should avoid unnecessary technology-specific coupling.

---

## `services/`

Contains application or domain services that coordinate meaningful operations.

---

## `pipelines/`

Particularly useful for:

* Data pipelines
* ML pipelines
* ETL/ELT workflows
* Agentic workflows
* Event-processing systems

---

## `models/`

May contain:

* Machine-learning models
* Data models
* Computational models
* Domain models

The exact meaning should be documented for the project.

---

## `agents/`

Applicable primarily to multi-agentic systems.

It may contain:

* Agent definitions
* Agent roles
* Agent coordination
* Agent policies
* Tool interfaces

A conventional application does not need this directory.

---

## `simulation/`

Useful for:

* Digital twins
* Physical-system models
* Computational experiments
* State-transition systems
* Scenario simulation

Again, this directory is optional.

---

## `interfaces/`

Contains boundaries between the core system and external consumers.

Examples include:

* REST APIs
* CLI interfaces
* Message interfaces
* User interfaces
* External service adapters

---

## `utils/`

Contains genuinely reusable utilities.

This directory should not become a dumping ground for unrelated code.

If a utility belongs to a specific domain, it should generally live closer to that domain.

---

# 8. `tests/`

Testing should be organised according to the level of verification.

```text
tests/
├── unit/
├── integration/
├── system/
└── fixtures/
```

### `unit/`

Tests small units of behaviour in isolation.

### `integration/`

Tests interactions between components.

Examples:

* Database integration
* API integration
* Pipeline integration
* External-service integration

### `system/`

Tests larger end-to-end behaviour.

### `fixtures/`

Contains controlled test data and reusable test fixtures.

Sensitive production data must never be copied into test fixtures.

---

# 9. `scripts/`

Repository-support scripts that are useful but are not part of the application itself.

Example:

```text
scripts/
├── setup/
├── validation/
├── data/
└── utilities/
```

Examples include:

* Environment checks
* Data preparation
* Repository validation
* Documentation utilities
* Development helpers

Scripts should have clear names and documented usage.

---

# 10. `config/`

Configuration may be separated by environment:

```text
config/
├── development/
├── test/
└── production/
```

Configuration should not contain secrets.

Secrets should be injected through an appropriate secure mechanism.

---

# 11. `data/`

Data-intensive projects may use:

```text
data/
├── raw/
├── processed/
└── sample/
```

### `raw/`

Original or minimally transformed data.

### `processed/`

Data prepared for downstream processing.

### `sample/`

Small, safe datasets suitable for development and testing.

Large datasets should normally remain outside Git unless there is a deliberate reason to version them.

---

# 12. `experiments/`

Useful for research-oriented projects.

Examples:

* Model experiments
* Simulation scenarios
* Algorithm comparisons
* Hypothesis exploration
* Prototype workflows

Experiments should remain distinguishable from production implementation.

A successful experiment may eventually be promoted into `src/`.

---

# 13. `assets/`

Contains project-supporting static resources.

Examples:

```text
assets/
├── images/
├── diagrams/
└── examples/
```

Typical contents include:

* Architecture diagrams
* Product screenshots
* Illustrations
* Reference examples

---

# 14. `reports/`

Generated or curated reports may be organised into:

```text
reports/
├── quality/
├── experiments/
└── validation/
```

Reports should be clearly distinguished from authoritative project documentation.

Generated reports should not be committed automatically unless there is a deliberate repository policy to retain them.

---

# 15. `build/`

Contains generated build artefacts.

Examples include:

* Distribution packages
* Generated documentation
* Compiled assets
* Temporary build output

This directory should normally be excluded from Git.

---

# 16. Category-Specific Adaptations

The generic structure can be adapted according to the product category.

## AI / ML / Data Science / Deep Learning

Potential additions:

```text
src/project_name/
├── data/
├── features/
├── models/
├── training/
└── inference/
```

Possible supporting directories:

```text
experiments/
models/
reports/
```

The exact structure should reflect the project's lifecycle rather than forcing an ML template onto every project.

---

## Intelligent Data Pipelines

Potential additions:

```text
src/project_name/
├── ingestion/
├── transformation/
├── validation/
├── pipelines/
└── monitoring/
```

Important concerns include:

* Data lineage
* Schema management
* Data quality
* Pipeline observability
* Recovery

---

## Multi-Agentic Pipelines

Potential additions:

```text
src/project_name/
├── agents/
├── workflows/
├── tools/
├── memory/
├── orchestration/
└── policies/
```

The architecture should make agent responsibilities and boundaries explicit.

---

## Digital Twins

Potential additions:

```text
src/project_name/
├── domain/
├── state/
├── events/
├── simulation/
├── models/
└── telemetry/
```

Important concerns include:

* State representation
* State transitions
* Events
* Observations
* Simulation
* Synchronisation between model and observed system

---

# 17. Minimum Viable Project Structure

A small project does **not** need the complete structure.

A reasonable starting point may be:

```text
project-name/
├── README.md
├── LICENSE
├── .gitignore
├── requirements.txt
├── src/
├── tests/
└── docs/
```

Additional directories should be introduced when justified by actual project needs.

---

# 18. Growing the Structure

Project structure should evolve progressively.

### Stage 1 — Exploration

```text
project-name/
├── README.md
└── src/
```

### Stage 2 — Engineering

```text
project-name/
├── README.md
├── src/
├── tests/
├── docs/
└── requirements.txt
```

### Stage 3 — Structured Project

```text
project-name/
├── README.md
├── docs/
├── src/
├── tests/
├── scripts/
├── config/
└── requirements.txt
```

### Stage 4 — Mature Project

```text
project-name/
├── README.md
├── LICENSE
├── CHANGELOG.md
├── CONTRIBUTING.md
├── SECURITY.md
├── docs/
├── src/
├── tests/
├── scripts/
├── config/
├── data/
├── experiments/
├── assets/
├── reports/
├── requirements.txt
├── Makefile
└── .gitignore
```

The project should grow **because complexity requires structure**, not because a template demands it.

---

# 19. What Should Not Be Committed

The following generally should not be committed:

```text
.venv/
__pycache__/
*.pyc
.env
.env.*
build/
dist/
site/
coverage/
large generated datasets
local credentials
private keys
temporary files
IDE-specific state
generated caches
```

The repository's `.gitignore` should enforce the appropriate exclusions.

---

# 20. Structure Is Not Architecture

A folder structure is useful, but it should not be confused with system architecture.

For example:

```text
src/
├── agents/
├── models/
└── services/
```

does not by itself define:

* Runtime architecture
* Component dependencies
* Data flow
* Deployment topology
* Security boundaries
* System behaviour

Those concerns belong in the project's architecture documentation.

> **Folders organise code. Architecture explains how the system works.**

---

# 21. Structure Is Not Process

Similarly, the folder structure does not define the engineering lifecycle.

The project should continue to follow the blueprint's broader flow:

```text
Product
   ↓
Problem
   ↓
Requirements
   ↓
Sprint
   ↓
Engineering
   ↓
Quality
   ↓
Deployment
   ↓
Maintenance
   ↓
Continuous Improvement
```

The directory structure exists to support that lifecycle.

---

# 22. Recommended Naming Conventions

Use:

* Lowercase directory names
* Clear descriptive names
* Singular or plural consistently within a project
* `snake_case` for Python package names
* Hyphenated names for documentation directories when appropriate

Prefer:

```text
project_name/
data_pipeline/
simulation/
engineering/
```

Avoid:

```text
misc/
stuff/
temp2/
new/
final/
final2/
```

Names should communicate purpose.

---

# 23. Generic Project Structure Principle

The recommended structure can be summarised as:

```text
Project
│
├── Product Knowledge
│   └── docs/
│
├── Implementation
│   └── src/
│
├── Verification
│   └── tests/
│
├── Automation
│   └── scripts/
│
├── Configuration
│   └── config/
│
├── Data
│   └── data/
│
├── Exploration
│   └── experiments/
│
├── Supporting Resources
│   └── assets/
│
└── Generated Evidence
    └── reports/
```

This separation provides a useful mental model for the entire repository.

---

# 24. Final Guidance

There is no single universally correct project folder structure.

The correct structure is the one that:

1. Makes responsibilities clear.
2. Makes important artefacts easy to find.
3. Supports testing and validation.
4. Separates source from generated output.
5. Keeps configuration explicit.
6. Supports documentation.
7. Can evolve with project complexity.
8. Avoids unnecessary structure.
9. Does not create artificial technology coupling.
10. Helps the team understand the system.

> **Use the structure as a starting point, not as a constraint.**

The best project structure is one that makes the engineering work **clearer, safer and easier to evolve**.
