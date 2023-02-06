SELECT CONCAT(first_name,' ',middle_name,' ', last_name) as ФИО,salary as "Заработная плата",departments.name as Должность
FROM employees
JOIN contracts ON contracts.employees_id = employees.employees_id
JOIN departments ON contracts.departments_id = departments.departments_id
WHERE first_name = 'Давид';