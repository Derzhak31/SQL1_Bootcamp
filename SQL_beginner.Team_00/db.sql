CREATE TABLE ROUTES (
    ID INT PRIMARY KEY,
    POINT_1 VARCHAR NOT NULL,
    POINT_2 VARCHAR NOT NULL,
    PRICE INTEGER NOT NULL DEFAULT 0
);
INSERT INTO ROUTES
VALUES (1, 'a', 'b', 10),
    (2, 'b', 'a', 10),
    (3, 'a', 'c', 15),
    (4, 'c', 'a', 15),
    (5, 'a', 'd', 20),
    (6, 'd', 'a', 20),
    (7, 'b', 'd', 25),
    (8, 'd', 'b', 25),
    (9, 'c', 'd', 30),
    (10, 'd', 'c', 30),
    (11, 'b', 'c', 35),
    (12, 'c', 'b', 35);