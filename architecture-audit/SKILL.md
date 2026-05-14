---
name: architecture-audit
description: Audit repository architecture, structure, maintainability, coupling, testability, and agent readability. Use when reviewing a codebase's organisation, identifying oversized files or unclear boundaries, building a refactor backlog, assessing modularity and separation of concerns, or when prompts mention architecture audit, structure review, repository map, maintainability, technical debt triage, or repository readability for future developers and AI agents.
---

# Purpose

Inspect repository structure and produce a concrete, repository-backed architecture audit without editing code.

# When to Use

Use for existing repositories when you need a structural review, a prioritised refactor backlog, a recommended target architecture, or fast orientation on major maintainability risks.

# Operating Mode

Analysis only.

# Inputs

- Repository root
- Optional scope limits
- Optional prior audits, checklists, or backlog files

# Workflow

1. Inspect repository structure, major folders, entrypoints, docs, tests, and build or tooling files.
2. Detect stack, conventions, and architectural patterns from repository evidence. Do not assume language or framework.
3. Identify major domains, modules, subsystems, packages, layers, or apps.
4. Inspect large files, central modules, and dependency-heavy areas.
5. Look for structural risks such as:
   - oversized files or modules
   - mixed responsibilities
   - weak or violated boundaries
   - duplicate or near-duplicate logic
   - tight coupling
   - hidden side effects
   - poor error-handling boundaries
   - naming and discoverability issues
   - inconsistent structural patterns
   - hard-to-test code
   - AI-agent readability problems
6. Prefer concrete evidence from files, imports, module relationships, tests, and docs over general advice.
7. Prioritise findings by impact, breadth, and safety of incremental remediation.
8. Produce a small, copy-paste-ready backlog and first five safe follow-up tasks that preserve behaviour.

# Output Format

```markdown
# Architecture Audit

## Executive Summary
- overall architecture quality
- main strengths
- main risks
- top 5 refactor priorities

## Repository Map
| Path | Purpose | Notes |
|---|---|---|
| ... | ... | ... |

## Biggest Structural Problems
### Problem: <short name>
**Severity:** Critical / High / Medium / Low
**Location:** `path`
**Why this is a problem:** ...
**Evidence:** ...
**Fix:** ...
**Suggested task for agent:** ...

## Files That Are Too Large Or Have Too Many Responsibilities
| File | Concern Count | Problems | Suggested Split |
|---|---:|---|---|
| ... | ... | ... | ... |

## Single Responsibility Violations
- path: current responsibilities, why to split, proposed destinations

## Naming And Discoverability Problems
- path: current name, suggested name, reason

## Dependency And Coupling Issues
- path or boundary: issue, impact, fix

## Testability Problems
- path: problem, why hard to test, concrete refactor direction

## AI-Agent Readability Problems
- path or area: problem, suggested documentation or convention improvement

## Prioritised Refactor Backlog
| Priority | Task | Impact | Risk | Estimated Size |
|---|---|---|---|---|
| P0-P3 | ... | ... | ... | ... |

## Recommended Target Architecture
- suggested folder structure
- layer boundaries
- naming conventions
- placement of business logic, IO, UI, tests, shared types

## First 5 Safe Tasks
1. Copy-paste-ready task prompt
2. Copy-paste-ready task prompt
3. Copy-paste-ready task prompt
4. Copy-paste-ready task prompt
5. Copy-paste-ready task prompt
```

# Safety Rules

- Do not edit code.
- Do not invent architecture; distinguish observed facts from inference.
- Prefer behaviour-preserving recommendations.
- Avoid rewrite advice unless repository evidence shows incremental repair is unrealistic.
- Do not nitpick style unless it materially affects maintainability or comprehension.

# Verification Rules

- Cite concrete file paths for each major finding.
- Check claimed boundaries against code, tests, and docs.
- Mark uncertainty explicitly and state what evidence would confirm it.
- Ensure backlog items and first five tasks are independently executable and low risk.
- Keep fixes specific; avoid vague advice like `improve structure`.

# Example Invocation

`Use this skill to audit repository architecture, produce a prioritised refactor backlog, recommend target architecture, and give first five safe follow-up tasks.`
