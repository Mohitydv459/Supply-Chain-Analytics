# 📦 Supply Chain & Logistics Optimization Dashboard

## 📊 Project Overview
This project analyzes the shipping and delivery performance of a global retail supply chain. Using over **180,000 shipping transaction records**, the analysis identifies critical bottlenecks in delivery performance—specifically across shipping modes, product categories, and geographic regions.

The goal is to provide **actionable intelligence** to improve the company’s **On-Time Delivery (OTD)** rate and reduce customer complaints due to delayed shipments.

---

## ❓ Business Problem

### The Challenge
The Supply Chain Director reported a rising volume of customer complaints about **delayed shipments**. However, the company lacked visibility into:

- Whether delays were driven by certain **shipping modes**
- Which **product categories** were most affected
- Which **regions** had persistent delivery issues

This project seeks to answer key operational questions, support decision-making, and improve logistics performance.


## 📂 Dataset & Column Description
**Dataset Link:** [supplychaindataset](https://www.kaggle.com/datasets/shashwatwork/dataco-smart-supply-chain-for-big-data-analysis)
**Dataset Description** [DescriptionDataCoSupplyChain.csv](https://github.com/user-attachments/files/24169426/DescriptionDataCoSupplyChain.csv)

## 🎯 Key Questions Solved

1. **What is our actual On-Time Delivery (OTD) rate?**
   - Is it meeting the target of **>95%?**
2. **Which shipping modes are the primary drivers of delays?**
3. **Which product categories have the highest “Revenue at Risk” due to shipping delays?
4. **What geographic regions exhibit chronic late deliveries?**

---

## 📊 Key Insights & Findings

### 🚨 Critical Performance Gap
- The overall **On-Time Delivery (OTD)** rate is **42.72%**, well below the industry benchmark of 95%.
- This reveals a **systemic failure in logistics execution** and planning.

### 🚚 Shipping Mode Performance
- **“Second Class”** shipping has the **worst delivery performance**, with an average delay of ~2.5 days.
- **“Same Day”** shipping also underperforms, averaging **~1 day late**, which contradicts service expectations.

### 💰 Financial Impact
- The **Fishing** and **Camping & Hiking** product categories have the highest **Revenue at Risk** due to delayed deliveries.
- Prioritizing performance improvements in these segments can protect significant revenue.

### 🌍 Geographic Hotspots
- High concentrations of late deliveries were detected in:
  - **Latin America**
  - **Western Europe**
- This suggests a need to **reevaluate regional logistics partners or transportation networks** in these areas.

## 📊 Dashboard 
<img width="1419" height="800" alt="Supply Chain Dashboard" src="https://github.com/user-attachments/assets/2892e3b7-d170-4076-8f55-57bf76d3b76d" />

## 🏁 Conclusion
This project successfully demonstrates how data analytics can be leveraged to solve critical operational inefficiencies. By moving beyond simple descriptive reporting to diagnostic analysis, the dashboard revealed that the company's low 42% On-Time Delivery rate is not a general failure, but a specific issue tied to "Second Class" shipping modes and logistics partners in Latin America.

**The insights generated from this dashboard provide a clear roadmap for the Supply Chain Director to:**

- 1.Renegotiate contracts with "Second Class" carriers.

- 2.Investigate regional logistics hubs in the identified high-risk zones.

- 3.Protect revenue by prioritizing shipping reliability for high-value categories like Fishing and Camping.


## 🛠️ Tech Stack & Workflow

| Component | Technology |
|-----------|------------|
| Data Cleaning & ETL | Python (Pandas) |
| Data Storage | MySQL (Star Schema) |
| Visualization | Power BI |
| Metrics & Analytics | DAX |

### Workflow

1. **ETL Pipeline (Python & Pandas)**  
   - Clean raw CSV logs
   - Correct date encoding
   - Standardize fields for ingestion

2. **Data Warehousing (MySQL)**

   - Designed a **Star Schema**
   - Centralized fact & dimension tables (e.g., `Fact_Sales`, `Dim_Product`)

3. **Dashboard (Power BI)**
   - Interactive report with advanced metrics like:
     - `OnTime Delivery %`
     - `Revenue at Risk`
     - `Late Delivery Risk`
   - Enabled filtering by geography, shipping mode, and product category





