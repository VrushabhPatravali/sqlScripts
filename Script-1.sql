DESCRIBE EMPLOYEE;

SELECT * FROM EMPLOYEE; 

SELECT EMPLOYEE_NAME, EMPLOYEE_PHONE, EMPLOYEE_JOIN_DATE FROM EMPLOYEE;

SELECT DISTINCT EMPLOYEE_ADDRESS, EMPLOYEE_GENDER FROM EMPLOYEE;

SELECT EMPLOYEE_SALARY, EMPLOYEE_NAME FROM EMPLOYEE WHERE EMPLOYEE_SALARY > 50000 AND EMPLOYEE_GENDER = 'F';

SELECT EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_PHONE, EMPLOYEE_SALARY FROM EMPLOYEE
WHERE EMPLOYEE_NAME IN ('John', 'Kristy') OR EMPLOYEE_SALARY = 75000 OR EMPLOYEE_ADDRESS = 'Japan';

SELECT * FROM EMPLOYEE WHERE EMPLOYEE_SALARY BETWEEN 50000 AND 60000 ORDER BY EMPLOYEE_SALARY DESC;

SELECT * FROM EMPLOYEE WHERE EMPLOYEE_NAME LIKE '%S%';

SELECT * FROM EMPLOYEE ORDER BY EMPLOYEE_SALARY;

SELECT EMPLOYEE_ADDRESS, SUM(EMPLOYEE_SALARY) 
FROM EMPLOYEE
GROUP BY EMPLOYEE_ADDRESS;

INSERT INTO EMPLOYEE
VALUES (1008, 'Vivek', 'Canada', 1234567894, 20000, 'M', '2022-01-02'),
(1009, 'Yesha', 'India', 1236547896, 90000, 'F', '2022-02-02');

SELECT EMPLOYEE_ADDRESS, SUM(EMPLOYEE_SALARY)
FROM EMPLOYEE
GROUP BY EMPLOYEE_ADDRESS
HAVING SUM(EMPLOYEE_SALARY) > 70000;

SELECT EMPLOYEE_ADDRESS, COUNT(EMPLOYEE_NAME), AVG(EMPLOYEE_SALARY)
FROM EMPLOYEE
GROUP BY EMPLOYEE_ADDRESS
HAVING COUNT(EMPLOYEE_NAME) > 1;  

CREATE TABLE STUDENT
(STUDENT_ID NUMERIC NOT NULL PRIMARY KEY,
STUDENT_NAME VARCHAR(50) NOT NULL,
STUDENT_EMAIL VARCHAR(200),
STUDENT_PHONE NUMERIC,
STUDENT_ADDRESS VARCHAR(500));

CREATE TABLE EMPLOYEE (
EMPLOYEE_ID NUMERIC(7,0) NOT NULL UNIQUE,
EMPLOYEE_NAME VARCHAR(50) NOT NULL,
EMPLOYEE_ADDRESS VARCHAR(50) NULL,
EMPLOYEE_PHONE NUMERIC(10,0) NOT NULL UNIQUE,
EMPLOYEE_SALARY NUMERIC(18,0) NOT NULL,
EMPLOYEE_GENDER NVARCHAR(50) NOT NULL,
EMPLOYEE_JOIN_DATE DATE NULL
);

DROP TABLE EMPLOYEE;

SELECT * FROM pragra.EMPLOYEE;

INSERT INTO EMPLOYEE (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_ADDRESS, EMPLOYEE_PHONE, EMPLOYEE_SALARY, EMPLOYEE_GENDER, EMPLOYEE_JOIN_DATE)
VALUES (1001, 'Smith', 'Japan', 6478552558, 50000, 'M', '2017-01-01'),
(1002, 'John', 'Japan', 6478555558, 55000, 'M', '2017-01-01'),
(1003, 'Sammy', 'India', 6478582558, 65000, 'M', '2017-01-01'),
(1004, 'Sofia', 'Canada', 6478652558, 75000, 'F', '2017-01-01'),
(1005, 'Veroli', 'Tokyo', 6478452558, 52000, 'F', '2017-01-01'),
(1006, 'Daniel', 'Singapore', 6478512558, 51000, 'M', '2017-01-01'),
(1007, 'Kristy', 'Chile', 6478502558, 30000, 'F', '2017-01-01');

TRUNCATE TABLE EMPLOYEE; 

SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'pragra' ORDER BY TABLE_NAME;

SHOW SLAVE STATUS;

CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
DROP USER 'username'@'localhost';

-- To ping the MySQL server using the MySQL client program, you can use the following command: mysqladmin ping

