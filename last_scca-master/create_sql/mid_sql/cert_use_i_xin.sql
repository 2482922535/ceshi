use ${hiveconf:cboard_db};
create external table cert_use_i_xin(
  `ie_version` string, 
  `year` string, 
  `season` string, 
  `month` string, 
  `number` bigint)
comment 'cert_use_i_xin'
PARTITIONED BY (ymd string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\001'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION "${hiveconf:cboard_hdfs}/cboard_db/cert_use_i_xin";
