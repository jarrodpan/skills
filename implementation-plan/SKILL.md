---
name: implementation-plan
description: Turn a feature request into a safe incremental implementation plan. Use when planning feature work, mapping likely file changes, identifying tests and rollout steps, or when prompts mention implementation plan, delivery plan, incremental rollout, change plan, feature breakdown, or safe execution sequence.
---

# Purpose

Convert a feature request into a repository-aware, low-risk implementation plan without editing code.

# When to Use

Use before coding when scope, affected files, risks, or rollout steps need to be made explicit.

# Operating Mode

Analysis only.

# Inputs

- Feature request or bug-fix request
- Repository root
- Optional constraints, deadlines, or compatibility requirements

# Workflow

1. Inspect repository before planning.
2. Detect stack, architecture, conventions, and likely touchpoints.
3. State goal and assumptions.
4. Ask blocking questions only if missing information would materially distort plan.
5. List files or areas likely to change.
6. Identify data model, interface, API, UI, config, and docs impacts if applicable.
7. Define tests, verification commands, rollout steps, and risks.
8. Break work into small, safe increments.

# Output Format

```markdown
# Implementation Plan

## Goal
- ...

## Assumptions
- ...

## Blocking Questions
- `none` or ...

## Repository Inspection Checklist
- ...

## Likely Files To Change
- path: reason

## Data Model Changes
- ...

## API Or Interface Changes
- ...

## UI Changes
- `not applicable` or ...

## Tests
- ...

## Verification Commands
- ...

## Rollout Steps
1. ...

## Risks
- ...
```

# Safety Rules

- Do not edit code.
- Avoid planning broad rewrites unless explicitly requested.
- Prefer increments that can be verified independently.

# Verification Rules

- Tie each planned change to observed repository structure.
- Ensure tests and verification commands fit detected tooling.
- Separate facts, assumptions, and open questions.

# Example Invocation

`Use this skill to turn this feature request into a safe incremental implementation plan.`
