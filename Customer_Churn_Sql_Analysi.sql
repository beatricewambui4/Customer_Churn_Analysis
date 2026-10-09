CREATE DATABASE Customer_Churn_Analysis;

USE Customer_Churn_Analysis;

#KPIS Customer Churn
#overall churn rate
SELECT
((
		SELECT
		COUNT(*) AS Total_Churned
		FROM customer_churn_analysis_table
		WHERE Churn='Yes'
        )/COUNT(*))*100 AS Overal_Churn_Rate
FROM customer_churn_analysis_table;

#total customer
SELECT
COUNT(DISTINCT Customerid) AS Total_Customers
FROM customer_churn_analysis_table;

#Churned Customers
SELECT
COUNT(DISTINCT Customerid) AS Churned_Customers
FROM customer_churn_analysis_table
WHERE Churn = 'Yes';

#Retained Customers
SELECT
COUNT(DISTINCT Customerid) AS Retained_Customers
FROM customer_churn_analysis_table
WHERE Churn = 'No';

#Retention Rate %
SELECT 
(
	SELECT COUNT(DISTINCT Customerid) 
    FROM customer_churn_analysis_table
    WHERE Churn='No'    
)/COUNT(DISTINCT Customerid)*100 AS Retention_Rate 
FROM customer_churn_analysis_table;

#Average Tenure
SELECT 
AVG(Tenure) AS Average_Tenure 
FROM customer_churn_analysis_table;

#Average Monthly Charges
SELECT 
AVG(Monthlycharges) AS Average_Monthly_Charges
FROM customer_churn_analysis_table;

#Average Monthly Charges
SELECT
AVG(Totalcharges) AS Average_Total_Charges
FROM customer_churn_analysis_table;

#Customer Profile
#Churn according to gender
SELECT
    Gender,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Gender;

#churn rate according to if someone is a senior citizen or not
SELECT
    Seniorcitizen,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Seniorcitizen;

#churn rate according to if someone has a partner or not
SELECT
    Partner,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Partner;

#churn rate according to if someone has dependents(e.g children) or not
SELECT
    Dependents,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Dependents;

#contact & customer
SELECT
    Seniorcitizen,Contract,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Seniorcitizen,Contract;

#senior citizen & tenure
SELECT
    Seniorcitizen,TenureGroup,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Seniorcitizen,TenureGroup;

#no partner+contract type
SELECT
    Partner,Contract,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Partner,Contract;

#dependents+contract type
SELECT
    Dependents,Contract,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Dependents,Contract;

 
#customer relationship
#HOW is their relationship with the company?
#tenure
SELECT
TenureGroup,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)Churn_Customers,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)/COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY TenureGroup;

#contract type & tenure
SELECT
Contract,
TenureGroup,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)Churned_Customers,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)/COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Contract,TenureGroup;

#contract type
SELECT
Contract,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)Churned_Customers,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)/COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Contract;


#servies used 
#internet service
SELECT
   Internetservice,Contract,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Internetservice,Contract;
            
#Online Security 
SELECT
   Onlinesecurity,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Onlinesecurity;

#churn by Onlinesecurity,Internetservice,TenureGroup,
SELECT
   Onlinesecurity,Internetservice,TenureGroup,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Onlinesecurity,Internetservice,TenureGroup;


#Onlinesecurity,Internetservice,MonthlyChargesGroup analysis
SELECT
   Onlinesecurity,Internetservice,MonthlyChargesGroup,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Onlinesecurity,Internetservice,MonthlyChargesGroup;



#online backup
SELECT
   Onlinebackup,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Onlinebackup;

#device protection
SELECT
   Deviceprotection,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Deviceprotection;

#tech support 
SELECT
   Techsupport,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Techsupport;

#streamingtv
SELECT
   Streamingtv,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Streamingtv;

#streaming movies
SELECT
   Streamingmovies,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Streamingmovies;

#multiplelines
SELECT
   Multiplelines,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Multiplelines;

#phone services
SELECT
   Phoneservice,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Phoneservice;

#Billing
#Monthly charges
SELECT
   MonthlyChargesGroup,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY MonthlyChargesGroup;


#total charges + contract
SELECT
   MonthlyChargesGroup,Contract,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY MonthlyChargesGroup,Contract;

#contract+tenure
SELECT
   MonthlyChargesGroup,TenureGroup,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY MonthlyChargesGroup,TenureGroup;

#total charges
SELECT
   TotalChargesGroup,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY TotalChargesGroup;

#total charges + contract
SELECT
   TotalChargesGroup,Contract,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY TotalChargesGroup,Contract;

#contract+tenure
SELECT
   TotalChargesGroup,TenureGroup,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY TotalChargesGroup,TenureGroup;


#payment method
SELECT
   Paymentmethod,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Paymentmethod;

#Paperlessbilling
SELECT
   Paperlessbilling,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
   COUNT(*) AS Total_Customers,
   SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/ COUNT(*)*100 AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Paperlessbilling;




-- Contract x Tenure risk
SELECT
    Contract,
    TenureGroup,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY Contract, TenureGroup
ORDER BY Churn_Rate DESC;


-- InternetService x TechSupport risk
SELECT
    InternetService,
    TechSupport,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS Churn_Rate
FROM customer_churn_analysis_table
GROUP BY InternetService, TechSupport
ORDER BY Churn_Rate DESC;




SELECT
COUNT(*) Total_1_Tenure
FROM customer_churn_analysis_table
WHERE Tenure=1;












