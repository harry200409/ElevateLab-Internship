# Task 1: Data Cleaning and Preprocessing

## Objective

The goal of this task was to clean and preprocess a raw dataset by identifying and resolving common data quality issues such as missing values, duplicates, inconsistent formatting, and incorrect data types. This process ensures the dataset is accurate and ready for further analysis or modeling.

## Tools Used

- **Python**
  - Pandas
  - NumPy (if applicable)
- **Jupyter Notebook / IDE**

## File Structure
```
Task1/
│
├── sales_data_sample.csv # Dataset
├── Task1_DataCleaning.ipynb # Jupyter notebook with all preprocessing steps
└── README.md # Project documentation (this file)
```

## 🔍 Data Cleaning Steps

The following preprocessing and cleaning steps were performed:

1. **Handling Missing Values**
   - Identified missing values using `.isnull().sum()`.
   - Replaced or dropped missing values based on context and column relevance.

2. **Removing Duplicates**
   - Used `.drop_duplicates()` to eliminate redundant rows.

3. **Standardizing Text Formats**
   - Converted inconsistent text (e.g., 'M', 'Male', 'F', 'female') into uniform categories.
   - Trimmed whitespaces and standardized case (e.g., all lowercase).

4. **Date Format Conversion**
   - Converted all date columns to `datetime` format using `pd.to_datetime()`.
   - Ensured uniform formatting such as `dd-mm-yyyy`.

5. **Column Name Cleanup**
   - Renamed columns to be lowercase and underscore-separated (e.g., `First Name` → `first_name`).

6. **Data Type Correction**
   - Ensured numerical fields (like age) are in `int` type.
   - Dates were cast to `datetime64`.

## ✅ Output

- `cleaned_dataset.csv` containing the processed data.
- A Jupyter notebook (`data_cleaning.ipynb`) documenting all steps with code and comments.

## 📄 Summary of Changes

| Issue             | Action Taken                                |
|------------------|----------------------------------------------|
| Missing values    | Filled or removed based on column context    |
| Duplicates        | Removed using `drop_duplicates()`            |
| Text inconsistencies | Standardized case and spelling            |
| Date formats      | Unified to `dd-mm-yyyy`                      |
| Column names      | Renamed to lowercase + underscores           |
| Data types        | Corrected to match expected field types      |

---

## 🚀 How to Run

1. Clone the repository:

   ```bash
   git clone https://github.com/harry200409/ElevateLab-Internship.git
   cd ElevateLab-Internship/Task1
   
2. Launch the notebook:

   ```bash
   jupyter notebook data_cleaning.ipynb
   
3. Review the code, outputs, and final cleaned dataset.
