# Retail Sales Analysis — Tableau

## 📊 Project Overview

This project analyzes retail transaction data using **Tableau** to understand sales performance, customer behavior, order patterns, and product/category performance.

The goal is to transform raw retail transaction data into interactive dashboards that help answer practical business questions and support data-driven decision-making.

---

## 🎯 Business Objectives

The analysis focuses on:

- Understanding overall sales performance
- Analyzing order volume and average order value
- Identifying top-performing products and customers
- Understanding customer ordering behavior
- Comparing product category performance
- Analyzing sales across different order statuses
- Understanding quantity and order-value patterns
- Identifying areas that may require business attention

---

## 📁 Dataset

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

---

## 🧹 Data Preparation

Before creating the dashboards, the data was examined and prepared for analysis.

The preparation included:

- Checking data types
- Understanding the structure of the dataset
- Identifying relevant dimensions and measures
- Checking for missing values
- Checking for duplicate records
- Reviewing numerical values and potential outliers
- Creating calculated fields required for analysis
- Ensuring dates and numerical measures were correctly interpreted

Data-quality decisions were made based on the business meaning of the fields rather than automatically removing unusual records.

---

# 📈 Dashboards

## 1. Overall Sales Performance

This dashboard provides a high-level view of business performance.

### Key metrics

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

### Business questions answered

- How much revenue is being generated?
- Which products generate the most sales?
- Which customers contribute the most sales?
- How are orders distributed by status?
- Which geographic areas generate sales?
- How does sales performance vary by category and order status?

---

## 2. Customer & Order Analysis

This dashboard focuses on customer behavior and order patterns.

### Key metrics

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

### Business questions answered

- How frequently do customers place orders?
- Which customers generate the most sales?
- How are orders distributed across statuses?
- Which categories have higher customer ratings?
- What proportion of orders belongs to each status?

---

## 3. Product & Category Analysis

This dashboard focuses on product and category performance.

### Key metrics

- Total Sales
- Total Orders
- Average Order Value

### Visualizations

- Top 10 Products by Sales
- Sales Contribution by Category
- Total Quantity by Category
- AOV vs Average Quantity by Category
- Sales by Category & Order Status

### Business questions answered

- Which products perform best?
- Which categories contribute the most sales?
- Which categories sell the highest quantity?
- Is there a relationship between average order value and quantity?
- How does category sales vary across order statuses?

---

## 🧮 Calculated Fields

Several calculated fields were created to support the analysis.

### Orders per Customer

```text
{ FIXED [Customer Id] : COUNTD([Order Id]) }
