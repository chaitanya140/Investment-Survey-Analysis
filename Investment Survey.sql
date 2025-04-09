use investment;

Create View Male_Invest AS
Select * from invest
Where Gender = 'Male';

#1. Retrieve all records where Gender is 'Male'.
Select * from Male_Invest;

Create View Female_Invest AS
Select * from invest
Where Gender = 'Female';

#2. Retrieve all records where Gender is 'Female'.
Select * from Female_Invest;

Create View Working_Professional AS
Select Gender, Working_professional from invest
Where Working_professional > 0;

#3. Print the records of both genders who are working professionals.
Select * from Working_Professional;

Create View Count_Working_Professional AS
Select Count(Gender) from invest
Where Working_professional > 0;

#4. Find the total number of working professionals from both genders.
Select * from Count_Working_Professional;

Create View Gender_Age_WorkingProfessional AS
Select Gender, Age, Working_professional from invest
Where Working_professional > 0;

#5. Retrieve all the records of Gender's Age, and Working status of individuals who are currently employed.
Select * from Gender_Age_WorkingProfessional;

Create View Gender_Income AS
Select Gender, Annual_Income from invest
Where Annual_Income > 0;

#6. Print all the records of both genders where annual income is greater than 0.
Select * from Gender_Income;

Create View Gender_Average_Income AS
Select Gender, Avg(Annual_Income) as avg_income from invest
Where Annual_Income > 0
Group By Gender;

#7. Find the average income of both genders.
Select * from Gender_Average_Income;

Create View Top5_Invest AS
Select * from invest Limit 5;

#8. Find the top 5 records from invest table.
Select * from Top5_Invest;

Create View Gender_Investment AS
Select Gender, Mode_of_investment, Investment_per_month from invest
Where Investment_per_month > 500;

#9. Find both genders records with their modes of investment where investment is more than 500 per month.
Select * from Gender_Investment;

Create View Gender_Sum_Income AS
Select Gender, Sum(Annual_income) from invest
Group By Gender;

#10. Find the sum of annual income of both the genders.
Select * from Gender_Sum_Income;

Create View Invest_PerMonth AS
Select Gender, Sum(Investment_per_month) from invest
Group By Gender;

#11. Find the sum of investment per month of both the genders.
Select * from Invest_PerMonth;

Create View GenderInvest_PerMonth AS
SELECT Gender, Investment_per_month FROM invest 
WHERE Investment_per_month IS NOT NULL
ORDER BY Investment_per_month ASC LIMIT 5;


#12. List the top 5 records for both genders based on investment per month.
Select * from GenderInvest_PerMonth;

Create View MaxMin_Income AS
Select Max(Annual_income) AS Max_Income,
Min(Annual_income) AS Min_Income
From invest;

#13. Find the maximum and minimum annual income.
Select * from MaxMin_Income;

Create View Invested AS
Select Gender, Working_professional, Motivation_cause, Resources_used, Goal_for_investment from  invest
Where Working_professional > 0;

#14. Find out the gender's working status, motivation cause, resources used, and investment goals for working professionals.
Select * from Invested;