CREATE TABLE CENTRE (

	id int IDENTITY PRIMARY KEY,
	nom varchar(50) NOT NULL,
	rue varchar(50) NOT NULL,
	codePostal int NOT NULL,
	ville varchar(50) NOT NULL,
	arrondissement varchar(50) NOT NULL

)

CREATE TABLE MEMBRE (

	id int IDENTITY PRIMARY KEY,
	nom varchar(50) NOT NULL,
	prenom varchar(50) NOT NULL,
	dateNaissance date NOT NULL,
	rue varchar(50) NOT NULL,
	codePostal int NOT NULL,
	ville varchar(50) NOT NULL,
	id_centre int foreign key (id_centre) references CENTRE(id)

)


CREATE TABLE ANIMATION (

	id int IDENTITY PRIMARY KEY,
	intitule varchar(50) NOT NULL,
	coutSemestriel float NOT NULL,
	publicCible varchar(50) check (publicCible in ('enfant', 'adulte', 'tout public'))

)

CREATE TABLE ACTIVITE (

	id int IDENTITY PRIMARY KEY,
	dateDebut datetime NOT NULL,
	heureDebut datetime NOT NULL,
	id_centre int foreign key (id_centre) references CENTRE(id),
	id_membre int foreign key (id_membre) references MEMBRE(id),
	id_animation int foreign key (id_animation) references ANIMATION(id), 

)

