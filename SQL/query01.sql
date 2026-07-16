SELECT 
    e.first_name, 
    e.last_name, 
    e.hire_date, 
    j.job_title, 
    d.department_name, 
    e.salary
FROM HR.employees e
LEFT JOIN HR.jobs j ON e.job_id = j.job_id
LEFT JOIN HR.departments d ON e.department_id = d.department_id
WHERE d.department_name IS NOT NULL 
  AND e.salary > 2800
ORDER BY d.department_name, j.job_title, e.salary DESC;