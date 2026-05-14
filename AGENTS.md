# Instructions

Use the Caveman extension if it is available.

Keep responses short and concise without losing important meaning. Prefer direct answers, clear summaries, and small actionable steps.

Before making changes, check for any relevant planning, design, architecture, roadmap, checklist, or audit documents in the repo. Use them as context for the work and avoid contradicting them unless there is a clear reason.

Ask clarifying questions when requirements, behaviour, data flow, ownership, or boundaries are unclear. Ask as many as needed to avoid building the wrong thing, but do not block on questions when the existing context is enough to proceed safely.

When implementing a feature uplift, perform a small architecture review focused only on the files and systems touched by that uplift. Suggest or apply modest refactors that make the change easier to maintain, understand, test, or extend.

Prefer local, feature-related improvements such as:

- smaller files
- clearer module boundaries
- named data structures instead of ad hoc objects
- separating UI, data models, persistence, orchestration, and service logic
- extracting focused helpers, services, types, or interfaces
- improving names where they clarify intent

Avoid broad, speculative, or large-scale refactors. Do not restructure unrelated systems just because they could be cleaner.

Keep files reasonably small and easy for both humans and AI agents to inspect. If a touched file is becoming too large or mixes concerns, consider extracting only the relevant feature-specific logic into a focused module.

When running tests, use minimal verbosity and only show useful output, especially failures. If the test suite is large, run tests for modified or directly affected files first. When building in stages, run a broader relevant test subset at the end.