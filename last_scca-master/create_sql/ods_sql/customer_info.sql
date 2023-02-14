use ${hiveconf:ods_db};
create external table customer_info(
  `customer_id` int, 
  `proj_id` int, 
  `proj_name` string, 
  `organization_name` string, 
  `organization_number` string, 
  `organization_boss` string, 
  `organization_register_number` string, 
  `orgidtype` string, 
  `organization_address` string, 
  `organization_post_code` string, 
  `organization_email` string, 
  `organization_phone` string, 
  `organization_fax` string, 
  `tax_register_number_nation` string, 
  `tax_register_number_native` string, 
  `transactor_name` string, 
  `transactor_email` string, 
  `indentify_card_number` string, 
  `indentify_card_type` string, 
  `transactor_fixed_phone` string, 
  `transactor_fax` string, 
  `transactor_mobile_phone` string, 
  `customer_input_person` string, 
  `certification_type` string, 
  `operation_type` string, 
  `updatebyhand` string, 
  `request_date` string, 
  `other_info` string, 
  `customer_primary_num` int, 
  `customer_sub_num` int, 
  `key_amount` int, 
  `takechargeperson` string, 
  `takechargetime` string, 
  `takechargenotes` string, 
  `systemuserid` string, 
  `ident_person` string, 
  `ident_date` string, 
  `ident_result` string, 
  `ident_reject_reason` string, 
  `isspecialtreat` string, 
  `specialtreattime` string, 
  `specialtreatperson` string, 
  `specialtreatreason` string, 
  `current_status` string, 
  `parent_keylife_id` int, 
  `id_char_1` string, 
  `id_char_2` string, 
  `id_char_3` string, 
  `importserialnumber` int, 
  `importtag` string, 
  `update_id` int, 
  `servprice` int, 
  `paymentby` string, 
  `opt1` string, 
  `opt2` string, 
  `version` int, 
  `logid` bigint, 
  `treeid` int, 
  `treenodename` string, 
  `pathname` string, 
  `cs_modify_tag` string, 
  `cususernumber` string, 
  `userpayid` int, 
  `cu_entryplace` string, 
  `cu_identplace` string, 
  `cus_certserviceyears` int, 
  `cus_freemonths` int, 
  `cus_identbusssiteid` int, 
  `cus_moneyrecive` int, 
  `cus_fapiaoout` int, 
  `cus_moneyrevivenoteforcontract` string, 
  `cus_accepnum` string, 
  `cus_province` string, 
  `cus_city` string, 
  `cus_district` string, 
  `cus_orgsecuritycode` string, 
  `cus_entryplaceid` int, 
  `cus_certextradays` int, 
  `cus_deletetag` string, 
  `cus_deletedate` string, 
  `cus_deletereason` string, 
  `busiopttag` string, 
  `sccacustomeridstr_cus` string, 
  `sccacustomerid_cus` int, 
  `sccacustomeridpact_cus` int, 
  `sccacustomeridpactstr_cus` string, 
  `cusareaid` string, 
  `busiopttagnote` string, 
  `cus_mobile_seal_id_dianjun` string)
comment 'customer_info'
PARTITIONED BY (ymd string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\001'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION "${hiveconf:ods_hdfs}/ods_db/customer_info";