--Session 1
SHOW TRANSACTION ISOLATION LEVEL;
--Session 2
SHOW TRANSACTION ISOLATION LEVEL;
--Session 1
BEGIN;
--Session 2
BEGIN;
--Session 1
SELECT *
FROM PIZZERIA
WHERE NAME = 'Pizza Hut';
--Session 2
SELECT *
FROM PIZZERIA
WHERE NAME = 'Pizza Hut';
--Session 1
UPDATE PIZZERIA
SET RATING = 4
WHERE NAME = 'Pizza Hut';
--Session 2
UPDATE PIZZERIA
SET RATING = 3.6
WHERE NAME = 'Pizza Hut';
--Session 1
COMMIT;
--Session 2
COMMIT;
--Session 1
SELECT *
FROM PIZZERIA
WHERE NAME = 'Pizza Hut';
--Session 2
SELECT *
FROM PIZZERIA
WHERE NAME = 'Pizza Hut';