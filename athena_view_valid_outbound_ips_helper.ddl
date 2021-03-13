CREATE OR REPLACE VIEW valid_outbound_ips_helper AS 
SELECT DISTINCT "destination_ip"
FROM outbound_connection_agent;
