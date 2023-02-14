use ${hiveconf:ods_db};
create external table CertUpdate(
  `id` int, 
  `addintime` string, 
  `keynumber` string, 
  `certsn` string, 
  `issuename` string, 
  `certcn` string, 
  `sn` string, 
  `emailaddreass` string, 
  `opt3` string, 
  `keytableid` int, 
  `certtype` string, 
  `usernumber` string, 
  `cert_req_override_validity` bigint, 
  `updatecertvalidity` bigint, 
  `iscertdnchanged` string, 
  `certcsp` string, 
  `cert_sign_buf_p7` string, 
  `isneedupdate` string, 
  `projname` string, 
  `cert_notbefore` string, 
  `cert_notafter` string, 
  `subject` string, 
  `customerinfoid` int, 
  `meterialarrived` string, 
  `receivedperson` string, 
  `receivedtime` string, 
  `ispay` string, 
  `identperson` string, 
  `payarrivedtime` string, 
  `payconfirmperson` string, 
  `isspecialtreat` string, 
  `specialtreatperson` string, 
  `specialtreatreason` string, 
  `specialtreattime` string, 
  `identtime` string, 
  `identrejectreason` string, 
  `identresult` string, 
  `updateresult` string, 
  `updateerrorcausation` string, 
  `updateerrorofca` string, 
  `updatetime` string, 
  `certupdateprevid` int, 
  `certupdatenextid` int, 
  `newcertsubject` string, 
  `newcertserialnumber` string, 
  `certupdatevaliddays` int, 
  `newcertnotbefore` string, 
  `newcertnotafter` string, 
  `updatemodel` string, 
  `relationkeyidperson` string, 
  `relationkeyidtime` string, 
  `id_char_1` string, 
  `id_char_2` string, 
  `id_char_3` string, 
  `var_char_1` string, 
  `var_char_2` string, 
  `var_char_3` string, 
  `id_int_1` int, 
  `id_int_2` int, 
  `date_1` string, 
  `date_2` string, 
  `isdetectcertdnchanged` string, 
  `version` int, 
  `logid` int, 
  `userreginfoprocessresult` string, 
  `certdnconfirmperson` string, 
  `certdnconfirmdate` string, 
  `userinfo_json` string, 
  `cu_newdncheckmsg` string, 
  `cu_newdncheckdate` string, 
  `cu_newdnchengedverify` string, 
  `cu_newdnverifyperson` string, 
  `cu_newdnverifynote` string, 
  `cu_newdnverifydate` string, 
  `cu_issuenameonupdate` string, 
  `certupdate_deletetag` string, 
  `certupdate_deletedate` string, 
  `certupdate_deletereason` string)
comment 'CertUpdate'
PARTITIONED BY (ymd string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\001'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION "${hiveconf:ods_hdfs}/ods_db/CertUpdate";