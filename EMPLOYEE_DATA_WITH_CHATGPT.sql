USE EMPLOYEES;

SELECT * FROM EMPLOYEE_DATA;

ALTER TABLE employee_data
RENAME COLUMN `Experience (Years)` TO experience;

DESCRIBE employee_data;


#Find the average salary of male and female employees separately
SELECT GENDER, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEE_DATA
GROUP BY GENDER;

#List all positions that have more than three employees
SELECT POSITION, COUNT(ID) AS EMP_COUNT
FROM EMPLOYEE_DATA
GROUP BY POSITION
HAVING COUNT(ID)>3;

#Find the total salary expenditure for each position
SELECT POSITION, SUM(SALARY) AS POSITION_SALARY
FROM EMPLOYEE_DATA
GROUP BY POSITION;

#Find the positions where the average experience is less than 5 years.
SELECT POSITION, AVG(EXPERIENCE) AS EXP_AVG
FROM EMPLOYEE_DATA
GROUP BY POSITION 
HAVING AVG(EXPERIENCE) < 5;

#Find the total number of employees and the average salary 
#for each position where the average salary is greater than 50,000.
SELECT POSITION, COUNT(ID) AS EMP_COUNT , AVG(SALARY) AS AVG_SALARY 
FROM EMPLOYEE_DATA
GROUP BY POSITION
HAVING AVG(SALARY) > 120000 ;

#Find the gender distribution for each position.
SELECT POSITION, GENDER, COUNT(ID) AS EMP_COUNT
FROM EMPLOYEE_DATA
GROUP BY POSITION, GENDER;

#Identify the positions with the highest and lowest salary in the company.
#MIN
SELECT POSITION, SALARY
FROM EMPLOYEE_DATA
WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEE_DATA);
#MAX
SELECT POSITION, SALARY
FROM EMPLOYEE_DATA
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEE_DATA);

#Find all employees who hold the positions of 'Manager', 'Developer', or 'Analyst'
SELECT ID, POSITION
FROM EMPLOYEE_DATA 
WHERE POSITION IN ('IT MANAGER', 'WEB DEVELOPER');

#Find all employees whose experience is between 3 and 7 years
SELECT ID, EXPERIENCE
FROM EMPLOYEE_DATA
WHERE EXPERIENCE BETWEEN 3 AND 7 ;

#Find all employees whose position titles contain the word 'Engineer'.
SELECT * FROM EMPLOYEE_DATA
WHERE POSITION LIKE 'W%';

#Find all employees whose position titles start with the word 'Senior'.
SELECT * FROM EMPLOYEE_DATA
WHERE POSITION LIKE 'IT%';

#Find all employees whose position is either 'Team Lead' or 'Senior Developer', and whose 
#experience is between 5 and 10 years, and whose position title contains the word 'Developer'
SELECT *
FROM EMPLOYEE_DATA
WHERE POSITION IN ('IT MANAGER', 'SOFTWARE ENGINEER')
AND EXPERIENCE BETWEEN 5 AND 10 
AND POSITION LIKE ('%DEVELOPER%');

#Find all employees whose position is either 'Manager' or 'Lead', have a 
#salary between 40,000 and 70,000, and whose position title contains the word 'Manager'
SELECT * FROM EMPLOYEE_DATA
WHERE POSITION IN ('IT MANAGER', 'SOFTWARE ENGINEER')
AND SALARY BETWEEN 100000 AND 120000
AND POSITION LIKE ('%MANAGER%');

#Identify Positions with Total Salary Expenditure Above a Certain Threshold
SELECT POSITION, SUM(SALARY) AS SUM_SAL
FROM EMPLOYEE_DATA
GROUP BY POSITION 
HAVING SUM(SALARY) > 5000000;

# Find Positions with an Above-Average Number of Employees
SELECT POSITION, COUNT(ID) AS CNT_EMP
FROM EMPLOYEE_DATA
GROUP BY POSITION 
HAVING AVG(ID) > COUNT(ID);
