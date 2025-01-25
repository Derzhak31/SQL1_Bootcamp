WITH RECURSIVE TRIP AS (
    SELECT POINT_1 AS DOT,
        POINT_1,
        POINT_2,
        PRICE
    FROM ROUTES
    WHERE POINT_1 = 'a'
    UNION
    SELECT CONCAT(T.DOT, ',', R.POINT_1) AS DOT,
        R.POINT_1,
        R.POINT_2,
        R.PRICE + T.PRICE
    FROM TRIP T
        JOIN ROUTES R ON R.POINT_1 = T.POINT_2
    WHERE DOT NOT LIKE CONCAT('%', R.POINT_1, '%')
),
TRIP_2 AS (
    SELECT PRICE AS TOTAL_COST,
        CONCAT('{', DOT, ',', POINT_2, '}') AS TOUR
    FROM TRIP
    WHERE POINT_2 = 'a'
        AND LENGTH(DOT) = 7
    ORDER BY 1,
        2
)
SELECT *
FROM TRIP_2
WHERE TOTAL_COST = (
        SELECT MIN(TOTAL_COST)
        FROM TRIP_2
    );