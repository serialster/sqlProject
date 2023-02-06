SELECT departments.name as Отдел, round(AVG(salary)) as "Средняя заработная плата"
FROM departments
JOIN contracts ON contracts.departments_id = departments.departments_id
GROUP BY departments.name;