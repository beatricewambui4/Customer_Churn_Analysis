# Customer Churn Analysis | Power BI

## Project Overview

Customer churn is a major challenge for subscription-based businesses because losing customers can reduce recurring revenue and increase customer acquisition costs.

This project uses customer data to analyze churn behavior, examine factors associated with customer attrition, and identify high-risk customer segments. An interactive Power BI dashboard was developed to communicate the findings and support data-driven customer retention decisions.

## Business Problem

The objective of this project is to help a business understand:

* How many customers have churned and how many have been retained?
* What is the overall customer churn rate?
* How does churn vary across customer tenure groups?
* Which contract types are associated with higher churn?
* How do internet services, billing methods, and payment methods relate to churn?
* Which customer segments may require targeted retention strategies?

## Tools and Technologies

* **Power BI:** Dashboard development and data visualization
* **DAX:** Measures, calculated metrics, and KPI calculations
* **Data analysis:** Customer segmentation and churn pattern analysis

Add SQL, Excel, or Python here only if you actually used those tools in this project.

## Key Performance Indicators

| KPI                     | Result |
| ----------------------- | -----: |
| Total Customers         |  7,043 |
| Churned Customers       |  1,869 |
| Retained Customers      |  5,174 |
| Churn Rate              | 26.54% |
| Average Tenure          |  32.37 |
| Average Monthly Charges |  64.76 |

## Key Findings

* **Overall churn:** The dashboard reports a churn rate of 26.54%.
* **Customer tenure:** New customers show the highest churn rate among the displayed tenure groups, at approximately 47.44%.
* **Contract type:** Month-to-month customers have a substantially higher churn rate than customers on one-year and two-year contracts.
* **Internet services:** Fiber optic customers show a higher churn rate than DSL customers in this analysis.
* **Payment method:** Electronic check customers have a churn rate of approximately 45.29%.
* **High-risk segments:** The dashboard highlights combinations of customer tenure, internet services, contract type, and online security that warrant further investigation.

These findings describe patterns in the dataset and do not, by themselves, establish that any single factor causes churn.

## Dashboard Features

The interactive dashboard includes:

* Customer churn KPI cards
* Churn rate by tenure group
* Churn rate by contract type
* Churn rate by services and internet service
* Churn analysis by billing and payment factors
* Churn rate comparisons across tenure and contract type
* High-risk customer segment analysis
* Slicers for tenure group, contract type, and internet service

## Business Recommendations

1. **Prioritize new customers:** Investigate onboarding challenges and introduce early customer engagement and support.
2. **Review month-to-month customers:** Examine satisfaction, pricing concerns, and opportunities to offer suitable longer-term plans.
3. **Investigate electronic check users:** Explore whether payment friction or customer characteristics are associated with their higher churn rate.
4. **Review fiber optic customer experiences:** Assess service quality, pricing, technical support, and customer satisfaction.
5. **Target retention campaigns:** Use customer segments to prioritize outreach and measure whether retention initiatives improve outcomes.

Recommendations should be tested against customer feedback and subsequent churn outcomes before implementation.

## Dashboard Preview

![Customer Churn Analysis Dashboard](images/customer-churn-dashboard.jpg)

## Skills Demonstrated

* KPI development
* Data modeling and DAX
* Customer segmentation
* Exploratory data analysis
* Data visualization
* Business insight generation
* Translating analytical findings into business recommendations

## Project Files

* `Customer_Churn_Analysis.pbix` — Power BI report file, if included.
* `images/customer-churn-dashboard.jpg` — Dashboard preview.
* `README.md` — Project documentation.

## Conclusion

This project demonstrates how business intelligence can be used to explore customer churn, highlight at-risk segments, and inform customer retention strategies.

The analysis provides a starting point for further investigation into customer behavior and retention performance.
