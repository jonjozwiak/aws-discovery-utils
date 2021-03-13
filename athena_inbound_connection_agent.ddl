CREATE EXTERNAL TABLE IF NOT EXISTS inbound_connection_agent (
  `account_number` bigint,
  `agent_id` string,
  `source_ip` string,
  `source_port` int,
  `destination_ip` string,
  `destination_port` int,
  `ip_version` string,
  `transport_protocol` string,
  `agent_assigned_process_id` string,
  `agent_creation_date` timestamp
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '1'
) LOCATION 's3://<BUCKET>/destinationProcessConnection/'
TBLPROPERTIES ('has_encrypted_data'='false');
