---
name: debugging-investigator
description: Investigate bugs from evidence first, then apply a minimal safe fix when justified. Use when prompts include bug report, failing test, logs, reproduction steps, runtime error, regression, root cause analysis, or when an agent should diagnose before editing code.
---

# Purpose

Find likely root cause from evidence, then apply minimal corrective change only if diagnosis is strong enough.

# When to Use

Use for defects, regressions, flaky behaviour, and failures where guessing would be risky.

# Operating Mode

Analysis first, edit allowed only after diagnosis.

# Inputs

- Bug report, error output, logs, failing test, or reproduction steps
- Repository root
- Optional known recent changes

# Workflow

1. Read evidence carefully.
2. Reproduce or inspect smallest relevant failure signal.
3. Inspect related code paths and existing tests.
4. Form root-cause hypothesis backed by evidence.
5. Propose minimal fix.
6. Apply fix only if safe and sufficiently supported.
7. Add regression test when appropriate.
8. Re-run relevant checks and report residual uncertainty.

# Output Format

```markdown
# Debug Investigation

## Evidence
- ...

## Reproduction Or Inspection Result
- ...

## Likely Root Cause
- ...

## Proposed Fix
- ...

## Changes Applied
- `none` or ...

## Regression Test
- `none` or ...

## Verification
- command/result

## Remaining Risks
- ...
```

# Safety Rules

- Do not guess when evidence is weak; say what is unknown.
- Avoid unrelated refactors while fixing bug.
- Do not apply fix before diagnosis is documented.

# Verification Rules

- Confirm fix addresses observed failure, not only symptoms.
- Run smallest relevant test set first, broader checks after if needed.
- Add regression coverage when repository conventions support it.

# Example Invocation

`Use this skill to investigate failing behaviour from logs and tests, then apply minimal safe fix if diagnosis is clear.`
