<div align="center">

# SQL Triggers and Functions

**[English](#english) | [Русский](#русский)**

</div>

---

<a name="english"></a>
## 🇬🇧 English

Moving business logic into the database layer with PL/pgSQL. Functions and triggers ensure data integrity and automate reactions to changes.

### What was done

| Task | What & Why |
|------|-----------|
| Scalar Functions | Created functions returning a single value. Encapsulated reusable calculations. |
| Table-Returning Functions | Built functions that return sets of rows. Useful for parameterized views and complex lookups. |
| INSERT Trigger | Fired on insert to validate or log data automatically. Enforced rules at the database level. |
| UPDATE Trigger | Fired on update to track changes or enforce constraints. Prevented invalid modifications. |
| DELETE Trigger | Fired on delete to archive rows or block deletions. Protected critical data. |
| INSTEAD OF Trigger | Made non-updatable views writable by redirecting DML to base tables. |
| Cursors | Iterated over result sets row by row. Learned when cursors are necessary and when set-based operations are better. |

### Key takeaways
- **Triggers** automate enforcement but add hidden complexity. Use them for cross-cutting concerns, not core business logic.
- **Set-based operations** in SQL are almost always faster than cursor loops.
- `INSTEAD OF` triggers bridge the gap between views and write operations.

### Tech Stack

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white) ![PL/pgSQL](https://img.shields.io/badge/PL/pgSQL-336791?style=flat-square)

---

<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=rect&color=0:58a6ff,50:1f6feb,100:0969da&height=2&section=header&text=&fontSize=1"/>
</div>

<a name="русский"></a>
## 🇷🇺 Русский

Перенос бизнес-логики на уровень базы данных через PL/pgSQL. Функции и триггеры обеспечивают целостность данных и автоматизируют реакцию на изменения.

### Что было сделано

| Задача | Что и зачем |
|--------|-------------|
| Скалярные функции | Создание функций, возвращающих одно значение. Инкапсуляция переиспользуемых вычислений. |
| Функции, возвращающие таблицы | Функции, возвращающие наборы строк. Полезны для параметризованных представлений и сложных выборок. |
| Триггер на INSERT | Срабатывание при вставке для автоматической валидации или логирования. Принудительное соблюдение правил на уровне базы. |
| Триггер на UPDATE | Срабатывание при обновлении для отслеживания изменений или принудительного соблюдения ограничений. Предотвращение недопустимых модификаций. |
| Триггер на DELETE | Срабатывание при удалении для архивации строк или блокировки удалений. Защита критичных данных. |
| INSTEAD OF триггер | Делает неизменяемые представления записываемыми, перенаправляя DML к базовым таблицам. |
| Курсоры | Итерация по наборам результатов построчно. Изучено, когда курсоры необходимы, а когда set-based операции лучше. |

### Ключевые выводы
- **Триггеры** автоматизируют принудительное соблюдение правил, но добавляют скрытую сложность. Использовать для сквозных задач, а не для core business logic.
- **Set-based операции** в SQL почти всегда быстрее циклов с курсорами.
- `INSTEAD OF` триггеры связывают разрыв между представлениями и операциями записи.

### Стек технологий

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white) ![PL/pgSQL](https://img.shields.io/badge/PL/pgSQL-336791?style=flat-square)

---

<div align="center">

*Project from portfolio | Проект из портфолио*

</div>
