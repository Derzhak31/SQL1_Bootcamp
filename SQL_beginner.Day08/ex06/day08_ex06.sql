--Session 1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--Session 2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--Session 1
SELECT SUM(RATING)
FROM PIZZERIA;
--Session 2
INSERT INTO PIZZERIA (ID, NAME, RATING)
VALUES (11, 'Kazan Pizza 2', 4);
COMMIT;
--Session 1
SELECT SUM(RATING)
FROM PIZZERIA;
COMMIT;
SELECT SUM(RATING)
FROM PIZZERIA;
--Session 2
SELECT SUM(RATING)
FROM PIZZERIA;