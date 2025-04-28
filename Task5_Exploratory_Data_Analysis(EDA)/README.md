# Task 5: Exploratory Data Analysis (EDA) — Iris Dataset

---

## Objective
Perform exploratory data analysis (EDA) on the **Iris** dataset to extract insights through statistical summaries and visualizations.

---

## Tools Used
- Python
- Libraries:
  - **Pandas** (data manipulation)
  - **Matplotlib** (basic plotting)
  - **Seaborn** (advanced visualization)

---

## Files
- `Iris.csv` — Input dataset.
- `EDA_Iris.ipynb` — Jupyter Notebook containing the complete analysis.
- `EDA_Iris_Report.pdf` — Exported PDF report summarizing all findings.
- `README.md` — Project overview.

---

## Project File Structure

```
/EDA_Iris_Project/
│
├── Iris.csv                  # Dataset file
├── EDA_Iris.ipynb             # Jupyter Notebook (full EDA code and visuals)
├── EDA_Iris_Report.pdf        # Exported PDF version of the Notebook
├── README.md                  # Project documentation

```


## Workflow Steps

1. **Loading the Dataset**
   - Used `pd.read_csv()` to load the Iris dataset.

2. **Data Exploration**
   - `.info()`, `.describe()`, and `.value_counts()` for preliminary inspection.
   - Checked for missing values and overall dataset structure.

3. **Visualization**
   - **Histograms** for feature distributions.
   - **Boxplots** to analyze feature spread and outliers across species.
   - **Pairplots** to identify relationships between pairs of features.
   - **Heatmap** to visualize feature correlations.
   - **Scatterplots** for in-depth feature interaction analysis.

4. **Observations**
   - Detailed insights and trends were recorded for each visual plot.

5. **Summary of Findings**
   - Identified most important features (Petal Length and Petal Width).
   - Highlighted species separability patterns.
   - Emphasized relationships between features.

---

## Deliverables

- Jupyter Notebook (`.ipynb`) file with code, visuals, and observations.
- PDF Report summarizing EDA findings.
- README file for project understanding.

---

## Hints Followed
- `.describe()`, `.info()`, `.value_counts()` for stats.
- `sns.pairplot()`, `sns.heatmap()` for visualization.
- Histograms, Boxplots, Scatterplots for trend identification.
- Observations written for each visual.
- Comprehensive final summary provided.

---

## How to Run
1. Install required libraries if not already installed:
   ```bash
   pip install pandas matplotlib seaborn
   ```
2. Open the Jupyter Notebook:
   ```bash
   jupyter notebook EDA_Iris.ipynb
   ```
3. Run all cells to regenerate the full analysis.
