---
name: test-generator
description: Add focused tests for an existing module, feature, bug, or behaviour using the repository's current test conventions. Use when prompts mention add tests, write regression test, increase coverage for a feature, cover a bug fix, or generate targeted behaviour tests without introducing a new framework.
---

# Purpose

Add targeted tests that prove behaviour and fit existing repository patterns.

# When to Use

Use when implementation exists and missing or weak tests need focused improvement.

# Operating Mode

Edit allowed.

# Inputs

- Target module, feature, bug, or behaviour
- Repository root
- Optional failing case or expected behaviour

# Workflow

1. Inspect current test framework, naming, fixtures, and helpers.
2. Locate nearest existing test patterns for target area.
3. Add smallest useful set of behaviour-focused tests.
4. Avoid brittle assertions tied to incidental implementation.
5. Run smallest relevant test command first.
6. Report remaining coverage gaps.

# Output Format

```markdown
# Test Generation

## Target Behaviour
- ...

## Existing Test Pattern Followed
- ...

## Tests Added
- ...

## Verification
- command/result

## Coverage Gaps
- ...
```

# Safety Rules

- Do not introduce a new test framework unless explicitly requested.
- Prefer tests that survive refactors.
- Avoid broad fixture churn for narrow behaviour.

# Verification Rules

- Run relevant tests for touched area.
- Confirm new tests fail without intended behaviour when practical.
- Follow existing repository conventions unless clearly broken.

# Example Invocation

`Use this skill to add focused regression tests for this bug using existing test conventions.`
