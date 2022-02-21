create database projekti;

create table projekti.lexuesi (
lexuesi_id int,
lexuesi_Emri varchar(30),
lexuesi_Mbiemri varchar(20),
emriIprindit varchar(10),
gjinia varchar(10),
ditelindja datetime,
adresa varchar (40),
komuna varchar(20),
telefoni varchar(20),
email varchar(50),
profesioni varchar(20),
primary key(lexuesi_id)
);

INSERT INTO projekti.lexuesi(lexuesi_id,lexuesi_Emri,lexuesi_Mbiemri,emriIprindit,gjinia,ditelindja,adresa,komuna,telefoni,email,profesioni)
VALUES
(1,'Andi','Gashi','Ardi','Mashkull','2001-03-13','Rr Nena Tereze Kosove 10000','Prishtine','00-383-49-200-300','andigashi@hotmail.com','Student'),
(2,'Ardi','Krasniqi','Medion','Mashkull','2003-09-19','Rr.Ali Sokoli Kosove 10000','Prishtine','00-383-44-225-707','ardi1909@gmail.com','Student'),
(3,'Zana','Hoxha','Kastriot','Femer','2002-06-15','Rr.Ganimete Terbeshi Kosove 10000','Prishtine','00-383-49-699999','zana15@uni-pr.edu','Student'),
(4,'Dea','Berisha','Adriatik','Femer','2000-01-22','Rr.Xhevdet Doda Kosove 10000','Prishtine','00-383-49-151603','dea.br@ymail.com','Student'),
(5,'Ylleza','Rama','Bekim','Femer','2001-11-24','Rr.Garibaldi Kosove 10000','Prishtine','00-383-44-903904','ylleza30@outlook.com','Student'),
(6,'Dora','Ahmetaj','Fatlum','Femer','2002-06-06','Rr.Ukshin Hoti Kosove 10000','Prishtine','00-383-49-152030','dora.ah@gmail.com','Student'),
(7,'Jon','Hoxhaj','Armend','Mashkull','2003-01-05','Rr.Liria Kosove 21000','Prizren','00-383-45-231150','jonihoxha@outlook.com','Student'),
(8,'Jon','Gashi','Fisnik','Mashkull','1999-11-12','Rr.UQK Kosove 10000','Gjilan','00-383-45-291568','jongashi@outlook.com','Student'),
(9,'Daorsa','Selimi','Arber','Femer','2002-10-02','Rr.Garibaldi Kosove 10000','Prishtine','00-383-49-205130','daorsa1906@gmail.com','Student'),
(10,'Blendion','Muqiqi','Besnik','Mashkull','2001-03-25','Rr.Ibrahim Rugova Kosove 10000','Prishtine','00-383-44-115890','blendi.oni@hotmail.com','Student');


create table projekti.punetori (
punetori_id varchar(10),
p_emri varchar(30),
p_mbiemri varchar(30),
titulli varchar(20),
adresa varchar (50),
telefoni varchar(30),
paga int,
primary key(punetori_id)
);

INSERT INTO projekti.punetori(punetori_id, p_emri , p_mbiemri, titulli ,adresa,telefoni,paga )
VALUES
('1P','Besart','Ramadani','Drejtor','Kosove, Prishtine, Fadil Vata','045323223',15000),
('2P','Albin','Ademi','Zv.Drejtor','Kosove, Peje, Fadil Kastrati','049434323',1000),
('3P','Arber','Gashi','Administratore','Kosove, Kline, Halil Vata','04932144',1500),
('4P','Blend','Krasniqi','IT','Kosove Gjakove Gjergj Kastrioti','043243113',800),
('5P','Visar','Opoja','Roje','Kosove, Gjilan, Ibrahim Rugova','0383534213',900),
('6P','Alban','Maliqi','Sherbime','Kosove, Viti, Gjema Berisha','03835321451',500),
('7P','Besnik','Rama','Zv.Administrator','Kosove, Ferizaj, Rr Shkolla','03834321432',450),
('8P','Kastriot','Morina','Roje','Kosove, Istog, Ismet Munishi','03834937231',200),
('9P','Behar','Shaqiri','Bodyguard','Kosove, Podujeve, Robert Gajdiku','0441241242',300),
('10P','Arben','Ademi','Pastrues','Kosove, Prishtine, Rruga B','03833213123',250);


create table projekti.detajeLexuesit(
lexuesi_id integer,
VitiRegjistrimit integer,
DataeRegjistrimit date,
Shuma integer,
punetori_id varchar(30),
EndeiAntarsuar boolean,
foreign key(lexuesi_id) references lexuesi(lexuesi_id),
foreign key(punetori_id) references punetori(punetori_id)
);

insert into projekti.detajeLexuesit(lexuesi_id, VitiRegjistrimit, DataeRegjistrimit, Shuma, punetori_id, EndeiAntarsuar)
Values
(1, 2021, '2021-7-04', 15, '3P', true),
(2, 2020, '2020-1-03', 15, '7P', false),
(3, 2021, '2021-3-17', 15, '3P', true),
(4, 2021, '2021-9-19', 15, '3P', true),
(5, 2018, '2018-3-12', 15, '7P', false),
(6, 2021, '2021-12-19', 15, '3P', true),
(7, 2021, '2021-5-03', 15, '3P', true),
(8, 2021, '2021-11-28', 15, '3P', false),
(9, 2020, '2020-6-05', 15, '7P', false),
(10, 2021, '2021-12-12', 15, '3P', true);


create table projekti.libri(
libri_id varchar(10),
Titulli varchar(50),
Autori varchar(30),
Zhanri varchar(20),
NrKopjeve integer,
DataPranimit date,
punetori_id varchar(10),
primary key(libri_id),
foreign key(punetori_id) references punetori(punetori_id)
);

