create database if not exists ${DB};
use ${DB};

drop table if exists region;

create table region
stored as ${FILE}
LOCATION '${LOCATION}/region'
as select distinct * from ${SOURCE}.region;
