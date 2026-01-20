# ✈️ Aviation Flight Delay Analytics

## Data Analytics and Business Intelligence Portfolio Project

---

## 📌 Project Overview

This project analyzes commercial flight delay performance using a professional Business Intelligence workflow. The objective is to identify operational bottlenecks, understand delay behavior, and provide actionable insights for improving airline and airport performance.

The project follows an end-to-end analytics pipeline including data cleaning, SQL star schema modeling, analytical querying, and interactive dashboard visualization in Power BI.

---

## 🎯 Business Objectives

- Identify high-delay airports and peak congestion periods  
- Understand weekday and peak-travel delay patterns  
- Analyze the impact of flight distance on delay recovery  
- Highlight operational inefficiencies in ground handling  
- Provide data-driven recommendations for delay reduction  

---

## 📂 Dataset

- Source: Kaggle (US Commercial Flight Data)  
- Records: ~5,000 flights  
- Key Fields:
  - Flight Date  
  - Airport, City, State  
  - Departure Delay  
  - Arrival Delay  
  - Distance (KM)  
  - Delay Cause Components  

---

## 🛠 Tools & Technologies

- Python (Pandas) – Data Cleaning  
- MySQL – Star Schema Modeling & SQL Analysis  
- Power BI – Dashboard Visualization  
- SQL – Analytical Queries  

---

## 🗂 Data Modeling

A star schema was implemented for analytical efficiency.

### Dimension Tables
- Airports  
- Dates  

### Fact Table
- Flights Fact (delay metrics and distance)

---

## 📊 Power BI Dashboard

The dashboard was designed with a clean corporate aviation theme and includes:

- KPI Cards  
- Delay Trends  
- Airport Performance Comparison  
- Peak Period Analysis  
- Delay Cause Breakdown  

---

## 🔍 SQL Business Analysis

SQL was used to answer key operational questions:

- Which airport had the highest total delay?  
- Which weekdays experience the highest average delays?  
- Do short-haul flights recover delays less effectively?  
- Which airports perform worst during peak travel days?  

SQL techniques used:
- Aggregations  
- Window Functions  
- Ranking  
- Star Schema Joins  

---

## 📈 Key Findings

### DTW (Detroit) is the worst-performing airport by average delay.
<img width="682" height="323" alt="detroit_bi_table" src="https://github.com/user-attachments/assets/dd993b8a-eb37-405e-b33e-6736a2b766d9" />

---

  
### Nearly 50% of flights are delayed across all airports.
<img width="1530" height="480" alt="ontime_flight_%_bi" src="https://github.com/user-attachments/assets/b5963f32-5c14-4bb2-835e-5f15c35141b5" />

---

### Short-haul flights show limited delay recovery capability.
<img width="777" height="245" alt="detroit vs new york sql" src="https://github.com/user-attachments/assets/16401837-7d5b-4388-8d0f-c4a9025f82b4" />

---

### Peak delays occur between Thursday and Monday.
<img width="322" height="217" alt="weekday_pattern_sql" src="https://github.com/user-attachments/assets/5c602d6a-c190-459b-8f7b-4dee3ef23816" />

---

## 🚨 Areas of Improvement

- Ground Operations Inefficiency  
- Peak Travel Capacity Management  
- Schedule Buffer Optimization  
- Post-Landing Taxi and Gate Coordination  

---

## 💡 Recommendations

- Improve ground handling workflows  
- Optimize weekend peak-period resource allocation  
- Strengthen schedule buffer management  
- Enhance post-landing turnaround efficiency  

---

## 🏁 Conclusion

This project demonstrates a complete Business Intelligence lifecycle, from raw data preparation to SQL analysis and dashboard reporting. It highlights that operational congestion and scheduling behavior play a larger role in flight delays than distance alone.

---

## 📁 Project Structure

```text
Aviation-Flight-Delay-Analytics/
│
├── flight.csv
├── Pandas_note_book.ipynb
├── flights_cleaned.csv
│
├── setup.sql
├── queries.sql
│
├── Aviation_Dashboard.pbix
├── Aviation_Flight_Delay_Analytics_Report.pdf
│
└── README.md

```
---

-----
Files :
-----

The file used for the project can be downloaded [here](https://github.com/Dhusyanth-R-S/Aviation-Flight-Delay-Analytics/blob/main/flight.csv)

The Pandas(Python) code for setting up that data for a next levela analysis can be downloaded [here](https://github.com/Dhusyanth-R-S/Aviation-Flight-Delay-Analytics/blob/main/Pandas_note_book.ipynb)

The SQL table set up (Data Integrety ) can be downloaded  [here](https://github.com/Dhusyanth-R-S/Aviation-Flight-Delay-Analytics/blob/main/setup.sql) 

The SQL file analytical queries can be downloaded [here](https://github.com/Dhusyanth-R-S/Aviation-Flight-Delay-Analytics/blob/main/queries.sql)

The Power BI dashboard file can be downloaded [here](https://github.com/Dhusyanth-R-S/Aviation-Flight-Delay-Analytics/blob/main/Aviation_Dashboard.pbix)


About the Author
----------------
Name: Dhusyanth R S

LinkedIn: www.linkedin.com/in/dhusyanth-r-s-

Email: dhusyanthrs3@gmail.com