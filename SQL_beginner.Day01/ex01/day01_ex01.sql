(SELECT NAME AS OBJECT_NAME FROM PERSON
ORDER BY OBJECT_NAME)
UNION ALL
(SELECT PIZZA_NAME AS OBJECT_NAME FROM MENU 
ORDER BY OBJECT_NAME);