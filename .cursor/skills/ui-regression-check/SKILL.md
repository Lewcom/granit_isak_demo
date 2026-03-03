---
name: ui-regression-check
description: Runs a focused visual and behavior checklist for the single-file CRM demo. Use when UI/CSS/interaction changes are made, especially in constructor, templates, selects, and warnings.
---

# UI Regression Check

## Target
- `granit-isak-crm-demo.html`

## Checklist
- Template cards render with expected compact sizing and actions remain clickable.
- Icon-only actions show tooltip text on hover and keep `aria-label`.
- Constructor and template editor both keep shared behavior (row add/delete, autofill).
- Selects keep visible arrow area and text does not visually collide with it.
- Frame->Tile warning flow works in constructor and templates.
- Central warning modal opens and can close by button and overlay click.

## Validation
1. Run lints for edited file.
2. If CSS/JS changed, advise hard refresh (`Ctrl+F5`).
3. Report what was verified and what could not be runtime-tested.

