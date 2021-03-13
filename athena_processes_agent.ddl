CREATE EXTERNAL TABLE IF NOT EXISTS processes_agent (
  `account_number` bigint,
  `agent_id` string,
  `agent_assigned_process_id` string,
  `is_system` boolean,
  `name` string,
  `cmd_line` string,
  `path` string,
  `agent_provided_timestamp` timestamp 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '1'
) LOCATION 's3://<BUCKET>/processes/'
TBLPROPERTIES ('has_encrypted_data'='false');
