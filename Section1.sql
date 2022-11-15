--UC1
CREATE DATABASE Payroll_Service;
use Payroll_Service;

--UC2
CREATE TABLE Employee_Payroll
(
EmployeeId INT IDENTITY(1,1),
EmployeeName VARCHAR(20),
Salary MONEY,
StartDate DATE
);
SELECT * from Employee_Payroll;

--UC3
INSERT INTO Employee_Payroll(EmployeeName,Salary,StartDate) VALUES
('Vaibhav',900000,'2022/12/22'),
('Akash',800000,'2023/01/25'),
('Harshada',700000,'2021/08/12');

--UC4
SELECT * from Employee_Payroll;

--UC5
SELECT Salary FROM Employee_Payroll WHERE EmployeeName = 'Vaibhav';
SELECT * from Employee_Payroll WHERE StartDate BETWEEN CAST('2019/01/24' AS DATE) AND GETDATE();

--UC6
ALTER TABLE Employee_Payroll ADD Gender CHAR(1);
UPDATE Employee_Payroll SET Gender='M' WHERE EmployeeName='Vaibhav';
UPDATE Employee_Payroll SET Gender='M' WHERE EmployeeName='Akash';
UPDATE Employee_Payroll SET Gender='F' WHERE EmployeeName='Harshada';

--UC7
SELECT SUM(Salary) FROM Employee_Payroll WHERE Gender = 'M' GROUP BY Gender;
SELECT AVG(Salary) FROM Employee_Payroll WHERE Gender = 'M' GROUP BY Gender;
SELECT MIN(Salary) FROM Employee_Payroll WHERE Gender = 'M' GROUP BY Gender;
SELECT MAX(Salary) FROM Employee_Payroll WHERE Gender = 'M' GROUP BY Gender;
SELECT COUNT(Salary) FROM Employee_Payroll WHERE Gender = 'M' GROUP BY Gender;

