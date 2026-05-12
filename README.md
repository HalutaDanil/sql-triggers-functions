# SQL: Integrating Features

> Триггеры, функции и процедуры на PL/pgSQL

## О проекте

Изучение программирования на стороне сервера БД: создание функций, триггеров, хранимых процедур и курсоров на языке PL/pgSQL.

## Что изучено

| Задача | Тема |
|--------|------|
| `ex00` | Скалярные функции |
| `ex01` | Функции, возвращающие таблицы |
| `ex02` | `TRIGGER` на `INSERT` |
| `ex03` | `TRIGGER` на `UPDATE` |
| `ex04` | `TRIGGER` на `DELETE` |
| `ex05` | `INSTEAD OF TRIGGER` для VIEW |
| `ex06` | Курсоры |

## Пример: триггер с функцией

```sql
-- Функция-логгер
CREATE OR REPLACE FUNCTION log_insert()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO audit_log (table_name, action, changed_at)
    VALUES (TG_TABLE_NAME, 'INSERT', NOW());
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Триггер
CREATE TRIGGER trg_person_insert
AFTER INSERT ON person
FOR EACH ROW
EXECUTE FUNCTION log_insert();
```

## Технологии

- **PostgreSQL**
- **PL/pgSQL** — процедурное расширение SQL
- **Триггеры**, **функции**, **курсоры**

---

*Проект из портфолио*
