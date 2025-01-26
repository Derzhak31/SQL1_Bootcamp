SET ENABLE_SEQSCAN = OFF;
EXPLAIN ANALYZE
SELECT PIZZA_NAME,
    PIZZERIA.NAME AS PIZZERIA_NAME
FROM MENU
    JOIN PIZZERIA ON PIZZERIA.ID = MENU.PIZZERIA_ID;