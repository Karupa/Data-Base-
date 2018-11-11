create table Physician ( phy_id int primary key,
                       phy_name varchar,
                       address varchar(100),
                       salary decimal,
                       desfield  varchar(50));
insert into physician( phy_id , phy_name , address , salary , desfield)
values(2,'Abhi','thrissur',110000,'Dr'),
	(3,'Anjli','kannor',1000000,'Dr'),
	(4,'Braath','kollam',2000000,'Dr'),
	(5,'Akhil','palakad',1020000,'Dr'),
	(6,'Athul','kotarakara',300000,'Dr'),
        (7,'Neeraj','Ranchi',3000000,'Dr'),
	(8,'Ablin','port blair',1000000,'Dr'),
	(9,'Anshu','prem nagar',1000000,'Dr'),
	(10,'Deepali','junglighat',2000000,'Dr');


create table Specialist (phys_id int , 
			field_of_spec varchar(50), 
			year_of_spec date foreign key(phys_id) refernces Physician(phy_id));

insert into Specialist (phys_id,field_of_spec,year_of_spec)
values(1,'cardic','2000-12-30'),
	(2,'physio','2016-2-3'),
	(3,'psycho','2001-2-15'),
	(4,'ent','2010-11-12'),
        (5,'pathogenist','2012-3-6');




create table Nurse (nurse_id int,
                     nurse_name varchar(10),
                     shift  varchar(10));


insert into Nurse (nurse_id , nurse_name , shift)
values(1,'lekshmi','morning'),
      (2,'shivani','noon'),
      (3,'Ellina','night'),
      (4,'marry','morning'),
	(5,'geetha','noon'),
	(6,'delna','noon'),
	(7,'anjli','night');



create table Ward ( ward_no int primary key,
                    ward_name varchar(20),
                    no_of_beds int,
                    telephone  int,
                    nurse_id   varchar(10));


insert into Ward (ward_no ,  ward_name , no_of_beds,telephone, nurse_id)
values(1,'normal',25,987768543,1),
      (2,'critical',25,979879678,2),
      (3,'ICU',10,7683459875,3);



                  
create table Patient ( pat_no int,
			pat_name varchar(50),
			phy_id int ,foreign key(phy_id) references Physician (phy_id),
			ward_no int ,foreign key(ward_no) references Ward(ward_no));


insert into Patient (pat_no , pat_name , phy_id, ward_no)
values  (1,'Ashok',1,1),
	(2,'Arvind',2,1),
	(3,'leela',3,2),
	(4,'Nisha',4,2),
	(5,'naina',5,3),
	(6,'ganesh',6,1),
	(7,'Anshu',7,2);
	
      
    
