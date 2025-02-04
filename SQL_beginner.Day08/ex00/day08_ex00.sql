--Session 1
BEGIN;
UPDATE PIZZERIA
SET RATING = 5
WHERE NAME = 'Pizza Hut';
SELECT *
FROM PIZZERIA
WHERE NAME = 'Pizza Hut';
--Session 2
SELECT *
FROM PIZZERIA
WHERE NAME = 'Pizza Hut';
--Session 1
COMMIT;
--Session 2
SELECT *
FROM PIZZERIA
WHERE NAME = 'Pizza Hut';