SELECT position.name as Должность, round(AVG(salary)) as "Средняя ЗП по должности",
CASE 
	WHEN AVG(salary) > (SELECT AVG(salary) FROM contracts) THEN 'Да' ELSE 'Нет' END AS "Больше ли общей средней ЗП"
FROM position
JOIN contracts ON contracts.position_id = position.position_id
GROUP BY position.name;