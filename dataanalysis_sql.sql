SELECT "EmployeeNumber", "LastName", "FirstName", "Sex", "salaries"
FROM "Employees"
JOIN "salaries"  ON "Employees"."EmployeeNumber" = "salaries".emp_no;

SELECT "FirstName", "LastName", "HireDate"
FROM "Employees" 
WHERE EXTRACT(YEAR FROM "Employees"."HireDate") = 1986;

SELECT "DepartmentNumber", "dept_name", "DepartmentManager"."EmployeeNumber", "LastName", "FirstName"
FROM "DepartmentManager" 
JOIN "Departments" ON "DepartmentNumber" = "dept_no"
JOIN "Employees"  ON "Employees"."EmployeeNumber" = "DepartmentManager"."EmployeeNumber";

SELECT "DepartmentEmployees"."EmployeeNumber", "LastName", "FirstName", "DepartmentNumber", "dept_name"
FROM "DepartmentEmployees" 
JOIN "Employees" ON "Employees"."EmployeeNumber" = "DepartmentEmployees"."EmployeeNumber"
JOIN "Departments" ON "DepartmentEmployees"."DepartmentNumber" = "Departments"."dept_no";

SELECT "Employees"."FirstName", "Employees"."LastName", "Employees"."Sex"
FROM "Employees"
WHERE "Employees"."FirstName" = 'Hercules' AND "Employees"."LastName" LIKE 'B%';


SELECT "Employees"."EmployeeNumber","Employees"."LastName", "Employees"."FirstName"
FROM "Employees"
JOIN "DepartmentEmployees" ON "Employees"."EmployeeNumber" = "DepartmentEmployees"."EmployeeNumber"
JOIN "Departments" ON "DepartmentEmployees"."DepartmentNumber" = "Departments"."dept_no"
WHERE "Departments"."dept_name" = 'Sales';

SELECT "Employees"."EmployeeNumber","Employees"."LastName", "Employees"."FirstName", "Departments"."dept_name"
FROM "Employees"
JOIN "DepartmentEmployees" ON "Employees"."EmployeeNumber" = "DepartmentEmployees"."EmployeeNumber"
JOIN "Departments" ON "DepartmentEmployees"."DepartmentNumber" = "Departments"."dept_no"
WHERE "Departments"."dept_name" IN ('Sales', 'Development');


SELECT "Employees"."LastName", COUNT(*) AS Frequency
FROM "Employees"
GROUP BY "Employees"."LastName"
ORDER BY Frequency DESC;


















