CREATE TABLE intrusion_ip (Source_IP inet, Source_IP_num bigint);

CREATE TABLE dbip (
    ip_start inet,
    ip_end inet,
    code_country varchar(2),
    ip_start_num bigint,
    ip_end_num bigint);

COPY intrusion_ip FROM '/tmp/data/public_network_logs_ip_num.csv' WITH HEADER DELIMITER ',';

COPY dbip FROM '/tmp/data/dbip-numeric.csv' WITH HEADER DELIMITER ',';