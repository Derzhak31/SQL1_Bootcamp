CREATE INDEX IDX_1 ON PIZZERIA (RATING);
SET ENABLE_SEQSCAN = OFF;
EXPLAIN ANALYZE
SELECT M.PIZZA_NAME AS PIZZA_NAME,
    MAX(RATING) OVER (
        PARTITION BY RATING
        ORDER BY RATING ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS K
FROM MENU M
    INNER JOIN PIZZERIA PZ ON M.PIZZERIA_ID = PZ.ID
ORDER BY 1,
    2;