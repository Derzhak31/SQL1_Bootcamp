SELECT
	CONCAT(NAME,' (age: ', AGE, ', gender: ''', GENDER, ''', address: ''', ADDRESS, ''')'
	) AS INFO
FROM PERSON
ORDER BY INFO;