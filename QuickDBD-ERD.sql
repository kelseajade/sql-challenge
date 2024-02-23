-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ZsSrFk
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `Departments` (
    `dept_no` varchar  NOT NULL ,
    `dept_name` varchar  NOT NULL 
);

CREATE TABLE `DepartmentManager` (
    `DepartmentNumber` varchar  NOT NULL ,
    `EmployeeNumber` integer  NOT NULL 
);

CREATE TABLE `DepartmentEmployees` (
    `EmployeeNumber` integer  NOT NULL ,
    `DepartmentNumber` varchar  NOT NULL 
);

CREATE TABLE `Employees` (
    `EmployeeNumber` integer  NOT NULL ,
    `EmployeeTitle` varchar  NOT NULL ,
    `Birthdate` date  NOT NULL ,
    `FirstName` varchar  NOT NULL ,
    `LastName` varchar  NOT NULL ,
    `Sex` varchar  NOT NULL ,
    `HireDate` date  NOT NULL ,
    PRIMARY KEY (
        `EmployeeNumber`
    )
);

CREATE TABLE `Titles` (
    `TitleId` varchar  NOT NULL ,
    `Title` varchar  NOT NULL 
);

CREATE TABLE `Salaries` (
    `EmployeeNumber` integer  NOT NULL ,
    `Salaries` integer  NOT NULL ,
    PRIMARY KEY (
        `EmployeeNumber`
    )
);

ALTER TABLE `DepartmentManager` ADD CONSTRAINT `fk_DepartmentManager_DepartmentNumber` FOREIGN KEY(`DepartmentNumber`)
REFERENCES `Departments` (`dept_no`);

ALTER TABLE `DepartmentManager` ADD CONSTRAINT `fk_DepartmentManager_EmployeeNumber` FOREIGN KEY(`EmployeeNumber`)
REFERENCES `DepartmentEmployees` (`EmployeeNumber`);

ALTER TABLE `DepartmentEmployees` ADD CONSTRAINT `fk_DepartmentEmployees_EmployeeNumber` FOREIGN KEY(`EmployeeNumber`)
REFERENCES `Salaries` (`EmployeeNumber`);

ALTER TABLE `Employees` ADD CONSTRAINT `fk_Employees_EmployeeNumber` FOREIGN KEY(`EmployeeNumber`)
REFERENCES `DepartmentEmployees` (`EmployeeNumber`);

ALTER TABLE `Employees` ADD CONSTRAINT `fk_Employees_EmployeeTitle` FOREIGN KEY(`EmployeeTitle`)
REFERENCES `Titles` (`TitleId`);

