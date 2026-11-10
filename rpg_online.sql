create database rpg_online;
use rpg_online;

create table Usuarios
(
Usuario_Id int primary key auto_increment,
EMAil varchar(50) not null,
Senha varchar(12) not null
);

create table Personagens
(
Personagem_Id int primary key auto_increment,
Nome_Personagem varchar(20) not null,
Usuario_Id int not null,
Classe_Id int not null,

Foreign key(Usuario_Id) references Usuarios(Usuario_Id),
Foreign key(Classe_Id) references Classes(Classe_Id) 
);

create table Classes
(
Classe_Id int primary key auto_increment,
Nome varchar(30) not null,
Descricao varchar(200) not null
);

create table Habilidades
(
Habilidade_Id int primary key auto_increment,
Nome varchar(40) not null
);

create table Classes_Habilidades
(
Classe_Id int not null,
Habilidade_Id int not null,

Foreign key(Classe_Id) references Classes(Classe_Id),
Foreign key(Habilidade_Id) references Habilidades(Habilidade_Id),

primary key(Classe_Id, Habilidade_Id)
);