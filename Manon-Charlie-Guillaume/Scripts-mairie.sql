CREATE TABLE ROLE (
id_role int IDENTITY PRIMARY KEY,
nom_role varchar(10),
description varchar(100)
);

CREATE TABLE LIEU(
id_lieu int IDENTITY PRIMARY KEY,
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
id_lieu int,
FOREIGN KEY (id_role) REFERENCES ROLE,
FOREIGN KEY (id_lieu) REFERENCES LIEU
);