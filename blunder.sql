SELECT ceil(avg(Salary) - avg(REPLACE(Salary,'0',''))) FROM Employees;
