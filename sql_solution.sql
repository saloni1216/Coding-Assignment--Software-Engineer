SELECT e.name, a.attendance_count
FROM employee e
LEFT JOIN (
    SELECT employee_id, COUNT(*) AS attendance_count
    FROM attendance_register
    GROUP BY employee_id
) a
ON e.id = a.employee_id
ORDER BY a.attendance_count DESC;
LIMIT 1;



SELECT e.name, a.attendance_count
FROM employee e
LEFT JOIN (
    SELECT employee_id, COUNT(*) AS attendance_count
    FROM attendance_register
    GROUP BY employee_id
) a
ON e.id = a.employee_id
ORDER BY a.attendance_count ASC;
LIMIT 1;
