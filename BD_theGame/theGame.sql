create database theGame;
use theGame;

CREATE TABLE Jogador (
	cod_jogador int PRIMARY KEY,
    nome varchar(20),
    nickname varchar(10),
    sexo char(1),
    email varchar(20),
    dt_nasc date,
    pontuacao int,
    moedas int
);

CREATE TABLE Poder(
	cod_poder int PRIMARY KEY,
    habilidade varchar(20)
);

CREATE TABLE Cenario(
	cod_cenario int PRIMARY KEY,
    caracteristicas varchar(20),
    qtde_min_ponts int
);

CREATE TABLE Adquire_poder(
	cod_aquisicao int PRIMARY KEY,
    dt_hora_aquisicao DATETIME,
    cod_jogador int,
    cod_poder int,
	FOREIGN KEY(cod_jogador) REFERENCES Jogador (cod_jogador),
    FOREIGN KEY(cod_poder) REFERENCES Poder (cod_poder)
);

CREATE TABLE Partida(
	cod_partida int PRIMARY KEY,
    data_hora_inicio DATETIME,
    data_hora_termino DATETIME,
    pontos_obtidos int,
    cod_jogador int,
    cod_cenario int,
	FOREIGN KEY(cod_jogador) REFERENCES Jogador (cod_jogador),
    FOREIGN KEY(cod_cenario) REFERENCES Cenario (cod_cenario)
);

insert into Jogador(cod_jogador, nome, nickname, sexo, email, dt_nasc, pontuacao, moedas)
values 
	(1, "Roberto Carlos", "robcar", "M", "robcar@gmail.com", '2000-08-07', 3000, 3000),
	(2, "Maria Clara", "marcla", "F", "marcla@gmail.com", '1995-05-07', 5000, 500),
    (3, "João Marcos", "jomar", "M", "jomar@gmail.com", '1998-01-15', 1000, 5000),
    (4, "Karina Jones", "kjones", "F", "kjones@yahoo.com", '1999-03-05', 2000, 8000);

insert into Poder(cod_poder, habilidade)
values
	(1, "Choque do trovão"),
    (2, "Bola elétrica"),
    (3, "Ataque rápido"),
    (4, "Cauda de ferro"),
    (5, "Teia Elétrica"),
    (6, "Jato de Bolhas"),
    (7, "Redomoinho");

insert into Cenario(cod_cenario, caracteristicas, qtde_min_ponts)
value
	(1, "Terrestre", 1000),
    (2, "Aquatico", 2500),
    (3, "Espacial", 5000);
    
insert into Adquire_poder(cod_aquisicao, cod_jogador, cod_poder, dt_hora_aquisicao)
value
	(1, 1, 1, '2023-06-20 19:00:00'),
    (2, 1, 2, '2023-06-21 10:00:00'),
    (3, 2, 1, '2023-06-21 11:00:00'),
    (4, 2, 3, '2023-06-23 13:00:00'),
    (5, 2, 4, '2023-06-24 15:00:00'),
    (6, 3, 4, '2023-06-25 12:00:00'),
    (7, 3, 5, '2023-06-26 08:00:00'),
    (8, 4, 6, '2023-06-26 12:00:00');

insert into Partida(cod_partida, data_hora_inicio, data_hora_termino, pontos_obtidos, cod_jogador, cod_cenario)
value
	(1,  '2023-06-27 19:00:00',  '2023-06-27 20:00:00', 300, 1, 1),
    (2,  '2023-06-27 19:30:00',  '2023-06-27 21:00:00', 500, 2, 1),
    (3,  '2023-06-28 08:00:00',  '2023-06-28 12:00:00', 200, 3, 1),
    (4,  '2023-06-28 08:30:00',  '2023-06-28 11:30:00', 200, 1, 2);

Select nome, nickname, pontuacao
FROM jogador
WHERE email like '%@gmail%';

Select *
FROM partida
WHERE TIME (data_hora_inicio) >= '18:00:00';

Select *
FROM jogador
WHERE pontuacao > 1000
	AND moedas > 1000;
    
Select nome, nickname
FROM jogador
WHERE pontuacao >= 2500;

Select *
FROM poder
WHERE habilidade like '%trovão%' or habilidade like '%elétrica%';
