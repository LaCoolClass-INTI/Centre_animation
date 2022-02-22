Create table MAIRIE (
id_Mairie int primary key
);

Create table ANIMATION (
id_Animation int primary key ,
id_Mairie int ,
cout_Semestrielle int not null,
public varchar(30) ,
check public in ('enfants','adulte','tout public'),
foreign key (id_Mairie) references MAIRIE (id_Mairie)
);

Create table CENTRE (
id_Centre int primary key,
id_Membre int ,
nom varchar(30) not null,
adresse varchar(30) not null,
arrondissement varchar(30) not null,
foreign key (id_Membre) references CENTRE(id_Membre)
);

Create table Centre_Animation(
id_Animation int ,
id_Centre int,
id_Membre int,
primary key (id_Animation , id_Centre),
foreign key (id_Animation) references ANIMATION(id_Animation),
foreign key (id_Centre) references CENTRE(id_Centre),
foreign key (id_Membre) references MEMBRE(id_Membre)

);

create table MEMBRE (
id_Membre int primary key,
nom varchar(30) not null,
prenom varchar(30) not null,
date_Naissance date not null,
type varchar(30) not null,
check type in ('enfants','adulte','tout public')
);