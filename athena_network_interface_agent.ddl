CREATE EXTERNAL TABLE IF NOT EXISTS network_interface_agent (
  `account_number` bigint,
  `agent_id` string,
  `name` string,
  `mac_address` string,
  `family` string,
  `ip_address` string,
  `gateway` string,
  `net_mask` string,
  `timestamp` timestamp 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '1'
) LOCATION 's3://<BUCKET>/networkInterface/'
TBLPROPERTIES ('has_encrypted_data'='false');
