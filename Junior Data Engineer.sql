CREATE DATABASE company_data_lab;

USE company_data_lab;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(100),
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    employee_id INT,
    project_cost DECIMAL(12,2),
    start_date DATE,
    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(100)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    transaction_date DATE,
    transaction_type VARCHAR(20),
    amount DECIMAL(12,2),
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

CREATE TABLE employee_history (
    employee_id INT,
    salary DECIMAL(10,2),
    effective_date DATE
);

SHOW TABLES;

INSERT INTO employees
(employee_id, employee_name, department_id, salary, joining_date, city)
VALUES
(1, 'Rahul Kumar', 1, 90000, '2025-01-15', 'Bengaluru'),
(2, 'Priya Sharma', 1, 85000, '2026-02-10', 'Bengaluru'),
(3, 'Amit Singh', 1, 85000, '2026-05-20', 'Bengaluru'),
(4, 'Sneha Reddy', 1, 80000, '2025-08-12', 'Bengaluru'),
(5, 'Arjun Mehta', 1, 70000, '2024-03-18', 'Hyderabad'),
(6, 'Neha Gupta', 1, 65000, '2026-11-05', 'Bengaluru'),

(7, 'Kiran Rao', 2, 65000, '2025-04-10', 'Bengaluru'),
(8, 'Anjali Patel', 2, 62000, '2026-01-20', 'Bengaluru'),
(9, 'Rahul Kumar', 2, 58000, '2024-07-15', 'Chennai'),
(10, 'Vikram Das', 2, 55000, '2026-06-18', 'Bengaluru'),

(11, 'Ravi Verma', 3, 95000, '2025-02-14', 'Bengaluru'),
(12, 'Meena Iyer', 3, 90000, '2026-03-25', 'Bengaluru'),
(13, 'Suresh Nair', 3, 88000, '2025-09-10', 'Mumbai'),
(14, 'Divya Rao', 3, 70000, '2024-05-12', 'Bengaluru'),
(15, 'Manoj Kumar', 3, 60000, '2026-07-22', 'Hyderabad'),

(16, 'Pooja Shah', 4, 75000, '2025-03-15', 'Bengaluru'),
(17, 'Rohan Joshi', 4, 65000, '2026-04-18', 'Bengaluru'),
(18, 'Swati Jain', 4, 55000, '2024-08-20', 'Delhi'),

(19, 'Nitin Kumar', 5, 72000, '2025-06-10', 'Bengaluru'),
(20, 'Asha Rao', 5, 60000, '2026-09-12', 'Bengaluru'),

(21, 'Vivek Sharma', NULL, 68000, '2026-08-05', 'Bengaluru');

SELECT * FROM employees;

