/*
The LIMIT clause helps control the number of rows returned.
Performance: It can improve performance when working with large datasets by fetching only the required data.
Use in Pagination: Often used in combination with the OFFSET clause for paginated results.
*/

SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- This query retrieves the top 5 employees with the highest salaries.

