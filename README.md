# Portable Agent Skills Pack

Reusable, platform-agnostic Agent Skills pack for software development work. Each skill lives in its own folder and contains a single required `SKILL.md` file written in portable Agent Skills format.

## Install For Codex

Run either local install script from this repository:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install-codex-skills.ps1
```

```bash
bash ./scripts/install-codex-skills.sh
```

Default install target:

- `$CODEX_HOME\skills` if `CODEX_HOME` is set
- otherwise `$HOME\.codex\skills`

Useful options:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install-codex-skills.ps1 -Force
powershell -ExecutionPolicy Bypass -File .\scripts\install-codex-skills.ps1 -Mode Symlink
powershell -ExecutionPolicy Bypass -File .\scripts\install-codex-skills.ps1 -TargetRoot E:\custom\skills
```

```bash
bash ./scripts/install-codex-skills.sh --force
bash ./scripts/install-codex-skills.sh --mode symlink
bash ./scripts/install-codex-skills.sh --target-root "$HOME/custom-skills"
```

Use `-Force` or `--force` to replace already-installed skill folders. Use symlink mode when you want repo updates to reflect immediately across projects.
## Structure

```text
skills/
  README.md
  architecture-audit/
    SKILL.md
  architecture-design/
    SKILL.md
  implementation-plan/
    SKILL.md
  refactor-planner/
    SKILL.md
  audit-fixer/
    SKILL.md
  debugging-investigator/
    SKILL.md
  test-strategy/
    SKILL.md
  test-generator/
    SKILL.md
  code-review/
    SKILL.md
  documentation-writer/
    SKILL.md
  dependency-audit/
    SKILL.md
  security-audit/
    SKILL.md
  performance-audit/
    SKILL.md
  ci-build-diagnosis/
    SKILL.md
  api-design-review/
    SKILL.md
  release-readiness/
    SKILL.md
  agent-onboarding/
    SKILL.md
```

## How To Use

Use a skill by pointing an agent at its folder or pasting the skill path into the prompt.

Example prompts:

- `Use skill at skills/architecture-audit to audit this repository.`
- `Use skill at skills/implementation-plan to turn this feature request into a safe plan.`
- `Use skill at skills/test-generator to add focused tests for recent bug fix.`

## Portability

These skills avoid provider-specific fields and stack-specific assumptions. To adapt them for a specific AI tool:

1. Copy selected skill folders into that tool's skills directory.
2. Keep each folder name unchanged.
3. Preserve each `SKILL.md` front matter and body structure.
4. Add tool-specific metadata only outside `SKILL.md` if your platform requires it.

## Analysis-Only Skills

- `architecture-audit`
- `architecture-design`
- `implementation-plan`
- `refactor-planner`
- `test-strategy`
- `code-review`
- `dependency-audit`
- `security-audit`
- `performance-audit`
- `api-design-review`
- `release-readiness`

## Edit-Allowed Skills

- `audit-fixer`
- `test-generator`
- `documentation-writer`
- `agent-onboarding`

## Analysis-First, Edit-After-Diagnosis Skills

- `debugging-investigator`
- `ci-build-diagnosis`

## Recommended Workflow

1. `agent-onboarding`
2. `architecture-audit`
3. `test-strategy`
4. `implementation-plan`
5. `refactor-planner`
6. `audit-fixer`
7. `test-generator`
8. `code-review`
9. `release-readiness`

## Notes

- Each skill is independently usable.
- Skills prefer incremental, behaviour-preserving work.
- Skills tell agents to inspect repository reality before concluding.
- Skills are markdown-only by design for easy reuse across providers.

