---
name: code-review
description: Perform code review for a repository, patch, changed files, or subsystem without editing code. Use when prompts mention review, PR review, correctness check, maintainability review, edge cases, test gaps, security concerns, performance concerns, or severity-ranked findings.
---

# Purpose

Produce a severity-ranked review focused on correctness, risk, and maintainability.

# When to Use

Use for pull requests, changed files, subsystems, or full-repository review.

# Operating Mode

Analysis only.

# Inputs

- Review scope: repository, files, diff, or module
- Optional expected behaviour or change intent

# Workflow

1. Inspect scope and reconstruct intent from code, tests, and docs.
2. Review for correctness, simplicity, maintainability, edge cases, error handling, tests, security, performance, and readability.
3. Rank findings by severity.
4. Keep summary brief after findings.

# Output Format

```markdown
# Code Review

## Findings
1. severity: path or area, issue, impact, evidence

## Open Questions
- `none` or ...

## Brief Summary
- ...

## Residual Risks
- ...
```

# Safety Rules

- Do not edit code.
- Prioritise findings over style commentary.
- Avoid speculative issues without evidence.

# Verification Rules

- Reference concrete files, functions, or behaviours.
- Distinguish confirmed bug, plausible risk, and missing evidence.
- If no findings, state that explicitly and note remaining test gaps.

# Example Invocation

`Use this skill to review changed files and return severity-ranked findings only.`
