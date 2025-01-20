SELECT NAME,
	CASE
		WHEN AGE >= 10 AND AGE <= 20 THEN 'interval #1'
		WHEN AGE > 20 AND AGE < 24 THEN 'interval #2'
		ELSE 'interval #3'
	END INTERVAL_INFO
FROM PERSON
ORDER BY INTERVAL_INFO;