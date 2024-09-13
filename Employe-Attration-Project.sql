-- Databricks notebook source
-- DBTITLE 1,EMPLOYEE REPORT DASHBOARD


-- COMMAND ----------

-- DBTITLE 1,SHOW ALL EMPLOYEE RECORD
select * from employee_attrition

-- COMMAND ----------

-- DBTITLE 1,TOTAL EMPLOYEE  COUNT
select sum(EmployeeCount) As TotalEmployee from employee_attrition

-- COMMAND ----------

-- DBTITLE 1,FIEND ATTRATION  DIVISION
select sum(EmployeeCount), attrition from employee_attrition
group by 2

-- COMMAND ----------

-- DBTITLE 1,Age Analysis
select sum(EmployeeCount),
case when age between 20 and 25 then '20-25' when age between 26 and 32 then '26-32' when age between 33 and 40 then '33-40' else '40+' end age_group
from employee_attrition
where attrition='Yes'
group by 2

-- COMMAND ----------

-- DBTITLE 1,FIEND ATTRITION OF DEPARTMENT
select sum(EmployeeCount)Employee_Leve, department from employee_attrition
where attrition='Yes'
group by department

-- COMMAND ----------

-- DBTITLE 1,Attrition Education - (1-Below Collage, 2-Collage, 3-Bachler, -Master, 5-Doctor)
select sum(EmployeeCount) as EmployeeGroup,
case when education=1 then 'Below College'  when education=2 then 'College'  when education=3 then 'Bachlers'  when education=4 then 'Master'  else 'Doctor' end EducationGroup
from employee_attrition
where attrition='Yes'
group by Education

-- COMMAND ----------

-- DBTITLE 1,Attrition By Environment Satisfaction (1-Low, 2-Medion,, 3-High, 4-High Satisfaction
select sum(EmployeeCount), EnvironmentSatisfaction
from employee_attrition
where attrition='Yes'
group by 2

-- COMMAND ----------

-- DBTITLE 1,ATTRITON BUSINESS TRAVELS
select sum(EmployeeCount), BusinessTravel
from employee_attrition
where attrition='Yes'
group by 2

-- COMMAND ----------

# Insight got as Now
1. Employee Between 26-32 Leaving Orgonization
2. Research and Development Department Employee Leaving Orgonization
3. 41.8% Employee having Bachler Digiree Left Organization
4. 72 Employee not Satisfaction Environment Location
5. 156 Employee Traveling rearly Left Orgonization

