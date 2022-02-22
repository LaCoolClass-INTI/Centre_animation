CREATE TABLE ROLE (
id_role int IDENTITY PRIMARY KEY,
nom_role varchar(10),
description varchar(100)
);

CREATE TABLE Adresse (
id_adresse int IDENTITY PRIMARY KEY,
lieu varchar(30),
rue varchar(30) NOT NULL,
cp int NOT NULL,
ville varchar(20) NOT NULL
);

CREATE TABLE PERSONNE (
id_personne int IDENTITY PRIMARY KEY,
nom varchar(20) NOT NULL,
prenom varchar(20) NOT NULL,
sexe varchar(10),
date_naissance date,
Lieu_naissance varchar(30),
email varchar(40) unique,
mdp varchar(40),
id_role int,
id_adresse int,
FOREIGN KEY (id_role) REFERENCES ROLE,
FOREIGN KEY (id_lieu) REFERENCES LIEU
);

Create table animation (
id_animation int IDENTITY PRIMARY KEY,
intitule varchar (20) not null,
cout_semestriel int NOT NULL,
[public] varchar (20) check ([public] IN ('enfant', 'adulte', 'tout_public')),
);

create table programme (
id_animation int,
id_centre int,
id_personne int, 
primary key (id_animation, id_centre, id_peronne),
foreign key id_animation REFERENCES animation,
foreign key id_centre REFERENCES centre,
foreign key id_peronne REFERENCES Personne,
);

Create table centre(
id_centre int indentity primary key,
id_adresse int,
nom varchar (20),
foreign key id_adresse REFERENCES Adresse
);