CREATE OR REPLACE FUNCTION FUNC_MINIMUM (VARIADIC ARR NUMERIC []) RETURNS NUMERIC AS $$ BEGIN RETURN (
        SELECT min(num)
        FROM unnest(arr) AS num
    );
END;
$$ LANGUAGE PLPGSQL;
-----
SELECT FUNC_MINIMUM (VARIADIC ARR => ARRAY [10.0, -1.0, 5.0, 4.4]);