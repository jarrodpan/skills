---
name: refactor-planner
description: Plan a safe refactor without changing code. Use when prompts mention refactor plan, migration steps, extraction plan, modularisation, decomposition, backwards compatibility, rollback, or when a team needs a staged refactor sequence before editing implementation.
---

# Purpose

Design a behaviour-preserving refactor plan with small independent tasks and rollback safety.

# When to Use

Use when code needs restructuring but implementation should not start until migration steps are clear.

# Operating Mode

Analysis only.

# Inputs

- Refactor target or pain point
- Repository root
- Optional compatibility constraints

# Workflow

1. Inspect relevant code, tests, docs, and entrypoints.
2. Summarise current behaviour and important invariants.
3. Define exact refactor target and non-goals.
4. Identify compatibility, sequencing, and migration risks.
5. Produce step-by-step plan with small independent tasks.
6. Add test plan, rollback plan, and completion criteria.

# Output Format

```markdown
# Refactor Plan

## Current Behaviour Summary
- ...

## Refactor Target
- ...

## Non-Goals
- ...

## Migration Plan
1. ...

## Backwards Compatibility Concerns
- ...

## Test Plan
- ...

## Rollback Plan
- ...

## Small Independent Tasks
1. ...
```

# Safety Rules

- Do not edit code.
- Preserve behaviour unless user explicitly requests behavioural change.
- Avoid plans that require large atomic rewrites.

# Verification Rules

- Confirm current behaviour from code and tests, not memory.
- Ensure each task can be validated independently.
- Call out missing tests that make refactor risky.

# Example Invocation

`Use this skill to plan safe staged refactor for this subsystem without changing code.`
