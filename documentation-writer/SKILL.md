---
name: documentation-writer
description: Create or improve developer documentation based on confirmed repository behaviour. Use when prompts mention README updates, setup docs, architecture docs, testing docs, contribution docs, folder-level READMEs, AI-agent onboarding docs, or when documentation must be written without inventing unsupported features.
---

# Purpose

Write accurate developer documentation grounded in repository evidence.

# When to Use

Use when docs are missing, stale, fragmented, or unclear for humans or agents.

# Operating Mode

Edit allowed.

# Inputs

- Repository root
- Optional target docs or audience

# Workflow

1. Inspect code, config, commands, tests, and existing docs.
2. Confirm behaviour from repository evidence.
3. Separate confirmed facts from inferred guidance.
4. Create or update smallest useful documentation set.
5. Keep structure concise and scannable.
6. Verify referenced commands, paths, and workflows against repository reality.

# Output Format

```markdown
# Documentation Update

## Audience
- ...

## Files Created Or Updated
- path

## Confirmed Behaviour Documented
- ...

## Inferred Guidance Marked As Such
- ...

## Verification
- checked paths/commands/sections
```

# Safety Rules

- Do not document imaginary features.
- Do not claim commands work unless repository evidence supports them.
- Prefer incremental updates over whole-doc rewrites when enough.

# Verification Rules

- Cross-check docs against actual files and commands.
- Mark recommendations or assumptions clearly.
- Keep terminology consistent with codebase naming.

# Example Invocation

`Use this skill to update developer docs and clearly separate confirmed behaviour from guidance.`
