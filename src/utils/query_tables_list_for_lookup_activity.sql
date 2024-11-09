/*
    This query retrieves the list of table names (with their schema) from the 'fintech' schema in the database, 
    filtering for base tables and ordering them by schema and table name
*/
SELECT 
    TABLE_SCHEMA AS SchemaName,
    TABLE_NAME AS TableName
FROM 
    INFORMATION_SCHEMA.TABLES
WHERE 
    TABLE_TYPE = 'BASE TABLE' and TABLE_SCHEMA = 'fintech'
ORDER BY 
    SchemaName, TableName;