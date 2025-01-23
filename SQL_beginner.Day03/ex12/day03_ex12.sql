INSERT INTO PERSON_ORDER
SELECT GENERATE_SERIES(
        (
            SELECT MAX(ID) + (
                    SELECT MIN(ID)
                    FROM PERSON
                )
            FROM PERSON_ORDER
        ),
        (
            SELECT MAX(ID) + (
                    SELECT MAX(ID)
                    FROM PERSON
                )
            FROM PERSON_ORDER
        ),
        1
    ),
    GENERATE_SERIES(
        (
            SELECT MIN(ID)
            FROM PERSON
        ),
        (
            SELECT MAX(ID)
            FROM PERSON
        ),
        1
    ),
    (
        SELECT ID
        FROM MENU
        WHERE PIZZA_NAME = 'greek pizza'
    ),
    '2022-02-25';