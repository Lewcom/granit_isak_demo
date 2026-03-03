# Session Context (Optimized)

## Core Project
- Main client file: `d:\AI_Project\Demo\granit-isak-crm-demo.html`
- Architecture: single-file CRM demo (HTML + CSS + JS, no split requested)

## Data/Docs Layer
- Tech data folder: `d:\AI_Project\Demo\TechTables`
- JSON sources:
  - `components_catalog.json` (single catalog + aliases)
  - `single_base.json`
  - `double_base.json` (double 220x220 draft from client photos)
- Readable HTML views (auto `fetch` JSON):
  - `index.html`, `components_catalog.html`, `single_base.html`, `double_base.html`

## Key Implemented Behavior
- Constructor + template editor share row logic (`mkRow`, `bindRow`, `refreshRow`).
- Hidden `Категорія` in UI; `cat` kept in data and derived from `comp`.
- Autofill works on `Компонент/Колір/Значення` via `applySelectionDefaults(...)`.
- Rule `Рамка -> Плитка` is warning-only in both flows:
  - constructor (`cRows`)
  - templates (`tplRows`)
- Warning is centered modal with close button + overlay close.

## UI Decisions
- Template cards are super-compact (150px), multi-line title, icon actions.
- Icon buttons have `title` and `aria-label`.
- Select overlap fixed by:
  - right padding in CSS + inline select padding in `mkRow`.
- Price column narrowed; current grid:
- `COL_W = 'minmax(0,1.35fr) minmax(0,.9fr) minmax(0,.85fr) minmax(0,.95fr) 72px minmax(0,.95fr) 38px'`

## Workflow Guardrails
- Cursor rule: `.cursor/rules/demo-crm-workflow.mdc`
- Project skills:
  - `.cursor/skills/ui-regression-check/SKILL.md`
  - `.cursor/skills/pt-catalog-editor/SKILL.md`
  - `.cursor/skills/session-handoff/SKILL.md`
- Local hooks active via `.githooks` (`pre-commit`, `pre-push`)

## Git Status
- Repo initialized and pushed to GitHub.
- Remote: `origin -> https://github.com/Lewcom/granit_isak_demo.git`
- Tracking branch: `master -> origin/master`
- Latest commits:
  - `2ed4e59` rename main CRM file + update references
  - `ed17cd8` initial bootstrap (rules, skills, TechTables, demo updates)

## Open Items / Next Steps
- Double data still marked draft where source is ambiguous (notably frame color logic).
- Optional: add soft-action button `Додати Плитку` to center warning modal.
- Optional: tighten select spacing further if future long labels appear.
