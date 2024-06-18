SELECT A.id as id
FROM weather A
JOIN Weather B
ON A.recordDate = Date_Add(B.recordDate, INTERVAL 1 DAY)
WHERE A.temperature > B.temperature;