-- comment on table person_discounts is 'discount calculation table';
--
-- comment on column person_discounts.id is 'unique number to identify the record';
--
-- comment on column person_discounts.person_id is 'persons associated number';
--
-- comment on column person_discounts.discount is 'individual discount';
--
-- comment on column person_discounts.pizzeria_id is 'pizzerias associated number';
SELECT count(*) = 5 AS check
FROM pg_description
WHERE objoid = 'person_discounts'::regclass
