create table Staff (
 Staff_No char (5) NOT NULL,
 Staff_Name varchar (30),
 Sex char (1),
 Staff_PhoneNo int,
 Email varchar (30),
 PRIMARY KEY(Staff_No)
);

create table Client (
 Client_No char (5) NOT NULL,
 Client_Name varchar (30),
 Street varchar (30),
 City varchar (20),
 Postcode int,
 Client_PhoneNo int,
 DOB varchar (15),
 PRIMARY KEY(Client_No)
);

create table Booking (
 Booking_No char (5) NOT NULL,
 Pickup_Date varchar (15),
 Drop_Date varchar (15),
 Staff_No char (5),
 PRIMARY KEY(Booking_No),
 FOREIGN KEY(Staff_No) REFERENCES Staff(Staff_No)
);

create table Vehicle (
 Vehicle_No char (10) NOT NULL,
 Make varchar (15),
 Model varchar (15),
 Engine_No varchar (15),
 Booking_No char (5),
 Client_No char (5),
 PRIMARY KEY(Vehicle_No),
 FOREIGN KEY(Client_No) REFERENCES Client(Client_No)
);

create table VehiclePart (
 Part_ID char (10) NOT NULL,
 Vehicle_No char (10),
 PRIMARY KEY(Part_ID),
 FOREIGN KEY(Vehicle_No) REFERENCES Vehicle(Vehicle_No)
);

create table AssociatedPart (
 Part_ID char (10) NOT NULL,
 Part_Type varchar (20),
 Part_Name varchar (20),
 PRIMARY KEY(Part_ID,Part_Type),
 FOREIGN KEY(Part_ID) REFERENCES VehiclePart(Part_ID)
);

create table Payment (
 Payment_No char (10) NOT NULL,
 Payment_Method varchar (20),
 Pay_Date varchar (15),
 Amount int,
 Client_No char (5),
 PRIMARY KEY(Payment_No),
 FOREIGN KEY(Client_No) REFERENCES Client(Client_No)
);


INSERT INTO Staff VALUES ('S001','Faris Nizam','M',0124993022,'faris_n@gmail.com');
INSERT INTO Staff VALUES ('S002','Roslinda Samsu','F',0196381832,'rosii@yahoo.com');
INSERT INTO Staff VALUES ('S003','Haikal Harum','M',0121889625,'haikal33@gmail.com');
INSERT INTO Staff VALUES ('S004','Safwan Omar','M',0113562218,'s.omar@gmail.com');
INSERT INTO Staff VALUES ('S005','Norisah Kasim','F',0117371105,'norisah.k2@gmail.com');
INSERT INTO Staff VALUES ('S006','Ahmad Schigdar','M',0112289563,'ahmad.s@gmail.com');
INSERT INTO Staff VALUES ('S007','Harith Irfan','M',0198662035,'harith9@yahoo.com');
INSERT INTO Staff VALUES ('S008','Azizah Ibrahim','F',0142691021,'azizah_i@yahoo.com');


INSERT INTO Client VALUES ('C001','Zaidatul Husniah','Presint 19','Putrajaya',62150,0146289522,'6-May-89');
INSERT INTO Client VALUES ('C002','Alifuddin Hussin','Jalan Pawang 3','Kuala Lumpur',54000,0139526631,'21-Dec-82');
INSERT INTO Client VALUES ('C003','Ramli Ahmad','Setia Alam U13','Shah Alam',40170,0138621034,'14-Dec-78');
INSERT INTO Client VALUES ('C004','Faiz Ahmad','Presint 10','Putrajaya',62250,0172478494,'8-Jun-91');
INSERT INTO Client VALUES ('C005','Nadiah Othman','Jalan Damansara 58','Kuala Lumpur',50490,0193357107,'30-Jan-89');
INSERT INTO Client VALUES ('C006','Aisyah Ali','Jalan Bangsar 12','Kuala Lumpur',59000,0115342699,'15-Aug-92');
INSERT INTO Client VALUES ('C007','Iskandar Alwi','Kota Kemuning 31','Shah Alam',40460,0127469013,'1-Aug-88');
INSERT INTO Client VALUES ('C008','Hidayah Akmal','Jalan Tukang Besi 9','Malacca',75200,0111324664,'27-Apr-76');
INSERT INTO Client VALUES ('C009','Zarif Razeen','Jalan Gombak 126','Kuala Lumpur',53000,0195590082,'19-Mar-82');
INSERT INTO Client VALUES ('C010','Imran Imon','Jalan Hang Tuah 2','Malacca',75300,0144520593,'11-Sep-90');


