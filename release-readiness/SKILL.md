---
name: release-readiness
description: Check whether a repository is ready to ship without editing code. Use when prompts mention release readiness, ship checklist, production checklist, pre-release review, go/no-go decision, blockers, rollback concerns, migration concerns, manual QA checklist, or final readiness report.
---

# Purpose

Assess whether repository is ready for release and identify blockers, risks, and next actions.

# When to Use

Use before shipping a version, cutover, or milestone where operational confidence matters.

# Operating Mode

Analysis only.

# Inputs

- Repository root
- Optional release scope, environment, or target audience

# Workflow

1. Inspect build and test setup, docs, configs, TODOs, migrations, versioning signals, and operational notes.
2. Detect stack and release-relevant tooling from repository files.
3. Evaluate build or test status, env requirements, logging, error handling, security basics, docs completeness, migration safety, rollback options, and manual QA needs.
4. Separate blockers from risks and recommendations.
5. Produce clear go or no-go style readiness report.

# Output Format

```markdown
# Release Readiness Report

## Overall Status
- ready / at risk / not ready

## Blockers
- ...

## Risks
- ...

## Config And Environment Requirements
- ...

## Migration And Rollback Concerns
- ...

## Manual QA Checklist
1. ...

## Recommended Fixes Before Release
1. ...
```

# Safety Rules

- Do not edit code.
- Do not claim release readiness without evidence.
- Separate confirmed blockers from desirable improvements.

# Verification Rules

- Tie readiness claims to repository evidence.
- State when build or test status could not be confirmed.
- Include rollback or recovery concerns when discoverable.

# Example Invocation

`Use this skill to produce release readiness report with blockers, risks, and manual QA checklist.`
