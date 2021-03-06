use ansi_hands_on_ipm002;



select distinct trainer_id,associate_id
from associate_status
 where Associate_Id in (select Associate_Id from associate_info where Associate_Name like '%i%');
 


select distinct trainer_id from associate_status
 where Associate_Id in (select Associate_Id from associate_info where Associate_Name not like '%i%');
 


select trainer_id, trainer_rating from trainer_feedback
where trainer_id in (select trainer_id from associate_status where module_Id = 'J2EE');




create table Trainer_Info_Sabbatical
(Trainer_Id varchar(20) primary key,
Salutation varchar(7) not null,
Trainer_Name varchar(30)not null,
Trainer_Location varchar(30)not null,
Trainer_Track varchar(15) not null,
Trainer_Qualification varchar(100) not null,
Trainer_Experiance int ,
Trainer_Email varchar(100) not null,
Trainer_Password varchar(20) not null
);


insert into Trainer_Info_Sabbatical values
('F011','Mr.','Shyju K', 'Kochi','Java','Bachelor of Technology',9,'shyju@alliance.com','fac11@123');
insert into Trainer_Info_Sabbatical values
('F012','Mr.','Raviraj Kumar', 'Kochi','Java','Bachelor of Technology',8,'raviarajkumar@alliance.com','fac12@123');
insert into Trainer_Info_Sabbatical values
('F013','Mr.','Suresh Babu N', 'Mumbai','Testing','Bachelor of Technology',19,'sureshbabun@alliance.com','fac13@123');



insert into trainer_info select * from trainer_info_sabbatical;


update trainer_info set trainer_location = 'kochi'
where trainer_id in (select trainer_id from trainer_info_sabbatical where Trainer_Experiance >10);
 

delete from trainer_info where trainer_id
in (select trainer_id from trainer_info_sabbatical where Trainer_Experiance > 12);


select * from trainer_info_sabbatical as t1 where t1.trainer_id in
(select trainer_id from trainer_info as t2 where t1.Trainer_Id = t2.trainer_id);