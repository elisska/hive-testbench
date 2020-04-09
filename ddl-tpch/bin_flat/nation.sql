create database if not exists ${DB};
use ${DB};

drop table if exists nation;

create external table nation
stored as ${FILE}
LOCATION '${LOCATION}/nation'
as select distinct * from ${SOURCE}.nation;
