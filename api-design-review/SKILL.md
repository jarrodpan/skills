---
name: api-design-review
description: Review API boundaries and interface design without editing code. Use for HTTP APIs, internal APIs, SDKs, service interfaces, library APIs, or CLI interfaces when prompts mention request and response design, validation, versioning, auth assumptions, idempotency, pagination, backwards compatibility, or API usability.
---

# Purpose

Assess API and interface quality against existing repository patterns and compatibility needs.

# When to Use

Use before shipping new API changes, while reviewing an interface, or when contract clarity is weak.

# Operating Mode

Analysis only.

# Inputs

- API scope or interface surface
- Repository root
- Optional consumer expectations or compatibility constraints

# Workflow

1. Inspect existing API patterns, docs, tests, and contracts first.
2. Determine interface type: HTTP, CLI, library, service, SDK, or internal boundary.
3. Review naming, shapes, validation, error model, versioning, auth assumptions, idempotency, pagination or filtering, backwards compatibility, and testability.
4. Rank problems by consumer impact.
5. Recommend concrete design adjustments without editing code.

# Output Format

```markdown
# API Design Review

## Scope
- ...

## Existing Pattern Summary
- ...

## Findings
1. severity: issue, location, impact, recommendation

## Backwards Compatibility Notes
- ...

## Testability Notes
- ...

## Recommended Changes
1. ...
```

# Safety Rules

- Do not edit code.
- Respect current public contract unless change is explicitly intended.
- Avoid style-only feedback that does not affect API quality.

# Verification Rules

- Compare recommendations against existing repository patterns.
- Distinguish public contract issues from internal style preferences.
- Reference concrete interfaces, handlers, commands, or types.

# Example Invocation

`Use this skill to review API design for this interface and return severity-ranked findings with compatibility notes.`
