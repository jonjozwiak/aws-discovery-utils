CREATE EXTERNAL TABLE IF NOT EXISTS system_performance_agent (
  `account_number` bigint,
  `agent_id` string,
  `total_disk_bytes_read_per_sec_in_kbps` double,
  `total_disk_bytes_written_per_sec_in_kbps` double,
  `total_disk_read_ops_per_sec` double,
  `total_disk_write_ops_per_sec` double,
  `total_network_bytes_read_per_sec_in_kbps` double,
  `total_network_bytes_written_per_sec_in_kbps` double,
  `total_num_logical_processors` int,
  `total_num_cores` int,
  `total_num_cpus` int,
  `total_num_disks` int,
  `total_num_network_cards` int,
  `total_cpu_usage_pct` double,
  `total_disk_size_in_gb` double,
  `total_disk_free_size_in_gb` double,
  `total_ram_in_mb` double,
  `total_free_ram_in_mb` double,
  `timestamp` timestamp 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '1'
) LOCATION 's3://<BUCKET>/systemPerformance/'
TBLPROPERTIES ('has_encrypted_data'='false');
