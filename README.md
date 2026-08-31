# Retail Sales Analysis — Tableau

## 📊 Project Overview

This project analyzes retail transaction data using **Tableau** to understand sales performance, customer behavior, order patterns, and product/category performance.

The objective is to transform raw retail transaction data into interactive and easy-to-understand dashboards that support business analysis and decision-making.

The project focuses not only on creating visualizations, but also on understanding the business questions behind the data and selecting appropriate visualizations for each analysis.

---

## 🎯 Business Objectives

The main objectives of this project are:

- Analyze overall retail sales performance
- Understand order volume and average order value
- Identify top-performing products
- Identify high-value customers
- Analyze customer ordering behavior
- Compare sales performance across product categories
- Analyze order-status distribution
- Understand quantity sold across categories
- Analyze the relationship between average order value and quantity
- Analyze sales across different order statuses
- Analyze geographic sales performance
- Provide interactive dashboards for business users

---

# 📁 Dataset

The project uses a retail transaction dataset containing information related to:

- Orders
- Customers
- Products
- Product categories
- Order dates
- Order status
- Quantity
- Sales
- Discounts
- Customer ratings
- Geographic information

Each row represents an order/transaction record.

### Important Fields Used

| Field | Description |
|---|---|
| Order ID | Unique identifier for an order |
| Customer ID | Identifier for the customer |
| Order Date | Date when the order was placed |
| Product Name | Name of the product |
| Product Category | Category of the product |
| Order Status | Current status of the order |
| Quantity | Number of units in the order |
| Net Sales USD | Sales value of the transaction |
| Discount | Discount applied to the order |
| Customer Rating | Rating provided by the customer |
| Country | Geographic information |

---

# 🧹 Data Preparation

Before building the dashboards, the dataset was examined and prepared for analysis.

The preparation included:

- Understanding the structure of the dataset
- Checking column names and data types
- Identifying dimensions and measures
- Checking for missing values
- Checking for duplicate records
- Reviewing numerical values
- Reviewing potential outliers
- Validating date fields
- Ensuring sales and quantity fields were treated as numerical measures
- Creating calculated fields required for analysis

### Data Quality Approach

Potential data-quality issues such as:

- Null values
- Duplicate records
- Outliers
- Unusual values

were evaluated based on their business meaning.

Data was not automatically removed simply because a value appeared unusual. The objective was to distinguish between genuine business transactions and actual data-quality problems.

---

# 📊 Tableau Dashboards

The project contains **three interactive Tableau dashboards**.

---

## 1️⃣ Overall Sales Performance

### Purpose

This dashboard provides a high-level overview of overall retail business performance.

### KPIs

- Total Sales
- Total Orders
- Total Customers
- Average Order Value

### Visualizations

- Sales by Order Status
- Top 10 Products by Sales
- Top 10 Customers by Sales
- Geographic Sales Map
- Sales by Category & Order Status

### Business Questions

This dashboard helps answer:

- What is the overall sales performance?
- How many orders were placed?
- How many customers are present?
- What is the average order value?
- Which products generate the most sales?
- Which customers contribute the most sales?
- How are orders distributed across different statuses?
- Where are sales geographically concentrated?
- How does sales vary across product categories and order statuses?

---

## 2️⃣ Customer & Order Analysis

### Purpose

This dashboard focuses on customer behavior and order patterns.

### KPIs

- Total Customers
- Total Orders
- Average Order Value
- Total Quantity

### Visualizations

- Average Orders per Customer by Category
- Top 10 Customers by Sales
- Sales by Order Status
- Average Customer Rating by Category
- Order Share by Status

### Business Questions

This dashboard helps answer:

- How frequently do customers place orders?
- Which customers generate the highest sales?
- Which categories have higher average order frequency?
- How are orders distributed across different statuses?
- Which categories have higher customer ratings?
- What percentage of orders belongs to each order status?

---

## 3️⃣ Product & Category Analysis

### Purpose

This dashboard focuses on product and category-level performance.

### KPIs

- Total Sales
- Total Orders
- Average Order Value

### Visualizations

- Top 10 Products by Sales
- Sales Contribution by Category
- Total Quantity by Category
- AOV vs Average Quantity by Category
- Sales by Category & Order Status

### Business Questions

This dashboard helps answer:

- Which products perform best in terms of sales?
- Which categories contribute the most sales?
- Which categories sell the highest quantity?
- How does average order value relate to average quantity?
- How does category sales vary across order statuses?

---

# 🧮 Calculated Fields

Calculated fields were created in Tableau to support customer and order analysis.

## Orders per Customer

```text
{ FIXED [Customer Id] : COUNTD([Order Id]) }
```

### Purpose

This calculates the number of unique orders placed by each customer.

