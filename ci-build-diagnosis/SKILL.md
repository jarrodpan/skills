---
name: ci-build-diagnosis
description: Diagnose failing builds, tests, linting, type checks, or CI-like commands by reproducing the smallest relevant failure first, then applying a minimal safe fix if justified. Use when prompts mention CI failure, build break, failing check, lint error, type error, or pipeline diagnosis before broader edits.
---

# Purpose

Find root cause of build or CI failures with smallest relevant reproduction and minimal fix.

# When to Use

Use when local or CI validation is failing and diagnosis must come before code edits.

# Operating Mode

Analysis first, edit allowed only after diagnosis.

# Inputs

- Failure output, failing command, or CI log excerpt
- Repository root
- Optional branch or recent change context

# Workflow

1. Inspect repository tooling and detect package or build system.
2. Choose smallest relevant command that reproduces failure.
3. Capture exact failure signal.
4. Inspect related code, config, and test files.
5. Identify root cause.
6. Apply minimal safe fix if diagnosis is strong enough.
7. Re-run failing command and report remaining issues.

# Output Format

```markdown
# CI Or Build Diagnosis

## Failure Signal
- ...

## Smallest Reproduction
- command/result

## Root Cause
- ...

## Fix Applied
- `none` or ...

## Re-Run Result
- ...

## Remaining Failures
- `none` or ...
```

# Safety Rules

- Do not make broad unrelated changes.
- Do not "fix" by disabling checks unless explicitly requested.
- Diagnose first; edit only after evidence points to cause.

# Verification Rules

- Reproduce failure with smallest relevant command.
- Re-run affected command after fix.
- If multiple failures exist, separate root cause from follow-on noise.

# Example Invocation

`Use this skill to diagnose failing CI command, apply minimal safe fix if justified, and report remaining failures.`
