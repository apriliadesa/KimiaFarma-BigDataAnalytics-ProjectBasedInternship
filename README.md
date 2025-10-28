# Kimia Farma – Performance Analytics Dashboard  
Project-Based Internship: Big Data Analytics (Kimia Farma × Rakamin Academy)  

## 📌 Project Overview  
This project analyzes the business performance of **PT Kimia Farma Tbk** over the period **2020-2023**. Using **Google BigQuery** and **Looker Studio**, the goal is to evaluate sales trends, branch and provincial performance, product contribution and customer/branch ratings, and to provide actionable insights for strategic decision-making.

## 🛠 Tools & Technologies  
- Google BigQuery (Data ingestion, transformation, analysis)  
- SQL (for data cleaning, joins, calculations)  
- Looker Studio (Dashboard design & visualization)  
- CSV data files (raw datasets)  

## 📂 Dataset & Tables  
### Raw Datasets:  
- `kf_final_transaction.csv` — transaction details (product, branch, customer, discount)  
- `kf_inventory.csv` — inventory / stock data  
- `kf_kantor_cabang.csv` — branch location, city, province, ratings  
- `kf_product.csv` — product details (name, price, category)  

### Analytical Table:  
- `kf_analysis_table` — unified table built in BigQuery which includes:  
  - `transaction_id` — unique transaction code  
  - `date` — transaction date  
  - `branch_id`, `branch_name`, `kota`, `provinsi` — branch location info  
  - `rating_cabang` — branch rating  
  - `customer_name` — customer who made the transaction  
  - `product_id`, `product_name` — product info  
  - `actual_price` — price before discount  
  - `discount_percentage` — discount applied  
  - `persentase_gross_laba` — profit margin %, determined by price category  
  - `nett_sales` — actual sales after discount  
  - `nett_profit` — profit derived from transaction  
  - `rating_transaksi` — rating given by customer for the transaction  

## 📊 Dashboard Link  
You can view the interactive dashboard here:  
[Kimia Farma Performance Dashboard](https://lookerstudio.google.com/reporting/90493a29-cd0e-4756-beec-21c2b950abd7)  

## 🔍 Key Insights  
- Annual sales trend from 2020–2023, with highest sales in 2022.  
- Top 10 provinces by total transactions and by net sales.  
- Geographic distribution of net profit across Indonesia.  
- Identification of branches with high branch-rating but low transaction-rating (opportunity for improvement).  
- Product categories driving the majority of profit (Pareto principle).

## 💡 Recommendations  
- Strengthen growth strategy and promotional efforts during low-sales months and in underperforming regions.  
- Focus on high-return product categories (e.g., analgesics, psycholeptics) for optimized inventory and marketing.  
- Standardize best operational practices from high performing provinces (e.g., West Java) to other regions.  
- Enhance branch transaction experience and conversion channels in branches with high service ratings but low sales.  
- Improve data-driven logistics and distribution for remote regions to expand market reach.

## 🧾 How to Use / Navigate the Dashboard  
1. Start with the KPI summary panel to get an overview of business performance.  
2. Continue to the Annual Sales Trend chart to observe temporal patterns.  
3. Explore the map and bar charts showing provincial performance and branch ratings.  
4. Use filters (Year, Province, Branch) to analyze specific segments or periods.  
5. Review product contribution and branch effectiveness to support actionable strategy.

## 👥 About the Intern  
**Aprilia Dela Safitri** — Big Data Analytics Intern at Kimia Farma in partnership with Rakamin Academy.  
This work reflects skills in data ingestion, SQL analytics, dashboard design and business insight generation.

---  
