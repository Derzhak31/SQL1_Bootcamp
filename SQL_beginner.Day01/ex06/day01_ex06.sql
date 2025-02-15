SELECT ORDER_DATE AS ACTION_DATE, PERSON.NAME AS NAME
FROM PERSON_ORDER
	JOIN PERSON ON PERSON.ID = PERSON_ORDER.PERSON_ID
INTERSECT
SELECT VISIT_DATE AS ACTION_DATE, PERSON.NAME AS NAME
FROM PERSON_VISITS
	JOIN PERSON ON PERSON.ID = PERSON_VISITS.PERSON_ID
ORDER BY ACTION_DATE, NAME DESC;