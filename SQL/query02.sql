SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    e.hire_date, 
    d.department_name,
    l.city,
    c.country_name,
    r.region_name
FROM HR.employees e
LEFT JOIN HR.departments d ON e.department_id = d.department_id
LEFT JOIN HR.locations l ON d.location_id = l.location_id
LEFT JOIN HR.countries c ON l.country_id = c.country_id
LEFT JOIN HR.regions r ON c.region_id = r.region_id
WHERE r.region_name IS NOT NULL AND e.salary > 2800
ORDER BY r.region_name, c.country_name, d.department_name, e.salary DESC;