INSERT INTO departments
(department_id, department_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Sales'),
(5, 'Marketing'),
(6, 'Operations');

SELECT * FROM departments;

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT employee_name
FROM employees;

INSERT INTO projects
(project_id, project_name, employee_id, project_cost, start_date)
VALUES
(101, 'Banking Analytics', 1, 300000, '2025-02-01'),
(102, 'Customer Intelligence', 1, 250000, '2025-05-10'),
(103, 'Cloud Migration', 1, 400000, '2026-01-15'),
(104, 'Data Warehouse', 1, 250000, '2026-04-20'),

(105, 'HR Automation', 2, 180000, '2026-02-15'),
(106, 'Employee Portal', 2, 220000, '2026-03-10'),

(107, 'Sales Dashboard', 3, 350000, '2026-05-01'),
(108, 'Marketing Analytics', 3, 280000, '2026-06-01'),
(109, 'Finance Reporting', 3, 320000, '2026-07-01'),

(110, 'Recruitment System', 7, 150000, '2025-06-01'),
(111, 'Payroll System', 7, 275000, '2025-08-01'),

(112, 'Financial Forecasting', 11, 500000, '2025-03-01'),
(113, 'Risk Analytics', 11, 350000, '2025-06-01'),

(114, 'Customer CRM', 16, 200000, '2025-04-01'),
(115, 'Sales Automation', 16, 300000, '2025-07-01'),

(116, 'Marketing Campaign', 19, 175000, '2025-09-01'),

(117, 'Data Quality Project', 4, 125000, '2025-10-01'),
(118, 'Reporting Automation', 4, 225000, '2026-02-01'),

(119, 'Operations Dashboard', 5, 190000, '2026-03-01'),
(120, 'Inventory Analytics', 12, 310000, '2026-04-01');

SELECT * FROM projects;

INSERT INTO customers
(customer_id, customer_name, city)
VALUES
(1, 'Amazon Retail', 'Bengaluru'),
(2, 'Flipkart Stores', 'Bengaluru'),
(3, 'Reliance Digital', 'Mumbai'),
(4, 'Tata Enterprises', 'Delhi'),
(5, 'Infosys Ltd', 'Bengaluru'),
(6, 'Wipro Ltd', 'Bengaluru'),
(7, 'HDFC Bank', 'Mumbai'),
(8, 'ICICI Bank', 'Hyderabad'),
(9, 'Axis Bank', 'Bengaluru'),
(10, 'Tech Mahindra', 'Pune'),
(11, 'Cognizant', 'Chennai'),
(12, 'Accenture', 'Bengaluru'),
(13, 'Deloitte', 'Hyderabad'),
(14, 'EY India', 'Delhi'),
(15, 'KPMG India', 'Mumbai');

SELECT * FROM customers;

INSERT INTO transactions
(transaction_id, customer_id, transaction_date, transaction_type, amount)
VALUES
(1001, 1, '2025-01-05', 'CREDIT', 50000),
(1002, 1, '2025-01-20', 'CREDIT', 75000),
(1003, 1, '2025-02-10', 'DEBIT', 25000),
(1004, 1, '2025-03-15', 'CREDIT', 90000),
(1005, 1, '2025-03-25', 'CREDIT', 45000),

(1006, 2, '2025-01-10', 'CREDIT', 60000),
(1007, 2, '2025-02-15', 'CREDIT', 80000),
(1008, 2, '2025-02-28', 'DEBIT', 20000),
(1009, 2, '2025-04-10', 'CREDIT', 95000),

(1010, 3, '2025-01-15', 'CREDIT', 40000),
(1011, 3, '2025-03-12', 'CREDIT', 70000),
(1012, 3, '2025-05-18', 'CREDIT', 85000),

(1013, 4, '2025-02-05', 'CREDIT', 55000),
(1014, 4, '2025-04-20', 'CREDIT', 65000),

(1015, 5, '2025-01-08', 'CREDIT', 100000),
(1016, 5, '2025-02-18', 'CREDIT', 120000),
(1017, 5, '2025-03-22', 'DEBIT', 30000),
(1018, 5, '2025-04-15', 'CREDIT', 140000),

(1019, 6, '2025-01-25', 'CREDIT', 45000),
(1020, 6, '2025-03-05', 'CREDIT', 55000),

(1021, 7, '2025-02-10', 'CREDIT', 90000),
(1022, 7, '2025-04-12', 'CREDIT', 110000),
(1023, 7, '2025-06-20', 'CREDIT', 130000),

(1024, 8, '2025-01-15', 'CREDIT', 35000),
(1025, 8, '2025-03-20', 'CREDIT', 60000),
(1026, 8, '2025-05-25', 'CREDIT', 70000),

(1027, 9, '2025-02-14', 'CREDIT', 80000),
(1028, 9, '2025-04-16', 'CREDIT', 80000),

(1029, 10, '2025-03-01', 'CREDIT', 50000),
(1030, 10, '2025-05-10', 'CREDIT', 90000),

(1031, 11, '2025-01-05', 'CREDIT', 65000),
(1032, 11, '2025-02-05', 'CREDIT', 75000),

(1033, 12, '2025-03-10', 'CREDIT', 100000),
(1034, 12, '2025-04-10', 'CREDIT', 150000),
(1035, 12, '2025-05-10', 'CREDIT', 125000),

(1036, 13, '2025-02-20', 'CREDIT', 45000),
(1037, 13, '2025-06-15', 'CREDIT', 95000),

(1038, 14, '2025-04-05', 'CREDIT', 55000),

(1039, 1, '2026-01-10', 'CREDIT', 100000),
(1040, 2, '2026-01-15', 'CREDIT', 120000),
(1041, 5, '2026-02-10', 'CREDIT', 150000),
(1042, 12, '2026-02-20', 'CREDIT', 180000),

(1043, NULL, '2026-03-01', 'CREDIT', NULL),
(1044, 3, '2026-03-05', 'CREDIT', -5000);

SELECT * FROM transactions;

INSERT INTO employee_history
(employee_id, salary, effective_date)
VALUES
(1, 70000, '2023-01-01'),
(1, 80000, '2024-01-01'),
(1, 90000, '2025-01-01'),

(2, 65000, '2024-01-01'),
(2, 75000, '2025-01-01'),
(2, 85000, '2026-02-10'),

(3, 60000, '2024-01-01'),
(3, 70000, '2025-01-01'),
(3, 85000, '2026-05-20'),

(4, 65000, '2024-01-01'),
(4, 75000, '2025-01-01'),
(4, 80000, '2026-01-01'),

(5, 55000, '2023-01-01'),
(5, 60000, '2024-01-01'),
(5, 70000, '2025-01-01'),

(7, 50000, '2023-01-01'),
(7, 58000, '2024-01-01'),
(7, 65000, '2025-01-01'),

(11, 70000, '2024-01-01'),
(11, 85000, '2025-01-01'),
(11, 95000, '2026-01-01');


SELECT * FROM employees;
SELECT * FROM departments;

SELECT * FROM projects;

SELECT * FROM customers;
SELECT * FROM transactions;
SELECT * FROM employee_history;


SELECT *
FROM employee_history
ORDER BY employee_id, effective_date;

SELECT COUNT(*) FROM departments;
SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM projects;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM transactions;
SELECT COUNT(*) FROM employee_history;

SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 70000;

SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

SELECT e.*
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_id IS NULL;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1;

SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);

