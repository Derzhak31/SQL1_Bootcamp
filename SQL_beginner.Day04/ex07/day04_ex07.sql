INSERT INTO PERSON_VISITS
VALUES (
        (
            SELECT MAX(ID) + 1
            FROM PERSON_VISITS
        ),
        9,
        3,
        '2022-01-08'
    );
REFRESH MATERIALIZED VIEW MV_DMITRIY_VISITS_AND_EATS;