insert into projekti.libri(libri_id, Titulli, Autori, Zhanri, NrKopjeve, DataPranimit, punetori_id)
values
('1L', 'Ana Karenina', 'Leon Tolstoi','Drame', 1500, '2002-12-12', '3P'),
('2L', 'Lufta dhe Paqja', 'Leon Tolstoi', 'Histori', 1200, '2002-11-15', '4P'),
('3L', 'Kukulla', 'Ismail Kadare', 'Drame', 2000, '2002-9-09', '7P'),
('4L', 'Mrekullia', 'R.J Palacio', 'Drame', 241, '2003-1-31', '4P'),
('5L', 'Per ke bien kembanat', 'Ernest Heminway', 'Aventure', 300, '2004-2-04', '7P'),
('6L', 'Mbi origjinen e specieve', 'C.Darwin', 'Enciklopedi', 500, '2004-6-05', '3P'),
('7L', 'Rapsodi te nje poeme arbereshe', 'Jeronim De Rada', 'Drame', 2500, '2005-3-15', '7P'),
('8L', 'Juvenilia', 'Ndre Mjeda', 'Drame', 150, '2007-2-19', '3P'),
('9L', 'Tregtar flamujsh', 'Ernest Koliqi', 'Drame', 250, '2020-3-22', '7P'),
('10L', 'Qyteti i Fundit', 'Petro Marko', 'Aventure', 5000, '2002-3-21', '4P');


create table projekti.huazimi(
huazimi_id varchar(10),
libri_id varchar(10),
lexuesi_id integer,
DataHuazimit date,
AfatiKthimit date,
DataKthimit date,
punetori_id varchar(10),
Verejtje varchar(50),
primary key(huazimi_id),
foreign key(libri_id) references libri(libri_id),
foreign key(lexuesi_id) references lexuesi(lexuesi_id),
foreign key(punetori_id) references punetori(punetori_id)
);

insert into projekti.huazimi(huazimi_id, libri_id, lexuesi_id, DataHuazimit, AfatiKthimit, DataKthimit ,punetori_id, Verejtje)
values
('1H','5L', 3, '2020-10-15', '2020-10-30', '2020-10-29', '3P',null),
('2H','7L', 6, '2020-10-18', '2020-11-03', '2020-11-01','7P', null),
('3H','7L', 1, '2019-10-25', '2019-11-09', '2019-10-30', '3P', null),
('4H','9L', 7, '2019-11-11', '2019-11-26', '2019-11-20','3P', 'Demtim i librit'),
('5H','6L', 5, '2021-1-11', '2021-11-16', '2021-11-15', '7P', null),
('6H','3L', 4, '2021-11-03', '2021-11-18', '2021-11-20', '3P','Vonese ne kthim'),
('7H','4L', 2, '2019-11-25', '2019-12-10', '2019-12-05', '3P', null),
('8H','1L', 10, '2021-11-29', '2021-12-14', '2021-12-11', '7P', null),
('9H','2L', 9, '2021-11-30', '2021-12-15', '2021-12-14', '3P', null),
('10H','1L', 8, '2021-11-30', '2021-12-15', '2021-12-11', '3P', null),
('11H','2L', 3, '2020-11-15', '2020-11-30', '2020-11-29', '3P',null),
('12H','5L', 6, '2020-11-18', '2020-12-03', '2020-12-01','7P', null),
('13H','4L', 8, '2019-01-30', '2019-02-15', '2019-02-20', '3P','Vonese ne kthim'),
('14H','7L', 6, '2020-01-15', '2020-01-30', '2020-01-31', '3P','Vonese ne kthim'),
('15H','2L', 3, '2020-03-18', '2020-03-03', '2020-03-12','7P', 'Vonese ne kthim');


create table projekti.libratEDemtuar (
demtimi_id varchar(10),
libri_id varchar(10),
verejtje varchar(50),
data_regjistrimit datetime ,
punetori_id varchar(15),
primary key(demtimi_id),
foreign key(libri_id) references libri(libri_id),
foreign key(punetori_id) references punetori(punetori_id)
);

INSERT INTO projekti.libratEDemtuar(demtimi_id, libri_id,verejtje,data_regjistrimit,punetori_id)
VALUES
('1D','8L','Demtim i kopertines','2020-10-15','6P'),
('2D','9L','Demtim i kopertines','2020-11-16','6P'),
('3D','5L','Demtim i disa faqeve','2020-12-31','2P'),
('4D','3L','Demtim i kopertines','2021-05-07','6P'),
('5D','10L','Humbje e librit','2021-11-22','2P'),
('6D','2L','Demtim i disa faqeve','2020-12-16','2P'),
('7D','1L','Demtim i kopertines','2020-12-01','3P'),
('8D','3L','Demtim i disa faqeve','2020-2-12','6P'),
('9D','1L','Demtim i kopertines','2020-1-01','3P'),
('10D','7L','Demtim i disa faqeve','2021-12-16','6P');


create table projekti.arkiva(
arkiva_id varchar(10),
libri_id varchar(10),
lexuesi_id integer,
primary key(arkiva_id),
foreign key(libri_id) references libri(libri_id),
foreign key(lexuesi_id) references lexuesi(lexuesi_id)
);

insert into projekti.arkiva(arkiva_id, libri_id, lexuesi_id)
values
('1A', '8L', 7),
('2A', '4L', 4),
('3A', '5L', 1),
('4A', '3L', 10),
('5A', '5L', 5),
('6A', '7L', 3),
('7A', '9L', 6),
('8A', '9L', 8),
('9A', '5L', 2),
('10A','5L', 9);
