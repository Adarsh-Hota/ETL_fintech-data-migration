# Data Pipeline with Azure Synapse, PySpark, and Delta Tables

This project sets up an end-to-end data pipeline that transforms and processes historical data from a SQL Database into a structured format in Azure Synapse Analytics, utilizing Azure Data Lake Storage (ADLS) and Delta Tables for efficient storage and querying.

<img src="assets/images/fintech_pipeline_run.png" alt="Fintech Azure Snyapse Pipeline Complete Run" style="border: 1px solid #d3d3d3;">


## Tech Stack

- **Python**
- **Azure SQL Database**
- **SQL**
- **Azure Synapse Analytics**
- **Azure Data Lake Storage (ADLS)**
- **PySpark**
- **Delta Tables**

## Pipeline Overview

The data pipeline consists of the following stages:

- **Bronze Layer**: Raw, unprocessed data stored in ADLS.
- **Silver Layer**: Cleaned and transformed data stored as Delta Tables.
- **Gold Layer**: Final, highly-optimized dataset for analytics and reporting.

## Steps

### 1. SQL Database Preparation

Create and structure a SQL database with tables containing historical data that will serve as the source for further processing.

### 2. Data Pipeline Setup in Azure Synapse

Set up a dynamic data pipeline in Azure Synapse to move data from the SQL Database to the **Bronze Layer** in Azure Data Lake Storage (ADLS). This step handles raw data storage for further transformations.

### 3. Bronze to Silver Transformation (PySpark)

Create and configure a PySpark notebook to read the raw data from the Bronze Layer and transform it into a more refined format, which is then written into the **Silver Layer** as Delta Tables.

### 4. Silver to Gold Transformation (PySpark)

Develop and configure another PySpark notebook to read the transformed data from the Silver Layer, apply further processing, and write the final, optimized dataset into the **Gold Layer** as Delta Tables for high-quality data.

### 5. Automated Pipeline Execution

Set up an automated pipeline in Azure Synapse to manage and sequentially execute all the steps in the data pipeline, ensuring seamless execution and data flow from one stage to the next.
