# Git Workflow Actions

> **A practical, technology-neutral Git workflow for projects developed using the AI-Assisted Engineering Project Blueprint.**

---

## 1. Purpose

This document defines the standard Git actions used when working with repositories based on the AI-Assisted Engineering Project Blueprint.

The objective is to make Git usage:

* Predictable
* Traceable
* Safe
* Reviewable
* Repeatable

Git is treated as an **engineering control mechanism**, not merely as a file backup system.

The workflow connects everyday engineering work with:

```text
Change
  ↓
Validation
  ↓
Commit
  ↓
Review
  ↓
Integration
  ↓
Release
```

---

# 2. Core Principles

## 2.1 Inspect Before Changing

Before modifying a repository:

```bash
git status
git branch --show-current
git log --oneline -5
```

Understand the current state before introducing another change.

---

## 2.2 Keep Changes Focused

A commit should represent a coherent change.

Prefer:

```text
One meaningful engineering change
        ↓
One focused commit
```

Avoid mixing unrelated changes such as:

* Documentation restructuring
* Application code changes
* Dependency upgrades
* Formatting changes
* Deployment changes

unless they genuinely belong to the same change.

---

## 2.3 Validate Before Commit

Do not treat `git commit` as the validation step.

The preferred sequence is:

```text
Edit
 ↓
Inspect
 ↓
Validate
 ↓
Review diff
 ↓
Commit
```

---

## 2.4 Write Meaningful Commit Messages

Commit messages should communicate **what changed and why**.

Prefer:

```text
docs: add generic project folder structure
```

over:

```text
updated files
```

---

## 2.5 Never Commit Secrets

Never commit:

* Passwords
* API keys
* Access tokens
* Private keys
* Credentials
* `.env` files containing secrets
* Personal confidential data

The repository's `.gitignore` provides protection, but developers remain responsible for checking staged content.

---

# 3. Repository Inspection

Start work with:

```bash
git status
```

This tells you:

* Which branch is active
* Which files have changed
* Which files are untracked
* Whether the working tree is clean

Then inspect recent history:

```bash
git log --oneline -5
```

Inspect branches:

```bash
git branch
```

Inspect remotes:

```bash
git remote -v
```

---

# 4. Before Starting New Work

Synchronise your local understanding with the remote repository.

Typical workflow:

```bash
git fetch --all --prune
git status
```

If working from the main development branch:

```bash
git pull
```

Do not blindly pull changes when you have significant uncommitted local work.

First inspect:

```bash
git status
```

---

# 5. Branching

Use branches when a change requires independent development or review.

Create a branch:

```bash
git switch -c feature/meaningful-name
```

Examples:

```text
feature/product-problem-statements
feature/data-validation
feature/digital-twin-model
fix/documentation-links
docs/project-structure
```

Branch names should communicate intent.

---

# 6. Branch Naming Convention

A practical convention is:

```text
<type>/<short-description>
```

Recommended types:

| Type        | Purpose                |
| ----------- | ---------------------- |
| `feature/`  | New capability         |
| `fix/`      | Bug correction         |
| `docs/`     | Documentation          |
| `refactor/` | Structural improvement |
| `test/`     | Test-related work      |
| `build/`    | Build/tooling changes  |
| `chore/`    | Repository maintenance |

Examples:

```text
feature/pipeline-validation
docs/git-workflow
fix/config-loading
test/pipeline-integration
refactor/domain-model
chore/dependency-update
```

---

# 7. Working with Files

After making changes:

```bash
git status
```

Review the actual modifications:

```bash
git diff
```

For staged changes:

```bash
git diff --cached
```

Do not rely solely on the editor or IDE view.

Git's diff is the authoritative view of what will be committed.

---

# 8. Staging Changes

Stage a specific file:

```bash
git add path/to/file
```

Stage multiple related files:

```bash
git add file-a.md file-b.md
```

Stage all intended changes:

```bash
git add .
```

Use `git add .` carefully.