SELECT e.*
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);

SELECT d.*
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
WHERE e.employee_id IS NULL;

SELECT
    e.employee_name,
    d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

SELECT employee_name, COUNT(*) AS name_count
FROM employees
GROUP BY employee_name
HAVING COUNT(*) > 1;

SELECT city, COUNT(*) AS employee_count
FROM employees
GROUP BY city
HAVING COUNT(*) > 10;

SELECT *
FROM employees
WHERE YEAR(joining_date) = 2026;

SELECT e.*
FROM employees e
LEFT JOIN projects p
ON e.employee_id = p.employee_id
WHERE p.project_id IS NULL;

SELECT employee_id, COUNT(*) AS project_count
FROM projects
GROUP BY employee_id
HAVING COUNT(*) > 2;

SELECT
    employee_id,
    SUM(project_cost) AS total_project_cost
FROM projects
GROUP BY employee_id;

SELECT
    employee_id,
    SUM(project_cost) AS total_project_cost
FROM projects
GROUP BY employee_id
HAVING SUM(project_cost) > 1000000;

SELECT
    employee_id,
    SUM(project_cost) AS total_project_cost
FROM projects
GROUP BY employee_id
ORDER BY total_project_cost DESC
LIMIT 1;

SELECT
    customer_id,
    SUM(amount) AS total_amount
FROM transactions
GROUP BY customer_id;

SELECT c.*
FROM customers c
LEFT JOIN transactions t
ON c.customer_id = t.customer_id
WHERE t.transaction_id IS NULL;

SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
ORDER BY average_salary DESC
LIMIT 1;

SELECT
    e.employee_name,
    e.salary
FROM employees e
JOIN employees m
ON e.department_id = m.department_id
WHERE e.salary > m.salary;

SELECT *
FROM employees
WHERE joining_date >= '2026-01-01'
AND joining_date < '2027-01-01';

