---
name: architecture-design
description: Design or redesign project architecture before implementation. Use when planning a new system, reshaping an existing codebase, defining module boundaries, data flow, dependency direction, extensibility, or when prompts mention architecture design, system design, modular design, layering, domain boundaries, or restructuring before coding.
---

# Purpose

Design a practical architecture for a new or existing project without overengineering.

# When to Use

Use before major implementation, during redesign, or when current structure no longer supports change safely.

# Operating Mode

Analysis only.

# Inputs

- Product or feature goal
- Repository root if code already exists
- Constraints, scale assumptions, and non-functional needs

# Workflow

1. Inspect repository and detect current stack, patterns, and constraints.
2. Clarify goal, scale, actors, and critical workflows.
3. Define modules, layers, domain boundaries, and dependency direction.
4. Describe data flow, state ownership, integration points, and failure boundaries.
5. Propose testing strategy aligned to architecture.
6. Evaluate extensibility needs and remove unnecessary abstraction.
7. Present recommended architecture and rejected simpler or more complex options when relevant.

# Output Format

```markdown
# Architecture Design

## Goal
- ...

## Constraints And Assumptions
- ...

## Current State
- observed current architecture or `new project`

## Proposed Modules And Boundaries
- module: responsibility, depends on

## Data Flow
1. ...

## Dependency Direction Rules
- ...

## Testing Strategy
- ...

## Extensibility Notes
- ...

## Risks And Tradeoffs
- ...

## Recommended Next Steps
1. ...
```

# Safety Rules

- Do not edit code.
- Prefer simple boundaries that solve current needs plus near-term growth.
- Avoid speculative abstractions without evidence.

# Verification Rules

- Ensure design matches repository reality when code exists.
- Check proposed boundaries against current deployment, runtime, and team workflow constraints if discoverable.
- Make assumptions explicit.

# Example Invocation

`Use this skill to design modular architecture for this project before implementation starts.`
