SELECT M.name 
FROM Employee E 
JOIN Employee M ON E.managerID = M.id
GROUP BY M.id, M.name
HAVING COUNT(E.id) >= 5;