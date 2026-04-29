create database hotwax_system;
use hotwax_system;

create table employe(
employe_id int,
employe_Name Varchar(20),
employe_designation varchar(20),
employe_salary int);


Insert into employe values (647823001,"Ashutosh mishra","java developer",40000),
(647823002,"Anshu sharma","SQL developer",35000),
(647823003,"Rahul sharma","C++ developer",30000),
(647823004,"yashwant soni","SQL developer",20000);

select * from employe;
select employe_name from employe;

Alter table employe add (DOB date);
insert into employe (DOB) values ('2024-12-01'),
('2025-01-01'),
('2026-01-01'),
('2024-11-01');

Alter table employe drop column DOB;
