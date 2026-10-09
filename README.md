# Customer Churn Analysis | Power BI

**Turning Customer Data into Retention Insights**

An exploratory customer churn analysis project focused on identifying customer attrition patterns, understanding high-risk customer segments, and supporting data-driven retention strategies through an interactive Power BI dashboard.

## 📊 Dashboard Preview

![Customer Churn Analysis Dashboard](Images/Customer_Churn_Dashboard.jpg)

*Interactive Power BI dashboard analyzing customer churn, retention KPIs, contract types, tenure groups, and customer service characteristics.*

## 📌 Project Overview

Customer churn is a significant challenge for subscription-based businesses. Losing customers can reduce recurring revenue, increase customer acquisition costs, and affect long-term business growth.

This project explores customer churn patterns to identify segments with elevated attrition rates and highlight opportunities for targeted customer retention initiatives. The analysis combines data exploration, SQL, Python-based data cleaning, and Power BI visualization to translate customer data into actionable business insights.

## 🎯 Business Problem

The objective is to help a subscription-based business understand:

* How many customers have churned compared with those retained?
* What is the overall customer churn rate?
* Which customer tenure groups experience the highest churn?
* How does churn vary across contract types?
* How are internet services, billing arrangements, and payment methods associated with churn?
* Which customer segments should be prioritized for further retention analysis?

## 🛠️ Tools and Technologies

* **Power BI:** Interactive dashboard development and data visualization.
* **DAX:** KPI calculations and analytical measures.
* **Python (Jupyter Notebook):** Data cleaning and preparation.
* **SQL:** Customer data querying and analysis.

## 📈 Key Performance Indicators

| KPI                     | Result |
| ----------------------- | -----: |
| Total Customers         |  7,043 |
| Churned Customers       |  1,869 |
| Retained Customers      |  5,174 |
| Churn Rate              | 26.54% |
| Average Tenure          |  32.37 |
| Average Monthly Charges |  64.76 |

*Figures are reported from the project dashboard. Average tenure and monthly charges are shown in the dashboard's underlying units.*

## 🔍 Key Findings

* **Overall churn:** The reported churn rate is 26.54%, meaning approximately one in four customers in the dataset has churned.
* **Customer tenure:** New customers have the highest reported churn rate among the displayed tenure groups, at approximately 47.44%.
* **Contract type:** Month-to-month customers experience substantially higher churn than customers on one-year and two-year contracts.
* **Internet services:** Fiber optic customers show higher churn than DSL customers in this analysis.
* **Payment method:** Customers paying by electronic check have a reported churn rate of approximately 45.29%.
* **Customer risk segments:** Combinations of tenure, contract type, internet service, and online security help identify groups that warrant further investigation.

These findings describe associations within the dataset. They do not establish that any individual factor causes customers to churn.

## 📊 Dashboard Features

The interactive Power BI dashboard includes:

* KPI cards summarizing customer counts, churn, retention, and average metrics.
* Churn rate comparisons across customer tenure groups.
* Contract type analysis.
* Churn analysis by internet service and other customer services.
* Billing and payment method comparisons.
* High-risk customer segment analysis.
* Interactive slicers for tenure group, contract type, and internet service.

## 💡 Business Recommendations

1. **Strengthen customer onboarding:** Investigate early customer experiences and introduce proactive engagement to address the high churn among newer customers.
2. **Review month-to-month contracts:** Explore customer satisfaction, pricing concerns, and suitable longer-term plan options.
3. **Investigate electronic check users:** Examine payment experience and other customer characteristics associated with higher churn.
4. **Assess fiber optic customer experience:** Review service quality, pricing, technical support, and satisfaction levels.
5. **Develop targeted retention initiatives:** Prioritize high-risk segments and measure retention campaign outcomes over time.

Recommendations should be validated through customer feedback, further analysis, and subsequent churn outcomes before implementation.

## 📁 Project Structure

```text
Customer_Churn/
│
├── Customer_Churn_Analysis_Data_Cleaning.ipynb
├── Customer_Churn_Dashboard.pbix
├── Customer_Churn_Sql_Analysi.sql
├── Sample_Data.csv
├── README.md
│
└── Images/
    └── Customer_Churn_Dashboard.jpg
```

## 🧠 Skills Demonstrated

* Data cleaning and preparation
* SQL querying and analysis
* Python-based data preparation
* Power BI dashboard development
* DAX measures and KPI development
* Customer segmentation and exploratory analysis
* Data visualization and business insight generation
* Translating analytical findings into business recommendations

## 🚀 Conclusion

This project demonstrates how data analytics and business intelligence can help businesses explore customer churn, identify potentially high-risk customer segments, and develop evidence-based retention strategies.

The dashboard provides an accessible view of churn patterns and a starting point for deeper investigation into customer behavior, satisfaction, and retention performance.

## 👩‍💻 Author

**Beatrice Wambui**
Data Analyst | Turning Data Into Actionable Insights

* [GitHub Profile](https://github.com/beatricewambui4)
* [Customer Churn Analysis Repository](https://github.com/beatricewambui4/Customer_Churn_Analysis)
