create database if not exists ${DB};
use ${DB};

drop table if exists supplier;

create external table supplier
stored as ${FILE}
LOCATION '${LOCATION}/supplier'
as select * from ${SOURCE}.supplier
cluster by s_nationkey, s_suppkey
;
