# sql-challenge

I used Quick DBD to make an ERD for the data from the six CSV files given for the fictional company. I downloaded the image of the ERD after making the conections. The employee number was the primary key as it was not repeated for any employees. I created the six tables, added the colomns, and imported the files. 
![QuickDBD-ERD](https://github.com/kelseajade/sql-challenge/assets/152021966/7a3fb023-3b7d-44ca-b83c-ff99d0af2908)

First, an overarching query was created to retrieve comprehensive employee information, including their employee number, last name, first name, sex, and salary by joining the "Employees" and "Salaries" tables. Additional queries were used to filter and organize data based on distinct criteria. Employees hired in the year 1986 were identified by extracting the year from the "HireDate" column. The manager structure of each department was outlined by linking the "DepartmentManager," "Departments," and "Employees" tables. Employee department affiliations and details were extracted by joining the "DepartmentEmployees," "Employees," and "Departments" tables. A specific query was made for employees named Hercules with last names beginning with 'B,'. Employee rosters for departments Sales and Development were obtained by joins and filtering conditions. Finally, a query was developed to tally and present the frequency counts of employee last names in descending order, providing an overview of the last names within the dataset. 

My queries had to have quotes and I was unable to use aliases as I would have preferred because of an unknown error with my postgres. I worked with the instructor and TA to try and find an alternative solution however that was the only solution that we found. I included my ERD picture, SQL schema from DBD, and data analysis queries.   





