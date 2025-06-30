# Shopify-Analysis-Project
Welcome to my end-to-end Data Analytics project, where I dove deep into a Shopify sales dataset to explore trends, clean data, store it in a database, and build some cool dashboards to visualize insights.  This project was all about turning raw order data into meaningful, business-driven insights using Python, MySQL, and Power BI.

---

## 🚀 Project Overview

The goal was simple — **analyze e-commerce sales** and uncover:
- What’s selling well?
- Where are we selling most?
- When do customers shop the most?
- Which payment gateways do they prefer?
- And, are we actually making money on these sales?

---

## 🧰 Tools & Tech Stack

| Tool         | Purpose                             |
|--------------|-------------------------------------|
| Python 🐍     | Data cleaning, feature engineering, EDA |
| MySQL 🛢️     | Structured data storage for querying |
| Power BI 📊   | Dashboard and storytelling with data |

---

## 🔍 What I Did (Step by Step)

### 1. **Data Cleaning in Python**
- Handled null values (especially in `product_id` and `variant_id`)
- Removed duplicate rows
- Converted all column names to `snake_case`
- Checked for unique and consistent values

### 2. **Feature Engineering**
Added some useful columns to power better analysis:
- `order_month`, `order_weekday`, `order_hour`
- `price_per_unit`, `tax_percentage`
- Combined `city_state_zip`, `full_name`

### 3. **Visual Trend Analysis in Python**
Plotted patterns like:
- Monthly sales trends 📆
- Weekday order volume 🗓️
- Top cities by sales 🏙️
- Revenue distribution 💸
- Payment gateway usage 💳

### 4. **MySQL Integration**
- Import DataFrame From python into MySQL
- Created a structured MySQL schema
- Used data into MySQL for SQL analysis

### 5. **Power BI Dashboard**
- Build interactive visuals and KPIs
- Slice and dice by Province, gateway, etc.
- Create visuals like bar charts, maps, pie charts, and revenue trend lines

---

## 📊 Business Insights Found

- **Most orders happen on weekends** and in the **evening hours**
- A few products are selling a lot but bring **lower margins**
- **Shopify Payments and PayPal** dominate payment preferences