Always inspect the staged result afterward:

```bash
git status
git diff --cached
```

---

# 9. Commit

Create a focused commit:

```bash
git commit -m "docs: add generic project folder structure"
```

A useful commit message generally answers:

> **What changed?**

Examples:

```text
docs: add product problem statements
docs: add deployment workflow
feat: add pipeline validation
fix: correct configuration loading
test: add integration coverage
refactor: simplify data processing service
chore: update development dependencies
```

---

# 10. Commit Message Structure

A practical format is:

```text
type: short imperative description
```

Examples:

```text
docs: add Git workflow actions
feat: add data quality validation
fix: handle missing configuration
test: add pipeline integration tests
refactor: simplify agent orchestration
```

Keep the first line concise.

For substantial changes, additional explanation may be added to the commit body.

---

# 11. Review the Commit

Before pushing:

```bash
git status
git diff HEAD~1
```

Also inspect the commit:

```bash
git show --stat --oneline HEAD
```

Ask:

* Did I commit only intended files?
* Did I accidentally include generated files?
* Did I include credentials?
* Does the commit represent one coherent change?
* Are documentation and code consistent?
* Did validation succeed?

---

# 12. Push

Push the current branch:

```bash
git push
```

For a newly created branch:

```bash
git push -u origin feature/my-change
```

After pushing, verify:

```bash
git status
```

---

# 13. Pull Request / Merge Request

When repository collaboration requires review, open a Pull Request or Merge Request.

The change should communicate:

### What changed?

Briefly describe the implementation.

### Why?

Explain the problem or requirement.

### How was it validated?

List:

* Tests
* Documentation builds
* Validation commands
* Manual verification

### Risks

Identify important known risks.

### Follow-up

Document deliberately deferred work.

---

# 14. Review Before Merge

A review should consider more than whether the code works.

Review:

* Correctness
* Requirements alignment
* Design
* Security
* Testing
* Documentation
* Maintainability
* Operational impact
* Dependency changes

For AI-assisted work, also review:

* Whether generated content was validated
* Whether AI-generated code has been tested
* Whether assumptions are documented
* Whether sensitive information was exposed to AI tools
* Whether human engineering judgement remains evident

---

# 15. Keeping a Branch Updated

If the base branch advances while work is in progress, update the working branch according to the repository's agreed strategy.

First:

```bash
git fetch origin
```

Then inspect divergence:

```bash
git status
git log --oneline --graph --decorate --all -10
```

Use either the repository's preferred merge or rebase strategy.

Do not perform history rewriting on shared branches without agreement.

---

# 16. Main Branch Protection

The primary branch should normally remain stable.

Typical expectations:

```text
main
 ↓
Reviewed changes
 ↓
Validated changes
 ↓
Integrated changes
```

Avoid directly committing experimental or incomplete work to the primary branch.

---

# 17. Safe Recovery

Git provides several mechanisms for recovering from mistakes.

Inspect history:

```bash
git log --oneline
```

Inspect a previous commit:

```bash
git show <commit>
```

Restore an unstaged file:

```bash
git restore path/to/file
```

Unstage a file:

```bash
git restore --staged path/to/file
```

Before using destructive commands, understand exactly what will be lost.

---

# 18. Undoing a Commit

If a commit has already been shared, prefer a new corrective commit or:

```bash
git revert <commit>
```

`git revert` preserves history.

Avoid rewriting shared history merely to make the log look cleaner.

---

# 19. Handling Accidental Secrets

If a secret has been committed:

> **Assume the secret is compromised.**

Do not simply delete the file and assume the problem is solved.

The correct response normally includes:

1. Revoke or rotate the exposed credential.
2. Determine where it was exposed.
3. Remove it from the current working tree.
4. Assess repository history.
5. Clean history if required.
6. Verify the replacement credential is secure.
7. Document the incident where appropriate.

---

# 20. Tags and Releases

Use Git tags to identify meaningful repository states.

Example:

