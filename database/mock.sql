-- mock data for database

insert into countries (name, code, abbreviation) values ('Turkey', 1408, 'TR'), ('United Arab Emirates', 3244, 'AE');
insert into countries (name, code, abbreviation) values ('Saudia Arabia', 4200, 'SA'),('Kyrgyzstan', 3500, 'KG');
insert into countries (name, code, abbreviation) values ('New Zealand', 4994, 'NZ'), ('Namangan', 7777, 'NM');


insert into flights (flight, country_id) values ('TR4200', 1), ('NZ4255', 5), ('TR8990', 1);
insert into flights (flight, country_id) values ('UA8990', 2), ('SA4345', 3), ('KG8090', 4);
insert into flights (flight, country_id) values ('UA4200', 2), ('NM4355', 6), ('SA8080', 3);


insert into flight_details (flight_time, remark, gate, flight_id) values ('18:35:24', 'SCHEDULED', 'A18', 1);
insert into flight_details (flight_time, remark, gate, flight_id) values ('06:35:24', 'LANDING', 'B43', 2);
insert into flight_details (flight_time, remark, gate, flight_id) values ('18:35:24', 'CANCELLED', 'C4', 3);
insert into flight_details (flight_time, remark, gate, flight_id) values ('22:35:24', 'BOARDING', 'A34', 4);
insert into flight_details (flight_time, remark, gate, flight_id) values ('21:35:24', 'BOARDING', 'D34', 5);
insert into flight_details (flight_time, remark, gate, flight_id) values ('10:35:24', 'ARRIVED', 'C5', 6);
insert into flight_details (flight_time, remark, gate, flight_id) values ('22:35:24', 'SCHEDULED', 'C34', 7);
insert into flight_details (flight_time, remark, gate, flight_id) values ('18:24:24', 'ARRIVED', 'A02', 8);
insert into flight_details (flight_time, remark, gate, flight_id) values ('21:35:24', 'SCHEDULED', 'A11', 9);

