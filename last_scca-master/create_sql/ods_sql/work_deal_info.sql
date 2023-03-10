use ${hiveconf:ods_db};
create external table WORK_DEAL_INFO(
  `id` double, 
  `create_date` string, 
  `del_flag` string, 
  `remarks` string, 
  `update_date` string, 
  `archive_date` string, 
  `archive_no` string, 
  `can_settle` int, 
  `cert_sn` string, 
  `cert_sort` bigint, 
  `classifying` bigint, 
  `creact_date` string, 
  `deal_info_sn` string, 
  `deal_info_status` string, 
  `deal_info_type` int, 
  `deal_info_type1` int, 
  `deal_info_type2` int, 
  `deal_info_type3` int, 
  `down_load` bigint, 
  `key_sn` string, 
  `last_days` bigint, 
  `man_made_damage` int, 
  `prev_id` double, 
  `refuse` string, 
  `status` int, 
  `svn` string, 
  `trust_device_count` bigint, 
  `user_sn` string, 
  `year` bigint, 
  `create_by` double, 
  `update_by` double, 
  `app_id` double, 
  `agent_id` double, 
  `product_id` double, 
  `cert_id` double, 
  `work_company_id` double, 
  `work_company_his_id` double, 
  `pay_id` double, 
  `work_user_id` double, 
  `work_user_his_id` double, 
  `physical_life` bigint, 
  `commercial_agent_id` double, 
  `obtained_date` string, 
  `pay_type` bigint, 
  `residual_life` bigint, 
  `settled_life` bigint, 
  `deal_info_office` bigint, 
  `notafter` string, 
  `add_cert_days` bigint, 
  `is_ixin` int, 
  `config_agent_id` double, 
  `is_sjqy` int, 
  `attestation_user` double, 
  `business_card_user` double, 
  `input_user` double, 
  `pay_user` double, 
  `input_user_date` string, 
  `pay_user_date` string, 
  `attestation_user_date` string, 
  `business_card_user_date` string, 
  `self_apply_id` double, 
  `is_main_tain` string, 
  `area_id` double, 
  `office_id` double, 
  `self_image` double, 
  `expiration_date` string, 
  `first_cert_sn` string, 
  `open_time` string, 
  `revoke_date` string, 
  `is_revoke_business` int, 
  `remarkinfo` string, 
  `verify_user` double, 
  `verify_user_date` string, 
  `contact_tel` string, 
  `hard_id` double, 
  `revoke_user` double, 
  `raaccount_id` bigint)
comment 'WORK_DEAL_INFO'
PARTITIONED BY (ymd string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\001'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION "${hiveconf:ods_hdfs}/ods_db/WORK_DEAL_INFO";