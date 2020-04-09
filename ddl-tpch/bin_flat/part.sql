create database if not exists ${DB};
use ${DB};

drop table if exists part;

create external table part
stored as ${FILE}
LOCATION '${LOCATION}/part'
as select * from ${SOURCE}.part
cluster by p_brand
;
