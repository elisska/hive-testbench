create database if not exists ${DB};
use ${DB};

drop table if exists customer;

create table customer
stored as ${FILE}
LOCATION '${LOCATION}/customer'
as select * from ${SOURCE}.customer
cluster by C_MKTSEGMENT
;
