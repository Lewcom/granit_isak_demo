# Structure Proposal (v1)

Ціль: одна робоча таблиця з компонентами + легкі довідники для валідації і керування варіативністю.

## 1) Основна таблиця (fact)

Назва: `components_unified_v1`  
Файл: `components_unified_v1.json`

Поля:

- `component_code` (обов'язково, технічний унікальний код)
- `component`
- `pricing_type` (`single|double`, технічна колонка прайсу)
- `colors` (1 колір на рядок, тільки канонічні значення)
- `param1`, `value1`
- `param2`, `value2`
- `param3`, `value3`
- `option`
- `option_value` (число)
- `notes`
- `price`

Правило ціни:

- `final_price = price + option_value`

## 2) Довідники (dimension-like)

### `colors_dictionary.json`

- список канонічних кольорів, які дозволені в `colors`.

### `params_dictionary.json`

- `param_name` -> `components[]` -> `allowed_values[]`.
- `components[]` містить `{ component_code, component, allowed_values[] }`.
- використовується для валідації введення і форм.

### `options_dictionary.json`

- `option_name` -> можливі `option_value`.
- правило формули фінальної ціни.

## 3) Як зберігаємо варіативність

- Кілька параметрів для компонента: через пари `paramN/valueN`.
- Якщо значення поєднує 2 властивості в одному полі, розбиваємо на окремі параметри:
  - `Бардюр верхній`: `ширина` + `форма`;
  - `Хвильки 4шт`: `товщина` + `діапазон`.
- Single/Double зберігаємо окремо в `pricing_type`, а не в `paramN/valueN`.
- Додаткові надбавки з нотаток (типу `+$10`) винесені в `option` + `option_value`.

## 4) Чому це працює

- Швидко фільтрувати/рахувати ціни в одному масиві рядків.
- Не втрачається деталізація компонентів з 2-3 параметрами.
- Довідники дозволяють тримати дані чистими без ускладнення основної таблиці.