```bash
git tag -a v1.0.0 -m "Release v1.0.0"
git push origin v1.0.0
```

Release versions should represent a meaningful, validated state.

Do not create releases merely because a calendar date has arrived.

---

# 21. Versioning Guidance

Where semantic versioning is appropriate:

```text
MAJOR.MINOR.PATCH
```

For example:

```text
1.0.0
1.1.0
1.1.1
```

Typical interpretation:

* **MAJOR** — breaking change
* **MINOR** — backward-compatible capability
* **PATCH** — backward-compatible correction

Projects may adopt another versioning strategy where justified.

---

# 22. Documentation-Only Changes

Documentation changes still deserve engineering discipline.

Example:

```bash
git status
git diff
git add docs/
git diff --cached
git commit -m "docs: update engineering workflow"
git push
```

Documentation is part of the product and engineering knowledge base.

---

# 23. Generated Files

Do not commit generated artefacts unless there is an explicit reason.

Examples:

```text
__pycache__/
.venv/
build/
dist/
site/
coverage/
temporary logs
local caches
```

Use `.gitignore` to prevent accidental staging.

---

# 24. Large Files

Before committing a large file, ask:

* Does the repository actually need it?
* Is Git the appropriate storage mechanism?
* Can the file be generated?
* Can a small representative sample be used?
* Does the project need Git LFS or another storage mechanism?

Do not casually commit large datasets, model binaries or generated archives.

---

# 25. AI-Assisted Git Workflow

AI can assist with Git-related work, but the human engineer remains responsible.

A safe pattern is:

```text
Human identifies change
        ↓
AI assists with planning / implementation
        ↓
Human inspects generated changes
        ↓
Automated validation
        ↓
Human reviews diff
        ↓
Human commits
        ↓
Human reviews integration
```

AI should not be treated as the authority for:

* Repository state
* Merge safety
* Release readiness
* Security
* Correctness
* Production impact

---

# 26. Recommended Daily Workflow

For ordinary engineering work:

```bash
git status
git fetch --all --prune
git switch <working-branch>

# Make changes

git status
git diff

# Validate
make validate
make test

# Stage
git add <intended-files>

# Review staged changes
git diff --cached

# Commit
git commit -m "type: meaningful change"

# Push
git push
```

Adapt the validation commands to the project.

---

# 27. End-of-Work Checklist

Before considering a change complete:

``
[ ] Working tree inspected
[ ] Correct branch confirmed
[ ] Changes reviewed
[ ] Generated files excluded
[ ] Secrets checked
[ ] Tests completed
[ ] Validation completed
[ ] Documentation updated where required
[ ] Staged diff reviewed
[ ] Commit message is meaningful
[ ] Commit created
[ ] Branch pushed
[ ] Review / merge completed where required
```

---

# 28. Golden Path

The complete Git workflow can be remembered as:

```text
INSPECT
   ↓
BRANCH
   ↓
CHANGE
   ↓
VALIDATE
   ↓
DIFF
   ↓
STAGE
   ↓
REVIEW
   ↓
COMMIT
   ↓
PUSH
   ↓
REVIEW
   ↓
MERGE
   ↓
TAG / RELEASE
```

Not every change requires every step independently, but this represents the preferred engineering path for meaningful changes.

---

# 29. Anti-Patterns

Avoid:

```text
git add .
git commit -m "changes"
git push
```

without inspecting what changed.

Also avoid:

* Committing directly to protected branches
* Huge mixed-purpose commits
* Unreviewed generated code
* Committing secrets
* Committing local environments
* Rewriting shared history casually
* Force-pushing without understanding the consequences
* Treating Git as a backup system
* Using meaningless commit messages
* Merging without validation

---

# 30. Final Principle

Git is part of the engineering control system.

The objective is not simply:

> **"Get the changes into Git."**

The objective is:

> **"Create a traceable, reviewable and recoverable record of validated engineering change."**

That principle should guide every Git action in projects built using the AI-Assisted Engineering Project Blueprint.
