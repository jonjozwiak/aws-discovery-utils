CREATE EXTERNAL TABLE IF NOT EXISTS os_info_agent (
  `account_number` bigint,
  `agent_id` string,
  `os_name` string,
  `os_version` string,
  `cpu_type` string,
  `host_name` string,
  `hypervisor` string,
  `timestamp` timestamp 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '1'
) LOCATION 's3://<BUCKET>/osInfo/'
TBLPROPERTIES ('has_encrypted_data'='false');
