# Workflow Setup

This project now includes practical guardrails for faster and safer edits.

## Included
- Cursor rule: `.cursor/rules/demo-crm-workflow.mdc`
- Project skills:
  - `.cursor/skills/ui-regression-check/SKILL.md`
  - `.cursor/skills/pt-catalog-editor/SKILL.md`
  - `.cursor/skills/session-handoff/SKILL.md`
- VS Code/Cursor config:
  - `.vscode/extensions.json`
  - `.vscode/settings.json`
- Git hooks:
  - `.githooks/pre-commit`
  - `.githooks/pre-push`
  - `.githooks/install-hooks.ps1`

## Enable hooks (when git is initialized)
From project root:

```powershell
git init
powershell -ExecutionPolicy Bypass -File ".githooks/install-hooks.ps1"
```

## Notes
- Hooks are lightweight and safe: if `npx`/tools are missing, they skip checks.
- Main delivery model remains single-file (`crm_monuments (1).html`).

