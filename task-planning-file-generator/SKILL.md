---
name: task-planning-file-generator
description: Generate a prompt that tells a coding agent to create or update a detailed `TASK.md` planning file before implementation. Use when the user asks to write a TASK.md, generate a task file, make a planning file, plan an implementation, define acceptance criteria, define end state or definition of done, make a pre-implementation checklist, turn a feature idea into a task, or write instructions for an agent before coding. Also use before significant feature, bug-fix, refactor, UI, architecture, test, or integration work when a structured implementation plan would reduce risk.
---

# Task Planning File Generator

Generate planning prompt first. Do not implement code unless user explicitly asks for implementation after planning.

## Goal

Produce one prompt that instructs a coding agent to create or update a full `TASK.md` file for proposed work.

Prompt must be strong enough that downstream agent can write high-quality planning file without guessing desired shape, scope, or completion criteria.

## Workflow

1. Inspect repo context before drafting prompt.
2. Read relevant planning, design, architecture, roadmap, checklist, audit, or existing `TASK.md` files when they exist.
3. Inspect code paths, tests, docs, and adjacent contracts needed to describe current behavior.
4. Infer missing details conservatively.
5. Label assumptions explicitly instead of blocking, unless missing detail makes task impossible or unsafe to specify.
6. Output prompt only, unless user explicitly asks for direct file creation.

## Gather Or Infer

Collect or infer:

- feature or change name
- project, repo area, component, or subsystem being changed
- current behavior
- desired end state
- proposed new behavior
- scope
- out of scope
- UX requirements
- technical design constraints
- data or model changes
- API or interface changes
- persistence or config changes
- testing expectations
- risks, failure modes, and edge cases
- acceptance criteria
- definition of done
- step-by-step implementation plan

Prefer repo-grounded facts over generic planning language.

## Prompt Requirements

Write prompt in plain text. Tell coding agent:

- create markdown planning file called `TASK.md`
- write full file contents
- do not implement feature yet
- use repo context and existing conventions
- make assumptions explicit
- keep scope conservative
- write practical implementation plan, not abstract notes

Always include this sentence unless user explicitly requests implementation too:

`Do not implement the feature yet. Only create or update the planning file.`

## Required `TASK.md` Structure

Unless clearly irrelevant, require these sections:

1. Title
2. Overview
3. Background/context
4. Desired end state
5. Scope
6. Out of scope
7. Current behaviour
8. Proposed behaviour
9. UX/UI requirements
10. Technical design notes
11. Data/model changes
12. API/interface changes
13. Persistence/config changes
14. Error handling and edge cases
15. Step-by-step implementation plan
16. Testing plan
17. Acceptance criteria
18. Definition of done
19. Summary task table with checkboxes

## Required Summary Table

Require table near top of `TASK.md`, after overview.

Use this exact shape, but customize task rows to requested work:

```md
| Status | Task                   | Notes                                 |
| ------ | ---------------------- | ------------------------------------- |
| [ ]    | Define data model      | Add/update domain types               |
| [ ]    | Build UI               | Implement visible user-facing changes |
| [ ]    | Wire behaviour         | Connect UI/service/domain logic       |
| [ ]    | Add persistence/config | Save/load relevant state              |
| [ ]    | Add tests              | Unit/integration/manual checks        |
| [ ]    | Manual QA              | Verify final workflow                 |
```

Tell agent to tailor task names and notes to feature, and to keep table updated during implementation.

## Acceptance Criteria Rules

Require criteria that are:

- specific
- testable
- phrased as completed behavior
- focused on user-visible and system-visible outcomes

Reject vague criteria such as "works well", "UI is nice", or "code is clean".

Prefer examples like:

- Help button appears in pause menu.
- Help overlay opens on gameplay screens.
- Selecting `Don't show again` disables automatic display but preserves manual access.
- Preferences persist after restart.
- Missing UI targets do not crash overlay.

## Definition Of Done Rules

Require definition of done to include:

- implementation completed according to task description
- acceptance criteria satisfied
- tests added or updated where practical
- manual QA completed
- related regression checks completed
- code follows project conventions
- `TASK.md` summary table updated and checked off as work completes

## Implementation Plan Rules

Require step-by-step sequence.

Each step should say:

- what changes
- where changes likely belong, if known
- why step exists
- what validation or tests should follow

Avoid vague steps like "implement feature".

## Optional Additions

Include only when relevant:

- file or folder suggestions
- class, type, or interface suggestions
- example data shapes
- migration notes
- feature-flag notes
- rollback notes
- accessibility notes
- manual QA scenarios
- future follow-up tasks

## Output Format

Default output: one ready-to-use prompt block.

Prompt should follow this pattern and replace placeholders with repo-specific detail:

```text
Create a markdown planning file called `TASK.md` for the following implementation:

[FEATURE DESCRIPTION]

Use the current repository structure, existing docs, planning files, tests, and code paths to ground the plan. Make reasonable assumptions when details are missing, and label those assumptions clearly.

Do not implement the feature yet. Only create or update the planning file.

The `TASK.md` file must include:

- Title
- Overview
- Background/context
- Desired end state
- Scope
- Out of scope
- Current behaviour
- Proposed behaviour
- UX/UI requirements, if applicable
- Technical design notes
- Data/model changes, if applicable
- API/interface changes, if applicable
- Persistence/config changes, if applicable
- Error handling and edge cases
- Step-by-step implementation plan
- Testing plan
- Acceptance criteria
- Definition of done
- Summary task table with checkboxes

Add a summary table near the top, after the overview, with checkbox rows for each major task. Customize the tasks to this feature and instruct the developer or agent to check them off as work is completed.

Acceptance criteria must be specific and testable completed behaviours.

Definition of done must include implementation completion, satisfied acceptance criteria, tests, manual QA, regression checks, project-convention compliance, and updating/checking off the summary table.

Implementation steps must be concrete, ordered, and practical. For each step, say what changes, where changes likely belong if known, why the step exists, and what validation should follow.

Write the complete contents of `TASK.md` now.
```

## Guardrails

- Do not implement code.
- Do not blur planning and implementation.
- Do not omit current behavior when it can be discovered.
- Do not invent large scope outside user request.
- Do not produce generic filler when repo-specific evidence is available.
