CREATE DATABASE ORFANATO
DROP TABLE MATRIMONIO
CREATE TABLE MATRIMONIO
(Id_Padres int Primary key NOT NULL,
Apellidos_Padres varchar(50)NOT NULL,
Ciudad varchar(30) NOT NULL,
Direccion varchar(50) NOT NULL,
Telefono_movil int NOT NULL,
Telefono_Convencional int NOT NULL,
Correo varchar(40) NOT NULL);
DROP TABLE NINO
CREATE TABLE NINO
(ID_niño int PRIMARY KEY NOT NULL,
Nombres varchar(40) NOT NULL,
Edad int NOT NULL,
Genero VARCHAR(1) NOT NULL,
fecha_Nacimiento date NOT NULL,
Ciudad_Nacimiento varchar(20));
DROP TABLE ADOPCION
CREATE TABLE ADOPCION
(Id_Adopción int PRIMARY KEY NOT NULL,
Id_Familia int NOT NULL,
Familia varchar(50) NOT NULL,
Ciudad_Mat varchar(30)NOT NULL,
Direccion varchar (50)NOT NULL,
Telefono int NOT NULL,
Id_niño int NOT NULL,
Nombre_Adoptado varchar(50)NOT NULL);

Insert into MATRIMONIO(Id_Padres,Apellidos_Padres,Ciudad,Direccion,Telefono_movil,Telefono_Convencional,Correo)values
(1,'Macías Cedeño','Manta','El palmar, calle 16 avenida 35',0991983918,023437684,'macias_andes1@gmail.com'),
(2,'Mero Cedeño','Portoviejo','El palmar, calle 16 avenida 38',0956784315,023378947,'mero_cede@gmail.com'),
(3,'Vera Pico','Guayaquil','Samborondon, calle 116 avenida 3',0999653215,025589762,'vera_p1@gmail.com'),
(4,'Benitez Macías','Quito','Carapungo, calle 75, avenida 12',0976484326,029987943,'benitez_m@gmail.com'),
(5,'Macías Mora','Manta','Las cumbres, calle 114 avenida 5',0922454389,028753786,'macias_mora@gmail.com'),
(6,'Pico Patiño','PortoViejo',' calle 104, avenida 33',0988564350,023437684,'pico0307@gmail.com'),
(7,'Zambrano López','Manta','Santa Martha, calle 13 avenida 10',0965443267,027896543,'zambrano_l1@gmail.com'),
(8,'Granda Farías','Sucre','24 de Mayo, calle 17',0987665422,027897643,'granda_farias@gmail.com'),
(9,'Chinga Menendez','Manta','Santa Martha, calle 12 avenida 10',0979856322,025673124,'chinga_m@gmail.com'),
(10,'Mera Macías','Quito','llano Grande, calle 107',0987653372,023356773,'mera_macias@gmail.com');
Insert into NINO(ID_niño,Nombres,Edad,Genero,fecha_Nacimiento,Ciudad_Nacimiento)VALUES
(1,'Mateo',3,'M','10-03-2017','Manta'),
(2,'DARLA',5,'F','15-08-2015','Portoviejo'),
(3,'Tiago',8,'M','09-08-2011','Sucre'),
(4,'Miguel',3,'M','24-02-2017','Guayaquil'),
(5,'Vanessa',8,'f','17-06-2012','Manta'),
(6,'Alexis',5,'M','07-03-2015','Manta'),
(7,'Lexany',3,'f','01-01-2017','Manta'),
(8,'Jean',4,'M','19-12-2015','Manta'),
(9,'Mariana',6,'f','01-06-2014','Guayaquil'),
(10,'Lexie',2,'M','15-04-2018','Quito');
Insert into ADOPCION(Id_Adopción,Id_Familia,Familia,Ciudad_Mat,Direccion,Telefono,Id_niño,Nombre_Adoptado) VALUES
(1,5,'Macías Mora','Manta','Las cumbres, calle 114 avenida 5',0922454389,7,'Lexany'),
(2,2,'Mero Cedeño','Portoviejo','El palmar, calle 16 avenida 38',0956784315,3,'Tiago'),
(3,1,'Macías Cedeño','Manta','El palmar, calle 16 avenida 35',0991983918,5,'Vanessa'),
(4,3,'Vera Pico','Guayaquil','Samborondon, calle 116 avenida 3',0999653215,2,'DARLA'),
(5,9,'Chinga Menendez','Manta','Santa Martha, calle 12 avenida 10',0979856322,6,'Alexis'),
(6,7,'Zambrano López','Manta','Santa Martha, calle 13 avenida 10',0965443267,4,'Miguel'),
(7,6,'Pico Patiño','PortoViejo',' calle 104, avenida 33',0988564350,1,'Mateo'),
(8,4,'Benitez Macías','Quito','Carapungo, calle 75, avenida 12',0976484326,9,'Mariana')
create login usuarioadmin with password='123456'
create user  reporteOrfanato for login usuarioadmin
create role reporteusuario
alter role reporteusuario add member[reporteOrfanato]
grant select to reporteusuario


