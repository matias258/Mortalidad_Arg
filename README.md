# Argentina Population & Migration Analysis (2019–2024)

This repository contains datasets and analysis notebooks focused on modeling Argentina's population dynamics using demographic and migratory flows between the years **2019 and 2024**.

The goal is to compute annual mortality using a population-flow identity and to visualize the relationships through Markov-style state diagrams and structured data transformations.

---

## 📌 Objective

We study population changes in Argentina by combining:

- Total population per year  
- Migratory flows (entries and exits)  
- Births (natality)  
- Deaths (mortality) — which we want to estimate indirectly  

To estimate mortality for a given year \( X+1 \), we use the population-flow identity:

### Population Flow Equation (MathJax)

\[
\text{Population}_{X+1}
= \text{Population}_{X}
+ \text{Births}_{X+1}
+ \text{Immigration}_{X+1}
- \text{Emigration}_{X+1}
- \text{Mortality}_{X+1}
\]

Solving for mortality:

\[
\text{Mortality}_{X+1}
=
\text{Population}_{X}
+ \text{Births}_{X+1}
+ \text{Immigration}_{X+1}
- \text{Emigration}_{X+1}
- \text{Population}_{X+1}
\]

This will be used later in the notebook to estimate yearly mortality.

---

## 📊 Datasets Used

### 1. **Population Data (2005–2024)**  
Source: World Bank – Total Population (`SP.POP.TOTL`)

A cleaned CSV is provided with columns:

- `Year`
- `Total`

All population values are stored as integers.

---

### 2. **Migration Data (2019–2024)**  
Source: Dirección Nacional de Migraciones  
Official dataset of entries and exits to/from Argentina.

Columns:

- `YEAR`
- `IMMIGRATION`
- `EMIGRATION`
- `TOTAL_MIGRATION`

These columns are cleaned and converted from localized string formats (e.g., `"34.413.753"`) into integers.

---

## 🔧 Data Cleaning Notes

### Converting migration numbers
The original file includes values like:
- 34.413.753
- 9.705.757


These must be cleaned with:

```python
df['ENTRADAS'] = df['ENTRADAS'].str.replace('.', '').astype(int)
df['SALIDAS'] = df['SALIDAS'].str.replace('.', '').astype(int)
df['TOTAL'] = df['TOTAL'].str.replace('.', '').astype(int)
```


 ## 🔗 Links
[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://tinyurl.com/matiasgangui)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/matias-gangui-660654175/)
[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://github.com/matias258)
