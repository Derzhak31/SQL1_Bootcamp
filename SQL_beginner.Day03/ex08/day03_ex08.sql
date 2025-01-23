INSERT INTO MENU
VALUES (
        (
            SELECT MAX(ID) + 1
            FROM MENU
        ),
        (
            SELECT ID
            FROM PIZZERIA
            WHERE NAME = 'Dominos'
        ),
        'sicilian pizza',
        900
    );