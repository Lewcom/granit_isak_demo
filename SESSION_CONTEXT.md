# Session Context (Current)

## Core Project
- Main app file: `d:\AI_Project\Demo\granit-isak-crm-demo.html`
- Architecture: single-file CRM demo (HTML/CSS/JS), no splitting in client-facing file.

## Runtime Model (CRM)
- Constructor + template editor are synchronized via shared row logic.
- `mtype` (`single|double`) is used in CRM filtering and pricing logic.
- Business rule `Рамка -> Плитка` is warning-only and does not block editing.
- UI hides `Категорія`, but category stays in data model.

## Data Tables Status
- `TechTables/components_catalog.json` = full catalog (single + double).
- `TechTables/single_base.json` and `TechTables/double_base.json` = type-focused selections.
- Recently added and synced in catalogs/CRM:
  - color `вісконт`,
  - components `Стовпчики`, `Колони`, `Шари (куля)`, `Квітник`.

## DB Transition Status
- Working folder: `d:\AI_Project\Demo\DB_Transition`
- Current unified dataset:
  - `components_unified_v1.json`
  - `colors_dictionary.json`
  - `params_dictionary.json`
  - `options_dictionary.json`
- Normalization done:
  - `Бардюр верхній`: split into `ширина + форма`
  - `Хвильки 4шт`: split into `товщина + діапазон`
- Pricing type decision:
  - moved from param pair (`variant`) to dedicated technical column `pricing_type`.
  - formula remains `final_price = price + option_value`.

## Git / Backup State
- Local backup commit exists: `bf55904`
- Branch: `master`
- Remote: `origin = https://github.com/Lewcom/granit_isak_demo.git`

## Quick Restart Checklist
1. Open `granit-isak-crm-demo.html` and verify constructor/template editor load.
2. Check `Рамка`:
   - both types available via `mtype`,
   - colors include full set including `вісконт`.
3. Open `TechTables/index.html` and verify table viewers load.
4. For DB design work, continue from `DB_Transition/STRUCTURE_PROPOSAL.md` + `DB_Transition/DECISIONS.md`.
