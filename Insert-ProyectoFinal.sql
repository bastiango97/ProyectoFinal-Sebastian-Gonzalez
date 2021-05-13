insert into country 
(country_name, continent, lada)
values 
('Suiza', 'Europe', 41),
('Germany', 'Europe', 49),
('USA', 'America', 1); 


insert into hospital 
(name, typ, lat, alt, long, dist, prov, country_name, u_name)
values 
('DEF', 'State', 12.3, 15.7, 89.9, 'DF', 'DF', 'México', 'ElKriko'),
('Tip', 'State', 12.3, 15.7, 89.9, 'DF', 'DF', 'México', 'ElKriko'),
('Londres', 'State', 12.3, 15.7, 89.9, 'DF', 'DF', 'México', 'ElKriko');

insert into infrastructure 
(id_hosp, beds, doctors, nurses, anesthesiologists)
values 
(1, 25, 15, 30, 5), 
(2, 50, 200, 60, 5), 
(3, 30, 100, 200, 7);

insert into hospitalcontact 
(id_hosp, name_con, phone)
values
(1, 'Reception', 5560), 
(1, 'RH', 5569), 
(1, 'Dr. Jon', 5578);


insert into update1 
(id_hosp, succ, status, date_up, id_cont, problem)
values 
(3, true, 'Completed', '2021-05-12', 3, 'No problem'),
(2, false, 'Not done', '2021-05-12', 3, 'Wrong number'),
(2, true, 'Completed', '2021-05-12', 3, 'No problem');

insert into inventory 
(id_update, oxygen, antipyretics, anesthesic, alcohol, masks, gloves, hats, apron, visors, shoe_covers, covid_tests, ventilators)
values 
(1, 'Yes, 30', 'Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30',20, 10),
(2, 'Yes, 30', 'Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30',20, 10),
(3, 'Yes, 30', 'Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30','Yes, 30',20, 10);

insert into stats 
(id_update, phc_cases, moph_report,num_people_syntoms,positive_cases,int_care_cases,num_deaths_covid,num_deaths_non_covid,patients_recovered)
values
(1, 12, 'Yes', 2, 4, 6, 4, 6,12); 

insert into additionalinfo 
(id_update, screening_arrival, aw_campaigns, ability_to_test, av_time_results, resources_recieved, num_doctors, num_param_staff)
values 
(1, 'Yes','Yes','Yes', 2, 'Yes', 20, 30 );