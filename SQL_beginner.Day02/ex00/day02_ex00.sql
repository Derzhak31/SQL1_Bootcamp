SELECT NAME, RATING FROM PIZZERIA
WHERE ID NOT IN 
	(SELECT PIZZERIA_ID FROM PERSON_VISITS);