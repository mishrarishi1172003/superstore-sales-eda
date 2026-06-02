# 🛒 Superstore Sales — Exploratory Data Analysis

<div align="center">

![Python](https://img.shields.io/badge/Python-3.10-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-2.0-150458?style=for-the-badge&logo=pandas&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-3.7-11557c?style=for-the-badge)
![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

**End-to-end exploratory data analysis on retail sales data to uncover actionable business insights.**

</div>

---

## 📌 Project Overview

This project performs a full **Exploratory Data Analysis (EDA)** on a retail superstore's transactional dataset covering **2021–2022**. Using Python and SQL, I analyze sales performance, profitability, customer segments, regional trends, and the impact of discounts to generate data-driven business recommendations.

---

## 🎯 Business Questions Answered

| # | Question |
|---|----------|
| 1 | Which **product categories** generate the most revenue and profit? |
| 2 | Which **regions** are performing best and worst? |
| 3 | What are the **monthly sales trends** — any seasonality? |
| 4 | How do **discounts impact profitability**? |
| 5 | Which **customer segments** contribute most to revenue? |
| 6 | What are the **top and bottom performing sub-categories**? |

---

## 📊 Key Insights

```
📦 Total Sales    :  $467,832
💰 Total Profit   :   $52,341
📈 Profit Margin  :    11.2%
🧾 Total Orders   :    1,000
```

> 💡 **Discounts above 20% consistently resulted in negative profit** — the single biggest lever for improving margins.

> 📍 **West region** outperformed all other regions in both sales and profit margin.

> 📅 **Q4 (Oct–Dec)** showed the strongest sales spike — classic seasonal demand peak.

> 🛒 **Technology** leads in sales, but **Office Supplies** showed better margin consistency.

---

## 🗂️ Project Structure

```
📦 sales-eda-project/
├── 📓 sales_eda_analysis.ipynb    ← Full EDA in Jupyter Notebook
├── 🗄️  queries.sql                ← 11 SQL business queries
├── 📁 charts/                     ← All saved visualizations
│   ├── 01_sales_by_category.png
│   ├── 02_regional_performance.png
│   ├── 03_monthly_trend.png
│   ├── 04_discount_profit.png
│   ├── 05_subcategory_performance.png
│   └── 06_segment_analysis.png
└── 📄 README.md
```

---

## 🔍 Analysis Breakdown

### 1. 📦 Sales by Category
Compared total sales and profit across Furniture, Technology, and Office Supplies using grouped bar charts.

### 2. 🌎 Regional Performance
Analyzed sales share, profit, and margin % across West, East, Central, and South regions.

### 3. 📅 Monthly Sales Trend
Plotted time-series sales data with peak and trough highlights to identify seasonality.

### 4. 🔻 Discount vs Profit
Scatter plot + banded bar chart revealing the profit damage caused by high discounts.

### 5. 🏆 Top Sub-Categories
Horizontal bar chart comparing the top 10 sub-categories by sales and profit.

### 6. 👥 Customer Segment Analysis
Pie chart + dual-axis chart comparing Consumer, Corporate, and Home Office segments.

---

## 🛠️ Tools & Libraries

| Tool | Purpose |
|------|---------|
| `Python 3.10` | Core programming language |
| `Pandas` | Data loading, cleaning, aggregation |
| `Matplotlib` | Custom visualizations |
| `Seaborn` | Statistical plots and styling |
| `NumPy` | Numerical operations |
| `SQL (MySQL)` | Business queries on relational data |
| `Jupyter Notebook` | Interactive analysis environment |

---

## 🚀 How to Run

```bash
# 1. Clone the repository
git clone https://github.com/yourusername/sales-eda-project.git
cd sales-eda-project

# 2. Install dependencies
pip install pandas numpy matplotlib seaborn jupyter

# 3. Launch the notebook
jupyter notebook sales_eda_analysis.ipynb
```

> **Dataset:** Download the [Superstore Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final) from Kaggle and place it in the root folder. Alternatively, the notebook auto-generates sample data.

---

## 📋 Business Recommendations

| Priority | Recommendation |
|----------|----------------|
| 🔴 High | **Cap discounts at 20%** — anything above destroys profit margin |
| 🟠 Medium | **Replicate West region strategies** in Central and South |
| 🟡 Medium | **Invest in Technology marketing** — highest revenue potential |
| 🟢 Low | **Plan Q4 inventory early** to capitalize on seasonal demand |
| 🟢 Low | **Launch Consumer loyalty programs** — largest segment by volume |

---

## 👤 About Me

**[Your Name]** — Aspiring Data Analyst passionate about turning raw data into business decisions.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat&logo=linkedin)](https://linkedin.com/in/yourprofile)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=flat&logo=github)](https://github.com/yourusername)
[![Email](https://img.shields.io/badge/Email-Contact-EA4335?style=flat&logo=gmail)](mailto:your@email.com)

---

<div align="center">
⭐ <strong>If you found this project helpful, please star this repository!</strong> ⭐
</div>
