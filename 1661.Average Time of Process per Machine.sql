SELECT e.machine_id, ROUND(AVG(ABS(e.timestamp - s.timestamp)),3) AS processing_time
FROM Activity e
JOIN Activity s ON e.machine_id = s.machine_id AND e.process_id = s.process_id
WHERE e.activity_type = "end" AND s.activity_type ="start"
GROUP BY e.machine_id;

