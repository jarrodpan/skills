---
name: security-audit
description: Perform a practical repository security review without editing code. Use when prompts mention security audit, secrets review, auth assumptions, injection risks, path traversal, unsafe uploads, insecure CORS, shell execution, sensitive logging, permissive config, or remediation planning with severity.
---

# Purpose

Identify likely security weaknesses, rank them by severity, and provide exact remediation guidance.

# When to Use

Use before release, after major changes, or when security posture is uncertain.

# Operating Mode

Analysis only.

# Inputs

- Repository root
- Optional deployment context or threat model

# Workflow

1. Inspect config, secrets handling, auth flows, input validation, file handling, logging, shell execution, and dependency surfaces.
2. Detect stack and security-relevant tooling from repository files.
3. Look for common high-impact issues:
   - committed secrets
   - unsafe auth assumptions
   - injection risks
   - path traversal
   - unsafe file upload handling
   - insecure CORS
   - unsafe shell execution
   - sensitive logging
   - overly permissive configuration
   - missing validation
4. Rank findings by severity and exploitability.
5. Provide concrete remediation steps.

# Output Format

```markdown
# Security Audit

## Findings
1. severity: issue, location, impact, remediation

## Config And Secret Handling Notes
- ...

## Dependency Risk Notes
- ...

## Quick Wins
1. ...

## Deferred Hardening
1. ...
```

# Safety Rules

- Do not edit code.
- Avoid false certainty; state when deployment context is unknown.
- Do not expose actual secrets in output; describe location and type only.

# Verification Rules

- Tie each finding to exact file paths or code locations.
- Distinguish confirmed issue from suspected issue requiring runtime context.
- Make remediation steps specific and actionable.

# Example Invocation

`Use this skill to perform practical security review with severity-ranked findings and remediation steps.`
