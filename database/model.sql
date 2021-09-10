-- model of airport flight table

create table countries (
	country_id serial not null primary key,
	name varchar(64),
	code int not null,
	abbreviation varchar(8)
);
comment on table countries is 'davlatlar';

create table flights (
	flight_id serial not null primary key,
	flight varchar(8),
	country_id int not null references countries(country_id)
);
comment on table flights is 'parvozlar';


create table flight_details (
	flight_details_id serial not null primary key,
	flight_time time,
	remark varchar(16),
	gate varchar(8) unique,
	flight_id int not null references flights(flight_id)
);
comment on table flight_details is 'parvoz ma''lumotlari';


