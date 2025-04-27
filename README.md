# 🧑‍💼 Employees Database Analysis - SQL Project

## 📋 Project Overview
This project focuses on exploring and analyzing an employee database to derive insights about salary distribution, position-based statistics, gender-wise data, and experience patterns.  
Using SQL, I answered several real-world HR-related questions through efficient queries.

## 🎯 Objectives
- Find average salaries based on gender.
- Identify positions with a large number of employees.
- Calculate total salary expenditures per position.
- Find roles where employees have relatively low experience.
- Analyze salary distributions and revenue contributions.
- Perform pattern matching to find positions like 'Manager', 'Engineer', 'Developer', etc.

## 🛠️ Tools and Technologies
- SQL (MySQL)
- Database Management Systems (DBMS)

## 🗃️ Database Structure
**Table:** `employee_data`  
**Columns:**
- `id`: Employee ID
- `gender`: Gender of the employee
- `experience`: Years of experience
- `position`: Job role/title
- `salary`: Salary of the employee

## 🔍 SQL Analysis Performed
- **Average Salary by Gender:**  
  ➔ Calculated the average salary separately for male and female employees.

- **Popular Positions:**  
  ➔ Listed all positions having more than three employees.

- **Salary Expenditure Analysis:**  
  ➔ Found total salary paid for each position.

- **Experience Insights:**  
  ➔ Identified positions where average experience is less than 5 years.

- **Salary Threshold Insights:**  
  ➔ Found positions where the average salary is greater than 120,000.

- **Gender Distribution:**  
  ➔ Gender breakdown per job position.

- **Highest and Lowest Salaries:**  
  ➔ Identified the positions with the highest and lowest salaries.

- **Pattern Matching:**  
  ➔ Found employees whose positions include words like 'Manager', 'Engineer', or 'Developer'.

- **Advanced Filters:**  
  ➔ Retrieved employees based on a combination of experience, salary, and position title conditions.

- **Threshold Analysis:**  
  ➔ Identified positions where the total salary expenditure exceeds a given threshold.

- **Above-Average Employees:**  
  ➔ Searched for positions with an above-average number of employees.

## 📈 Key Insights
- Some positions have a higher salary expenditure due to the number of employees or high salaries.
- Gender-based salary averages help in understanding pay gaps.
- Identified specific senior roles that have employees with experience less than 5 years, useful for workforce planning.
- Using LIKE and IN operators can effectively filter and search for specific roles.

## 📚 Learning Outcomes
- Strengthened my SQL skills including GROUP BY, HAVING, WHERE, LIKE, IN, and nested queries.
- Practiced real-world scenario-based questions using employee datasets.
- Improved the ability to extract and present meaningful HR analytics from raw data.

