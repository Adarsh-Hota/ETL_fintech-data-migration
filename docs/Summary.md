# Summary of Flow

- **Data Retrieval**: The pipeline starts by fetching table names from the SQL database.
- **Data Migration to Bronze**: The tables are copied to the Bronze layer in ADLS.
- **ETL Processes**: Data is transformed in the Bronze layer, moved to the Silver layer, and then to the Gold layer.
- **Notification**: The pipeline sends email notifications based on the success or failure of the pipeline execution.

This setup ensures that the data moves seamlessly from SQL to ADLS, undergoes transformation, and finishes with a notification of success or failure.

For a detailed overview of pipeline activities, see [Pipeline Activities](Pipeline_Activities.md).
