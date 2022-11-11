-- Create a new table department with fields deptid,dname and make deptid as the primary key

CREATE TABLE department(deptid INT NOT NULL, dname VARCHAR(50), primary key(deptid));

-- ---------------------------------------------------------------------------------------------------- --

-- Insert values to the department table.Make sure tha all the existing values for deptid in employee is inserted into this table. Sample values are design(1),codding(2),testing(3),research(4).

INSERT INTO DEPARTMENT VALUES(1,'Design');
INSERT INTO DEPARTMENT VALUES(2,'Coding');
INSERT INTO DEPARTMENT VALUES(3,'Testing');
INSERT INTO DEPARTMENT VALUES(4,'Research');

-- ---------------------------------------------------------------------------------------------------- --

-- Make deptid in employee table as foreign key that refer to department table

ALTER TABLE EMPLOYEE
ADD FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENT(DEPTID);

-- ---------------------------------------------------------------------------------------------------- --

-- Display the employee name and department name.

SELECT EMPLOYEE.NAME,DEPARTMENT.DNAME
FROM EMPLOYEE
INNER JOIN DEPARTMENT ON EMPLOYEE.DEPT_ID=DEPARTMENT.DEPTID;

-- ---------------------------------------------------------------------------------------------------- --

-- Display the department name of employee 'Ram'

SELECT EMPLOYEE.NAME,DEPARTMENT.DNAME
FROM EMPLOYEE
INNER JOIN DEPARTMENT ON EMPLOYEE.DEPT_ID=DEPARTMENT.DEPTID
WHERE EMPLOYEE.NAME = 'Ram';

-- ---------------------------------------------------------------------------------------------------- --

-- Display the names of employees getting salary greater than the average salary of their department.

SELECT e.name, e.basic
FROM employee e
WHERE basic > (SELECT avg(basic) FROM employee WHERE e.dept_id = dept_id )
ORDER BY dept_id;

-- ---------------------------------------------------------------------------------------------------- --

-- Display the names of the employees working under the manager RAM

select name from employee where dname = 'Ram';

-- ---------------------------------------------------------------------------------------------------- --

-- Display the deptid and total no.of employees as ‘NO_OF _DEPARTMENT_EMPLOYEES’ for only those department with more than 3 employees.

SELECT DEPT_ID AS DEPARTMENT, COUNT(ID) AS NO_OF_EMPLOYEE
FROM EMPLOYEE
GROUP BY DEPT_ID
HAVING COUNT(ID)>3;

-- ---------------------------------------------------------------------------------------------------- --

-- Display deptid and minimum salary as lowest salary for those department with minimum salary above 2500.

SELECT DEPT_ID, MIN(BASIC) AS LOWEST_SALARY
FROM EMPLOYEE
GROUP BY DEPT_ID
HAVING MIN(BASIC) > 2500;


-- ---------------------------------------------------------------------------------------------------- --

-- Display the names of employees whose salary is the maximum given by their department.

SELECT name, basic
FROM employee
WHERE basic IN (SELECT max(basic) FROM employee GROUP BY dept_id);