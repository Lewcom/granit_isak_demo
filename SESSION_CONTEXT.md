# Session Context (Current)

## Core Project
- Main app file: `d:\AI_Project\Demo\granit-isak-crm-demo.html`
- Architecture: single-file CRM demo (HTML/CSS/JS), no file splitting.

## Current UI/Data Model
- Constructor and template editor use shared row pipeline:
  - `mkRow(...)`, `bindRow(...)`, `refreshRow(...)`, `applySelectionDefaults(...)`
- Each row has monument type field: `mtype` (`single`/`double`).
- Prices/options are filtered by `mtype` (not label-only).
- Rule `Рамка -> Плитка` stays warning-only in constructor and templates.
- `Категорія` remains hidden in UI, but stored as `cat` in row data.

## Key Recent Changes
- Added `Single/Double` column into constructor/template rows.
- Implemented typed catalog logic in app (`PT` + double dataset merged for filtering by `mtype`).
- Added 4 presets (2 Single + 2 Double) with `mtype`-aware prices:
  - `Single — Стандарт 120×220`
  - `Single — Кольоровий 120×220`
  - `Double — Стандарт 220×220`
  - `Double — Кольоровий 220×220`
- Fixed init order bug so `Рамка` colors/widths show correctly for both types.

## TechTables Status
- Folder: `d:\AI_Project\Demo\TechTables`
- `components_catalog.json` is now FULL:
  - `catalog_single`
  - `catalog_double_220x220`
- `single_base.json` and `double_base.json` are type-specific views.
- View pages:
  - `components_catalog.html` shows Full catalog with type filter.
  - `single_base.html` has detailed Single table.
  - `double_base.html` has detailed Double table.
- In table views, column order aligned to:
  - `Колір` -> `Параметр` -> `Значення`
- Offset/alias rows are expanded to concrete color/price lines in viewers for readability.

## Workflow Files
- Rule: `.cursor/rules/demo-crm-workflow.mdc`
- Skills:
  - `.cursor/skills/ui-regression-check/SKILL.md`
  - `.cursor/skills/pt-catalog-editor/SKILL.md`
  - `.cursor/skills/session-handoff/SKILL.md`
- Setup notes: `d:\AI_Project\Demo\WORKFLOW_SETUP.md`

## Quick Restart Checklist
1. Open `granit-isak-crm-demo.html`.
2. Validate constructor row behavior:
   - switch `Single/Double`
   - pick `Рамка`
   - confirm color list and prices change by type
3. Open `TechTables/index.html` and verify:
   - Full catalog page loads both types
   - Single/Double pages show detailed rows with expected column order
