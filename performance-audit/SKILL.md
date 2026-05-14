---
name: performance-audit
description: Review likely performance problems in a repository without editing code. Use when prompts mention performance audit, slow paths, repeated IO, expensive loops, build or bundle bloat, frontend rerenders, caching gaps, memory growth, slow tests, or when measured and suspected issues must be separated clearly.
---

# Purpose

Identify probable performance bottlenecks and distinguish measured issues from informed suspicion.

# When to Use

Use when performance is degrading, scaling concerns are rising, or build and test times need diagnosis.

# Operating Mode

Analysis only.

# Inputs

- Repository root
- Optional benchmarks, traces, or user complaints

# Workflow

1. Inspect critical paths, data flows, tests, build config, and performance-sensitive code.
2. Detect stack and runtime model from repository files.
3. Look for:
   - expensive loops
   - repeated IO
   - blocking operations
   - avoidable rerenders if frontend exists
   - inefficient data structures
   - bundle or build issues
   - unbounded memory growth
   - missing caching
   - slow tests or builds
4. Separate measured evidence from likely-but-unmeasured concerns.
5. Recommend targeted validation and fixes.

# Output Format

```markdown
# Performance Audit

## Measured Issues
- ...

## Suspected Issues
- ...

## Build Or Test Performance Problems
- ...

## Data Structure Or Algorithm Concerns
- ...

## Caching Opportunities
- ...

## Recommended Next Checks
1. ...
```

# Safety Rules

- Do not edit code.
- Do not treat hypothetical concerns as confirmed regressions.
- Warn against premature optimisation when impact is unclear.

# Verification Rules

- Label each finding as measured, inferred, or speculative.
- Reference concrete paths and call sites.
- Prefer hotspots with plausible user impact over micro-optimisations.

# Example Invocation

`Use this skill to audit likely performance issues and separate measured problems from suspected ones.`