SELECT
    department_id,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id;

SELECT
    department_id,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;

SELECT e.*
FROM employees e
LEFT JOIN projects p
ON e.employee_id = p.employee_id
WHERE p.project_id IS NULL;

SELECT
    customer_id,
    SUM(amount) AS total_amount
FROM transactions
GROUP BY customer_id
HAVING SUM(amount) > 300000;

SELECT
    d.department_id,
    d.department_name
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY
    d.department_id,
    d.department_name
HAVING COUNT(e.employee_id) = 0;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;

SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

SELECT
    employee_id,
    employee_name,
    department_id,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;

SELECT
    employee_id,
    employee_name,
    salary,
    SUM(salary) OVER (
        ORDER BY employee_id
    ) AS running_salary_total
FROM employees;

SELECT
    employee_id,
    employee_name,
    salary,
    RANK() OVER (
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;

SELECT
    employee_id,
    employee_name,
    department_id,
    salary,
    AVG(salary) OVER (
        PARTITION BY department_id
    ) AS department_average
FROM employees;

SELECT *
FROM (
    SELECT
        employee_id,
        salary,
        effective_date,
        ROW_NUMBER() OVER (
            PARTITION BY employee_id
            ORDER BY effective_date DESC
        ) AS rn
    FROM employee_history
) x
WHERE rn = 1;

WITH department_salary AS (
    SELECT
        department_id,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT *
FROM department_salary;

SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
ORDER BY average_salary DESC
LIMIT 1;

SELECT
    employee_id,
    joining_date,
    COUNT(*) AS duplicate_count
FROM employees
GROUP BY employee_id, joining_date
HAVING COUNT(*) > 1;

SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

SELECT
    transaction_id,
    customer_id,
    transaction_date,
    amount,
    LAG(amount) OVER (
        PARTITION BY customer_id
        ORDER BY transaction_date
    ) AS previous_amount
FROM transactions;

SELECT *
FROM (
    SELECT
        t.*,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id
            ORDER BY amount DESC
        ) AS rn
    FROM transactions t
) x
WHERE rn = 1;

SELECT
    employee_id,
    salary,
    effective_date,
    LAG(salary) OVER (
        PARTITION BY employee_id
        ORDER BY effective_date
    ) AS previous_salary
FROM employee_history;

WITH monthly_customer AS (
    SELECT
        YEAR(transaction_date) AS year_no,
        MONTH(transaction_date) AS month_no,
        customer_id,
        SUM(amount) AS total_amount
    FROM transactions
    GROUP BY
        YEAR(transaction_date),
        MONTH(transaction_date),
        customer_id
)
SELECT
    year_no,
    month_no,
    customer_id,
    total_amount,
    RANK() OVER (
        PARTITION BY year_no, month_no
        ORDER BY total_amount DESC
    ) AS customer_rank
FROM monthly_customer;

SELECT
    transaction_id,
    transaction_date,
    amount,
    SUM(amount) OVER (
        ORDER BY transaction_date, transaction_id
    ) AS running_total
FROM transactions;

SELECT
    transaction_id,
    customer_id,
    transaction_date,
    amount,
    LEAD(amount) OVER (
        PARTITION BY customer_id
        ORDER BY transaction_date
    ) AS next_amount
FROM transactions;

SELECT *
FROM (
    SELECT
        employee_id,
        employee_name,
        department_id,
        salary,
        ROW_NUMBER() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS rn
    FROM employees
) x
WHERE rn <= 3;

SELECT *
FROM (
    SELECT
        employee_id,
        employee_name,
        department_id,
        salary,
        AVG(salary) OVER (
            PARTITION BY department_id
        ) AS department_average
    FROM employees
) x
WHERE salary > department_average;

SELECT *
FROM transactions
WHERE amount IS NULL
   OR amount < 0
   OR customer_id IS NULL;

SELECT
    employee_id,
    employee_name,
    salary,
    DENSE_RANK() OVER (
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;   