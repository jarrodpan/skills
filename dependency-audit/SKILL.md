---
name: dependency-audit
description: Review repository dependencies and package usage without editing code. Use when prompts mention dependency audit, package review, unused libraries, heavy dependencies, version drift, dev versus runtime confusion, or when deciding whether dependencies should be removed, consolidated, or replaced carefully.
---

# Purpose

Assess dependency health, necessity, and risk using repository evidence.

# When to Use

Use during maintenance, security review, build simplification, or before upgrades and cleanup work.

# Operating Mode

Analysis only.

# Inputs

- Repository root
- Optional focus areas such as runtime size, build speed, or security

# Workflow

1. Inspect manifest, lock, module, package, and build files that define dependencies.
2. Detect stack and package manager from repository files.
3. Identify unused, duplicated, risky, heavy, or confusing dependencies.
4. Check dev versus runtime classification where applicable.
5. Note version drift and consolidation opportunities.
6. Recommend careful next steps without blind upgrade advice.

# Output Format

```markdown
# Dependency Audit

## Dependency Sources Inspected
- ...

## Unused Or Likely Unused
- ...

## Duplicated Or Overlapping
- ...

## Risky Or Unnecessary
- ...

## Heavy Dependencies
- ...

## Version Drift
- ...

## Dev Versus Runtime Confusion
- ...

## Recommended Actions
1. ...
```

# Safety Rules

- Do not edit code.
- Do not recommend upgrades blindly.
- Mark uncertain unused-dependency findings as likely, not certain.

# Verification Rules

- Support findings with manifest entries and usage evidence.
- Distinguish observed use from transitive presence.
- Account for code generation, build tooling, and test-only use when relevant.

# Example Invocation

`Use this skill to audit repository dependencies and recommend careful cleanup actions.`
