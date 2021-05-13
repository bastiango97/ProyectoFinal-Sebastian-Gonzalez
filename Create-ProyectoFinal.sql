create table hospital (
	id_hosp numeric(7,0) constraint pk_hospital primary key,
	name varchar(50), 
	typ varchar(10),
	lat int,
	alt int,
	long int,
	dist varchar(20),
	prov varchar(20),
	country_name varchar(20) references country (country_name),
	u_name varchar(50)
);

CREATE SEQUENCE hospital_id_hosp_seq START 1 INCREMENT 1 ;
ALTER TABLE hospital ALTER COLUMN id_hosp SET not null;
ALTER TABLE hospital ALTER COLUMN id_hosp SET default nextval('hospital_id_hosp_seq');


create table country (
	country_name varchar(20) constraint pk_country primary key,
	continent varchar(20),
	lada int
);

create table hospitalContact(
	id_cont int constraint pk_hospitalContact primary key,
	id_hosp numeric(7,0) references hospital (id_hosp),
	name_con varchar(20),
	phone int
);


CREATE SEQUENCE hospitalContact_id_cont_seq START 1 INCREMENT 1 ;
ALTER TABLE hospitalContact ALTER COLUMN id_cont SET not null;
ALTER TABLE hospitalContact ALTER COLUMN id_cont SET DEFAULT nextval('hospitalContact_id_cont_seq');


create table infrastructure (
	id_hosp numeric(7,0) constraint pk_infrastructure primary key references hospital (id_hosp),
	beds int, 
	doctors int, 
	nurses int,
	anesthesiologists int 
);

create table update1(
	id_update int constraint pk_update1 primary key,
	id_hosp numeric(7,0) references hospital (id_hosp),
	succ boolean, 
	status varchar(20), 
	date_up date, 
	id_cont int references hospitalContact (id_cont),
	problem varchar(20) 
);

CREATE SEQUENCE update1_id_update_seq START 1 INCREMENT 1 ;
ALTER TABLE update1 ALTER COLUMN id_update SET DEFAULT nextval('update1_id_update_seq');



create table inventory(
	id_update int constraint pk_inventory primary key references update1(id_update), 
	oxygen varchar(10),
 	antipyretics varchar(10), 
 	anesthesic varchar(10),
  	alcohol varchar(10),
  	masks varchar(10),
  	gloves varchar(10),
  	hats varchar(10),
  	apron varchar(10),
  	visors varchar(10),
  	shoe_covers varchar(10),
  	covid_tests int,
  	ventilators int 
);

create table stats (
	id_update int constraint pk_stats primary key references update1(id_update), 
	phc_cases int,
  	moph_report varchar(10), 
  	num_people_syntoms int,
  	positive_cases int, 
  	int_care_cases int, 
  	num_deaths_covid int,
  	num_deaths_non_covid int,
  	patients_recovered int 
);
 create table additionalInfo(
	id_update int constraint pk_additionalInfo primary key references update1(id_update), 
	screening_arrival varchar(10), 
  	aw_campaigns varchar(10), 
  	ability_to_test varchar(10), 
  	av_time_results int,
  	resources_recieved varchar(10), 
  	num_doctors int,
  	num_param_staff int
 );


drop table hospital 




