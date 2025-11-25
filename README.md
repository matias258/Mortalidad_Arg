# Mortality in Argentina: A Demographic Flow Approach

## Project Overview
This project focuses on estimating mortality rates in Argentina by reverse-engineering demographic data. In contexts where death registration may be delayed or incomplete, mortality figures can be derived by balancing the demographic equation using reliable data on population stocks, births, and migratory flows.

## Methodology
The core logic relies on the **Demographic Balancing Equation**. The population at time $t+1$ is equal to the population at time $t$, plus natural increase (Births minus Deaths), plus net migration (Immigration minus Emigration).

The standard formula is:

$$P_{t+1} = P_t + B_t + I_t - E_t - D_t$$

Where:
* $P$: Population
* $B$: Births
* $I$: Immigration (Entries)
* $E$: Emigration (Exits)
* $D$: Deaths

### Estimation Strategy
To calculate the unobserved or delayed mortality figures, we rearrange the equation to solve for $D_t$:

$$D_t = P_t + B_t + I_t - E_t - P_{t+1}$$

## Data Sources
The analysis integrates three primary datasets from official Argentine sources (INDEC and National Directorate of Migration):
1.  **Annual Population Estimates:** 2019–2024
2.  **Registered Live Births:** 2019–2023
3.  **Migratory Flows (Entries/Exits):** 2019–2024

## Technologies
* **Python:** Primary language
* **Pandas:** Data manipulation and merging
* **Jupyter Notebook:** Analysis environment
