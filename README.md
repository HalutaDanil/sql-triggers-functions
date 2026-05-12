<div align="center">

# SQL Triggers and Functions

**[English](#english) | [Русский](#русский)**

</div>

---

<a name="english"></a>
## 🇬🇧 English

Server-side database programming: creating functions, triggers, stored procedures, and cursors in PL/pgSQL.

### 🛠️ Tech Stack

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white) ![PL/pgSQL](https://img.shields.io/badge/PL/pgSQL-336791?style=flat-square)

### ✨ Features

| Exercise | Topic |
|----------|-------|
| ex00 | Scalar functions |
| ex01 | Table-returning functions |
| ex02 | INSERT trigger |
| ex03 | UPDATE trigger |
| ex04 | DELETE trigger |
| ex05 | INSTEAD OF trigger for VIEW |
| ex06 | Cursors |

### 🚀 Quick Start

```sql
-- Logger function
CREATE OR REPLACE FUNCTION log_insert()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO audit_log (table_name, action, changed_at)
    VALUES (TG_TABLE_NAME, 'INSERT', NOW());
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger
CREATE TRIGGER trg_person_insert
AFTER INSERT ON person
FOR EACH ROW
EXECUTE FUNCTION log_insert();
```

---

<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=rect&color=0:58a6ff,50:1f6feb,100:0969da&height=2&section=header&text=&fontSize=1"/>
</div>

<a name="русский"></a>
## 🇷🇺 Русский

Программирование на стороне сервера БД: создание функций, триггеров, хранимых процедур и курсоров на языке PL/pgSQL.

### 🛠️ Стек технологий

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white) ![PL/pgSQL](https://img.shields.io/badge/PL/pgSQL-336791?style=flat-square)

### ✨ Возможности

| Задача | Тема |
|--------|------|
| ex00 | Скалярные функции |
| ex01 | Функции, возвращающие таблицы |
| ex02 | Триггер на INSERT |
| ex03 | Триггер на UPDATE |
| ex04 | Триггер на DELETE |
| ex05 | INSTEAD OF триггер для VIEW |
| ex06 | Курсоры |

### 🚀 Быстрый старт

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

---

<div align="center">

*Project from portfolio | Проект из портфолио*

</div>
