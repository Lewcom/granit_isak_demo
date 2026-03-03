---
name: pt-catalog-editor
description: Safely edits PT catalog data and dependent constructor logic in the CRM demo file. Use when adding colors, parameters, values, or pricing in PT and when updating compatibility behavior.
---

# PT Catalog Editor

## Goals
- Keep `PT` edits backward compatible.
- Avoid breaking existing template rows loaded from localStorage.

## Rules
- Preserve existing keys where possible (`cat`, `comp`, `clr`, `param`, `val`, `price`, `note`).
- If introducing new color variants, keep legacy aliases when already used (example: `-` alias).
- Do not silently remove colors/values referenced by defaults in `baseModels`.
- If constructor logic depends on shared helpers, verify both `cRows` and `tplRows` paths.

## Procedure
1. Edit PT data block.
2. Verify helper assumptions (`ptClrs`, `ptVals`, defaults/autofill).
3. Verify defaults in `baseModels` remain valid.
4. Run lints and summarize compatibility impact.

