---
name: agent-onboarding
description: Create or update concise onboarding documentation that helps future AI agents and developers understand a repository quickly. Use when prompts mention agent onboarding, repository map, architecture summary, common tasks, safe editing rules, where to add features, or when project context must be captured without inventing missing details.
---

# Purpose

Create accurate, compact onboarding docs that reduce future ramp-up time for humans and agents.

# When to Use

Use early in a repository, after major structural changes, or when repeated re-discovery is wasting time.

# Operating Mode

Edit allowed.

# Inputs

- Repository root
- Optional target files such as `docs/agent-onboarding.md` or `docs/repository-map.md`

# Workflow

1. Inspect repository purpose, folder structure, docs, commands, tests, and architecture signals.
2. Confirm project reality from code and config.
3. Create or update concise docs such as:
   - `docs/agent-onboarding.md`
   - `docs/repository-map.md`
   - `docs/architecture.md`
   - `docs/common-tasks.md`
4. Include project purpose, folder map, important commands, safe editing rules, testing commands, architectural boundaries, feature placement guidance, and known risks or unfinished areas.
5. Keep docs easy to scan and maintain.

# Output Format

```markdown
# Agent Onboarding Update

## Files Created Or Updated
- path

## Confirmed Repository Facts Captured
- ...

## Commands Documented
- ...

## Risks Or Unfinished Areas Noted
- ...

## Verification
- checked files/commands/sections
```

# Safety Rules

- Do not invent features, workflows, or architecture.
- Prefer concise durable docs over long narrative.
- Update only files needed for onboarding value.

# Verification Rules

- Cross-check commands and paths against repository files.
- Make uncertainty explicit.
- Keep terminology aligned with existing code and docs.

# Example Invocation

`Use this skill to create concise onboarding docs for future agents and developers based on repository facts.`
