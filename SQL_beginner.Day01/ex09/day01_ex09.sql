SELECT NAME FROM PIZZERIA
WHERE ID NOT IN 
	(SELECT PIZZERIA_ID FROM PERSON_VISITS);

SELECT NAME FROM PIZZERIA
WHERE NOT EXISTS 
	(SELECT PIZZERIA_ID FROM PERSON_VISITS
		WHERE PIZZERIA.ID = PERSON_VISITS.PIZZERIA_ID);