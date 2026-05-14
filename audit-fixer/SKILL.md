---
name: audit-fixer
description: Read an existing architecture audit or refactor backlog, fix exactly one small safe item, verify it, and mark it complete. Use when prompts mention fix next audit item, work through backlog one by one, apply safe architecture improvements, update an audit report after a targeted change, or incrementally execute a refactor backlog without broad rewrites.
---

# Purpose

Execute one checked, behaviour-preserving backlog item from an existing audit or refactor report.

# When to Use

Use after an audit exists and goal is steady incremental cleanup rather than broad rewrite.

# Operating Mode

Edit allowed.

# Inputs

- Audit report, checklist, or refactor backlog
- Repository root
- Optional scope or priority constraints

# Workflow

1. Locate audit report or backlog in likely docs or repository-root markdown files.
2. If no explicit report is provided, search likely files for architecture audit, refactor backlog, priority markers, or prior suggested tasks.
3. If no audit report exists, stop and report that it is missing.
4. Read backlog and identify:
   - highest-priority unchecked task
   - location
   - stated problem
   - recommended fix
   - constraints or warnings
5. Prefer tasks in priority order `P0`, `P1`, `P2`, `P3`. Within same priority, choose smallest safe task first.
6. Before editing, confirm:
   - which files need change
   - which tests or checks should run
   - whether public behaviour must stay unchanged
   - whether task is still valid in current codebase
7. If item is already fixed, do not change code. Update report and explain why.
8. Otherwise, fix exactly one item only.
9. Preserve behaviour and avoid unrelated formatting churn or broad refactors.
10. Run smallest relevant verification first, broader checks only if justified.
11. Update audit report to mark only fully completed work, or note `already fixed` if applicable.
12. Summarise change, verification, audit update, and next suggested item.

# Output Format

```markdown
# Audit Fix Completed

## Fixed Item
- Priority: ...
- Title: ...
- Location: ...

## Why This Item
- ...

## Changes Made
- ...

## Verification
- Command: `...`
  - Result: Pass / Fail / Pre-existing failure / Not run
  - Notes: ...

## Audit Report Updated
- File: ...
- Status: Done / Already fixed / Blocked
- Note: ...

## Next Suggested Item
- Priority: ...
- Title: ...
- Why next: ...
```

# Safety Rules

- Fix one item only.
- Preserve behaviour unless audit item explicitly says otherwise.
- Prefer smallest patch that resolves chosen item.
- Do not combine unrelated improvements.
- Do not introduce new frameworks or broad abstraction layers.
- Do not mark incomplete work as done.
- Do not silently skip verification.
- Do not modify unrelated files.
- If task is too broad, complete safest first slice and leave rest for later.
- If audit recommendation is stale or wrong, explain why and update report accordingly.

# Verification Rules

- Run relevant tests, build, lint, type check, or static checks for touched area.
- Prefer targeted checks before full-suite checks when possible.
- Record pre-existing failures separately from failures introduced by current work.
- Confirm audit item acceptance criteria are actually met before marking complete.
- If blocked, document blocker and leave item unchecked.

# Example Invocation

`Use this skill to locate existing architecture audit, fix next smallest high-priority unchecked item, verify it, and update report without broad rewrite.`
