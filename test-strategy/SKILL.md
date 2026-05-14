---
name: test-strategy
description: Create a practical repository-specific testing strategy without editing code. Use when planning unit, integration, end-to-end, contract, snapshot, or test-data approaches, prioritising coverage gaps, or when prompts mention test strategy, testing pyramid, CI test plan, mocks, or coverage roadmap.
---

# Purpose

Recommend a realistic testing strategy aligned to repository risk, architecture, and current tooling.

# When to Use

Use when a project lacks clear testing guidance or when test investment needs prioritisation.

# Operating Mode

Analysis only.

# Inputs

- Repository root
- Optional quality goals, failure history, or release constraints

# Workflow

1. Inspect current tests, helpers, fixtures, CI commands, and project structure.
2. Detect stack and existing frameworks from repository files.
3. Identify critical behaviours and highest-risk areas.
4. Recommend mix of unit, integration, end-to-end, contract, and snapshot or golden tests only where relevant.
5. Define test data, mocks or fakes, CI strategy, and execution priority.
6. Keep strategy practical for current repository maturity.

# Output Format

```markdown
# Test Strategy

## Current State
- ...

## High-Risk Areas
- ...

## Recommended Test Layers
- unit: ...
- integration: ...
- end-to-end: ...
- contract: ...
- snapshot/golden: ...

## Test Data Strategy
- ...

## Mock Or Fake Strategy
- ...

## CI Test Commands
- ...

## Priority Order
1. ...
```

# Safety Rules

- Do not edit code.
- Do not introduce new frameworks unless explicitly requested.
- Prefer behavioural coverage over incidental implementation detail.

# Verification Rules

- Base recommendations on observed repo structure and tooling.
- Mark inapplicable test layers explicitly instead of forcing them.
- Priorities must match risk and maintenance cost.

# Example Invocation

`Use this skill to create practical testing strategy for this repository with priority order and CI commands.`
