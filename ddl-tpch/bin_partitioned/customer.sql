create database if not exists ${DB};
use ${DB};

drop table if exists customer;

create external table customer
stored as ${FILE}
LOCATION '${LOCATION}/customer'
TBLPROPERTIES('orc.bloom.filter.columns'='*','orc.compress'='ZLIB')
as select * from ${SOURCE}.customer
cluster by C_MKTSEGMENT
;