The `FIXED` Level of Detail calculation calculates the order count at the customer level.

---

## Order Frequency Group

```text
IF [Orders per Customer] = 1 THEN "1 Order"
ELSEIF [Orders per Customer] = 2 THEN "2 Orders"
ELSEIF [Orders per Customer] = 3 THEN "3 Orders"
ELSE "4+ Orders"
END
```

### Purpose

This groups customers based on the number of orders they placed.

The groups are:

* 1 Order
* 2 Orders
* 3 Orders
* 4+ Orders

This makes customer ordering behavior easier to analyze.

---

# 📈 Analysis Areas

## Sales Performance

The project analyzes:

* Total sales
* Total orders
* Average order value
* Sales by order status
* Sales by product
* Sales by category

## Customer Analysis

The project analyzes:

* Top customers by sales
* Customer ordering frequency
* Average orders per customer
* Customer ratings
* Customer behavior

## Product Analysis

The project analyzes:

* Top products by sales
* Quantity sold
* Sales contribution by category
* Average order value
* Average quantity

## Order Analysis

The project analyzes:

* Order volume
* Order status
* Order share
* Order frequency
* Category and order-status combinations

## Geographic Analysis

The project includes a geographic sales visualization to understand sales distribution across different locations.

---

# 🎨 Visualization Techniques

Different visualization types were selected based on the business question.

The project uses:

* KPI Cards
* Horizontal Bar Charts
* Scatter Plots
* Treemaps
* Crosstabs
* Geographic Maps

The goal was to select an appropriate visualization for each analysis instead of using the same chart type for every business question.

---

# 🎛️ Dashboard Interactivity

The dashboards include interactive filtering and dashboard actions.

### Filters

* Product Category
* Year of Order Date
* Month of Order Date

These filters allow users to explore the dashboards dynamically.

### Reset Filters

A **Reset All Filters** button was configured to return the dashboard to its default state.

Dashboard interactions allow users to investigate different parts of the data and compare results across categories, dates, and order statuses.

---

# 🛠️ Tools & Technologies

| Tool        | Purpose                                                                             |
| ----------- | ----------------------------------------------------------------------------------- |
| **Tableau** | Data visualization, analysis, calculated fields, filters, and dashboard development |
| **CSV**     | Source dataset                                                                      |
| **Git**     | Version control                                                                     |
| **GitHub**  | Project repository and portfolio management                                         |

---

# 📂 Project Structure

```text
retail-sales-analysis/
│
├── data/
│   └── retail_orders.csv
│
├── tableau/
│   └── retail-sales-analysis.twbx
│
└── README.md
```

> File names may differ depending on the final project structure.

---

# 💡 Key Insights

The dashboards provide a way to identify:

* Top-performing products
* High-value customers
* Major sales-contributing categories
* Order-status distribution
* Customer ordering patterns
* Category-level quantity performance
* Customer rating differences
* Geographic sales distribution
* Relationships between average order value and quantity

The analysis is designed to help move from:

**"What happened?"**

to:

**"Where should the business investigate further?"**

---

# 🎯 Business Value

This project demonstrates how transaction-level retail data can be transformed into business-focused analysis.

### Sales

Identify products and categories contributing strongly to sales.

### Customer Management

Understand high-value customers and customer ordering behavior.

### Product Management

Compare product and category performance.

### Operations

Understand order-status patterns and identify areas that may require further investigation.

### Decision-Making

Use interactive dashboards to explore business performance from multiple perspectives.

---

# 📚 What I Learned

Through this project, I practiced:

* Understanding business requirements before visualization
* Understanding retail transaction data
* Identifying dimensions and measures
* Data-quality checking
* Working with dates in Tableau
* Creating calculated fields
* Using Level of Detail calculations
* Creating KPI cards
* Selecting appropriate chart types
* Building interactive dashboards
* Creating filters
* Creating dashboard actions
* Formatting dashboards
* Designing dashboards for readability
* Presenting data for business decision-making

---

# 🚀 Future Improvements

Potential future improvements include:

* Customer segmentation
* Customer retention analysis
* Cohort analysis
* Customer lifetime value analysis
* Sales forecasting
* Profit and margin analysis
* Product profitability analysis
* More detailed geographic analysis
* Automated data refresh
* Tableau Cloud / Tableau Server deployment

---

# 🏁 Project Status

**Completed**

The project contains three interactive Tableau dashboards:

1. **Overall Sales Performance**
2. **Customer & Order Analysis**
3. **Product & Category Analysis**

Together, these dashboards provide an interactive analysis of retail sales, customers, orders, products, categories, order statuses, and geographic performance.

---

# 👤 Author

**Cherry**

**Data Analytics | Tableau | SQL | Python**
