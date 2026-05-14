## Feature Uplift Planning and Architecture Guardrail

When working on a feature uplift, the agent must first look for any relevant planning, design, architecture, roadmap, checklist, or audit documents in the repository before making changes. Relevant files may include, but are not limited to:

- `AGENTS.md`
- `README.md`
- `docs/**/*.md`
- `plans/**/*.md`
- `architecture/**/*.md`
- `design/**/*.md`
- `milestones/**/*.md`
- `TODO.md`
- audit or refactor reports

If relevant plans exist, the agent must use them as context and avoid contradicting them unless it explicitly explains why the implementation differs.

Before implementing, the agent should ask as many clarifying questions as needed when requirements, data flow, ownership, boundaries, or expected behaviour are unclear. If enough information is already available, proceed without unnecessary questions.

During implementation, perform a small architecture review focused only on the current feature uplift. Look for opportunities to make the uplift easier to maintain, understand, test, and extend. Prefer small, local improvements such as:

- clearer module boundaries
- smaller files
- extracting feature-specific types or interfaces
- separating data models from UI, persistence, orchestration, or service logic
- replacing ad hoc objects with named data structures
- improving naming where it clarifies intent
- moving reusable feature logic into focused helpers or services
- making data flow easier for a human or AI agent to trace

The agent should suggest and, where appropriate, apply modest refactors that directly support the current feature uplift. Avoid broad, speculative, or large-scale refactors. Do not restructure unrelated systems merely because they could be cleaner.

When a refactor is proposed, briefly explain:

1. what problem it solves,
2. why it helps the current feature,
3. why the scope is limited and safe.

Prefer incremental changes that preserve existing behaviour. Keep files small enough to be easily reviewed by a human and easily ingested by an AI agent. If a file becomes too large or mixes multiple concerns, consider extracting only the parts touched by the current uplift into a focused module.

At the end of the task, summarize:

- which relevant plans or docs were consulted,
- what feature work was completed,
- what small architectural improvements were made,
- what larger refactors were intentionally avoided or deferred.
