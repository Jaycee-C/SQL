-- Solution 1
SELECT A.id as id
FROM weather A
JOIN Weather B
ON A.recordDate = Date_Add(B.recordDate, INTERVAL 1 DAY)
WHERE A.temperature > B.temperature;


-- Solution 2
SELECT w2.id as Id
FROM weather w1, weather w2
WHERE DATEDIFF(w2.recordDate, w1.recordDate) = 1 AND w1.temperature < w2.temperature;