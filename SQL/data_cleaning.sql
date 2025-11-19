-- Identifying and Deleting Duplicates and Null Values --

-- Identifying Null Values in table 1--
Select *
From `hr--employee-analytics.Data.table1`
WHERE EmployeeID IS NULL
OR Employee_Name IS NULL
OR Gender IS NULL 
OR BusinessTravel IS NULL
OR Department IS NULL
OR `DistanceFromHome KM` IS NULL
OR Ethnicity IS NULL
OR EducationField IS NULL
OR JobRole IS NULL
OR MaritalStatus IS NULL
OR StockOptionLevel IS NULL
OR OverTime IS NULL
OR HireDate IS NULL
OR Attrition IS NULL
OR YearsAtCompany IS NULL
OR YearsInMostRecentRole IS NULL
OR YearsSinceLastPromotion IS NULL
OR YearsWithCurrManager IS NULL
OR AGE IS NULL
OR Age_Group IS NULL
OR Full_State_Name IS NULL
OR Salary IS NULL
OR Salary_Bin IS NULL
OR EducationLevel IS NULL;

-- Identifying duplicate values in table 1 --
SELECT EmployeeID,
COUNT(*) AS Total
FROM `hr--employee-analytics.Data.table1`
GROUP BY EmployeeID
Having Count(*) >1;


-- Identifying null values in table 2 --
SELECT *
FROM `hr--employee-analytics.Data.table2`
WHERE EmployeeID IS NULL
OR PerformanceID IS NULL
OR ReviewDate IS NULL
OR EnvironmentSatisfaction IS NULL
OR JobSatisfaction IS NULL
OR RelationshipSatisfaction IS NULL
OR TrainingOpportunitiesWithinYear IS NULL
OR TrainingOpportunitiesTaken IS NULL
OR WorkLifeBalance IS NULL
OR SelfRating IS NULL
OR ManagerRating IS NULL;

-- Identifying duplicate values in table 2 --
SELECT PerformanceID,
COUNT(*) AS Total
FROM`hr--employee-analytics.Data.table2`
GROUP BY PerformanceID
Having Count(*) >1;
