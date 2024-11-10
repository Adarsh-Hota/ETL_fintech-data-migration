# Pipeline Activities

The pipeline includes the following main activities:

1. **GetTableListFromSqlDatabase**:
   - A **Lookup** activity that queries the SQL database to retrieve a list of base tables from the 'fintech' schema.
   - [View the SQL query configuration](../src/utils/query_tables_list_for_lookup_activity.sql)

2. **CopyEachTableToBronzeLayer**:
   - A **ForEach** activity that iterates over the tables fetched in the previous step and copies each table from SQL to the **Bronze layer** in ADLS using the **Copy** activity.

   <img src="../assets/images/sql_database_tables.png" alt="SQL Database Tables" style="border: 2px solid #d3d3d3; border-radius: 10px;" width="600">

3. **BronzeToSilver_ETL**:
   - A **SynapseNotebook** activity that processes the data in the Bronze layer and performs ETL transformations, storing the results in the **Silver layer**.
   - [View the Azure Notebook code](../notebooks/BronzeToSilver_ETL.ipynb)

4. **SilverToGold_ETL**:
   - A **SynapseNotebook** activity that further transforms the data from the Silver layer and writes the final dataset to the **Gold layer**.
   - [View the Azure Notebook code](../notebooks/SilverToGold_ETL.ipynb)

5. **PipelineSuccessNotification**:
   - A **WebActivity** that sends an email notification on successful completion of the pipeline.

6. **PipelineFailedNotification**:
   - A **WebActivity** that sends an email notification if the pipeline fails.

For parameter details, see [Parameters](Parameters.md).
