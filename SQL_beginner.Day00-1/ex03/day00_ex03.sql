SELECT DISTINCT PERSON_ID
FROM PERSON_VISITS
WHERE
	VISIT_DATE BETWEEN '2022-01-06' AND '2022-01-09'
	OR PIZZERIA_ID = 2
ORDER BY PERSON_ID DESC;