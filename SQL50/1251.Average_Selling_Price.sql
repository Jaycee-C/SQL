SELECT p.product_id, IFNULL(ROUND(SUM(US.units * price)/SUM(US.units), 2),0) as average_price
FROM Prices p LEFT JOIN UnitsSold US
ON p.product_id = US.product_id AND US.purchase_date BETWEEN p.start_date AND p.end_Date
GROUP BY p.product_id;