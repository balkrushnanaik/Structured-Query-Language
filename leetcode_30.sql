USE leetcode;

CREATE TABLE IF NOT EXISTS Employees5(
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    reports_to INT,
    age INT
);

INSERT INTO Employees5 (employee_id, name, reports_to, age) VALUES
(9, 'Hercy', NULL, 43),
(6, 'Alice', 9, 41),
(4, 'Bob', 9, 36),
(2, 'Winston', NULL, 37);

SELECT
    e5.employee_id,
    e5.name,
    COUNT(e6.employee_id) AS reports_count,
    ROUND(AVG(e6.age),0) AS average_count
FROM Employees5 AS e5
JOIN Employees5 AS e6
ON e5.employee_id = e6.reports_to
GROUP BY e5.employee_id, e5.name;

SELECT
    e.employee_id,
    e.name,
    COUNT(r.employee_id) AS reports_count,
    ROUND(AVG(r.age), 0) AS average_age
FROM Employees5 e
JOIN Employees5 r
    ON e.employee_id = r.reports_to
GROUP BY e.employee_id, e.name;