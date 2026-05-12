-- create sequence seq_person_discounts start 1;
--
-- alter table person_discounts
-- alter column id set default nextval('seq_person_discounts');
--
-- select
--     setval('seq_person_discounts', (select count(*) + 1 from person_discounts));
SELECT count(*)=1 AS check1,
      max("start_value") = 1 AS check2,
      max("last_value") > 5 AS check3
FROM pg_sequences
WHERE sequencename = 'seq_person_discounts'