INSERT INTO Booking VALUES ('B001','26-Jan-17','12-Jan-17','S004');
INSERT INTO Booking VALUES ('B002','26-Jan-17','19-Jan-17','S006');
INSERT INTO Booking VALUES ('B003','9-Feb-17','21-Jan-17','S002');
INSERT INTO Booking VALUES ('B004','2-Feb-17','25-Jan-17','S007');
INSERT INTO Booking VALUES ('B005','10-Feb-17','4-Feb-17','S007');
INSERT INTO Booking VALUES ('B006','20-Mar-17','17-Feb-17','S001');
INSERT INTO Booking VALUES ('B007','16-Mar-17','11-Mar-17','S005');
INSERT INTO Booking VALUES ('B008','3-Apr-17','29-Mar-17','S003');
INSERT INTO Booking VALUES ('B009','7-April-17','30-Mar-17','S005');
INSERT INTO Booking VALUES ('B010','1-May-17','23-April-17','S007');


INSERT INTO Vehicle VALUES ('WZP 7742','Toyota','Estima 2.4','2TZ-FE','B001','C001');
INSERT INTO Vehicle VALUES ('PBXX 2384','Mitsubishi','Triton 2.5','4D56','B002','C001');
INSERT INTO Vehicle VALUES ('WAR 2491','Honda','CR-V 2.0','B20B','B003','C002');
INSERT INTO Vehicle VALUES ('WST 5612','Chevrolet','Cruze 1.8','E-TEC','B004','C004');
INSERT INTO Vehicle VALUES ('BGN 6677','Audi','A5 2.0','FSI V6','B005','C005');
INSERT INTO Vehicle VALUES ('WUS 7644','Proton','Exora 1.6','CamPro CPS','B006','C006');
INSERT INTO Vehicle VALUES ('JBY 9500','Perodua','Myvi 1.3','EJ-VE','B007','C008');
INSERT INTO Vehicle VALUES ('WRU 4939','Proton','Exora 2.1','CamPro CPS','B008','C008');
INSERT INTO Vehicle VALUES ('CCG 8724','Toyota','Vellfire 2.5','2AZ-FE','B009','C009');
INSERT INTO Vehicle VALUES ('WAS 9185','Perodua','Alza 1.5','3SZ-VE','B010','C010');


INSERT INTO VehiclePart VALUES ('IG-SW','WZP 7742');
INSERT INTO VehiclePart VALUES ('TA-ME','PBXX 2384');
INSERT INTO VehiclePart VALUES ('RAD','WAR 2491');
INSERT INTO VehiclePart VALUES ('GE-ST','WST 5612');
INSERT INTO VehiclePart VALUES ('DR-SH','BGN 6677');
INSERT INTO VehiclePart VALUES ('MA-CY','WUS 7644');
INSERT INTO VehiclePart VALUES ('FU-GA','JBY 9500');
INSERT INTO VehiclePart VALUES ('DR-SH','WRU 4939');
INSERT INTO VehiclePart VALUES ('OI-FI','CCG 8724');
INSERT INTO VehiclePart VALUES ('IG-SW','WAS 9185');


INSERT INTO AssociatedPart VALUES ('IG-SW','Electrical Switches','Ignition Switch');
INSERT INTO AssociatedPart VALUES ('TA-ME','Meter','Tachometer');
INSERT INTO AssociatedPart VALUES ('RAD','Cooling System','Radiator');
INSERT INTO AssociatedPart VALUES ('GE-ST','Gear','Gear Stick');
INSERT INTO AssociatedPart VALUES ('DR-SH','Gearbox','Drive Shaft');
INSERT INTO AssociatedPart VALUES ('MA-CY','Gearbox','Master Cylinder');
INSERT INTO AssociatedPart VALUES ('FU-GA','Gauge','Fuel Gauge');
INSERT INTO AssociatedPart VALUES ('DR-FR','Gearbox','Drive Shaft');
INSERT INTO AssociatedPart VALUES ('OI-FI','Filter','Oil Filter');
INSERT INTO AssociatedPart VALUES ('IG-SW','Electrical Switches','Ignition Switch');


INSERT INTO Payment VALUES ('P001','Credit Card','26-Jan-17',600,'C001');
INSERT INTO Payment VALUES ('P002','PayPal','26-Jan-17',250,'C001');
INSERT INTO Payment VALUES ('P003','Cash','9-Feb-17',900,'C002');
INSERT INTO Payment VALUES ('P004','Check','2-Feb-17',400,'C004');
INSERT INTO Payment VALUES ('P005','Cash','10-Feb-17',3750,'C005');
INSERT INTO Payment VALUES ('P006','Credit Card','20-Mar-17',1210,'C006');
INSERT INTO Payment VALUES ('P007','Credit Card','16-Mar-17',900,'C008');
INSERT INTO Payment VALUES ('P008','PayPal','3-Apr-17',4300,'C008');
INSERT INTO Payment VALUES ('P009','Check','7-April-17',325,'C009');
INSERT INTO Payment VALUES ('P010','PayPal','1-May-17',645,'C010');