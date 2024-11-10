# Pipeline Steps

The following are the main steps of the pipeline:

### 1. SQL Database Preparation

Create and structure a SQL database with tables containing historical data that will serve as the source for further processing.

### 2. Data Pipeline Setup in Azure Synapse

Set up a dynamic data pipeline in Azure Synapse to move data from the SQL Database to the **Bronze Layer** in Azure Data Lake Storage (ADLS). This step handles raw data storage for further transformations.

### 3. Bronze to Silver Transformation (PySpark)

Create and configure a PySpark notebook to read the raw data from the Bronze Layer and transform it into a more refined format, which is then written into the **Silver Layer** as Delta Tables.
   - [View BronzeToSilver Notebook](../notebooks/BronzeToSilver_ETL.ipynb)

### 4. Silver to Gold Transformation (PySpark)

Develop and configure another PySpark notebook to read the transformed data from the Silver Layer, apply further processing, and write the final, optimized dataset into the **Gold Layer** as Delta Tables for high-quality data.
   - [View SilverToGold Notebook](../notebooks/SilverToGold_ETL.ipynb)

### 5. Automated Pipeline Execution

Set up an automated pipeline in Azure Synapse to manage and sequentially execute all the steps in the data pipeline, ensuring seamless execution and data flow from one stage to the next.

Refer to the [Pipeline Activities](Pipeline_Activities.md) document for more information on each pipeline activity.
