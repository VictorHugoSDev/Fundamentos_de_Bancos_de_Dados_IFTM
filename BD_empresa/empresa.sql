create database empresa;
use empresa;

CREATE TABLE Cargo (
	cod_cargo int PRIMARY KEY,
    nome varchar(20),
    nivel char(2),
    salario numeric(7,2)
);

CREATE TABLE Departamento (
	cod_depto int PRIMARY KEY,
    nome varchar(20),
    sigla char(3)
);

CREATE TABLE Funcionario (
	cod_func int PRIMARY KEY,
    nome varchar(40),
    data_adm date,
    sexo char (1),
    cod_cargo int,
    cod_depto int,
    FOREIGN KEY(cod_cargo) REFERENCES Cargo (cod_cargo),
    FOREIGN KEY(cod_depto) REFERENCES Departamento (cod_depto)
);

insert into cargo(cod_cargo, nome, nivel, salario)
values (1, "Analista de Sistemas", "JR", 1500.00);
insert into cargo(cod_cargo, nome, nivel, salario)
values (2, "Desenvolvedor", "JR", 2100.00);
insert into cargo(cod_cargo, nome, nivel, salario)
values (3, "Desenvolvedor", "PL", 3200.00);
insert into cargo(cod_cargo, nome, nivel, salario)
values (4, "Atendente", "NA", 980.00);
insert into cargo(cod_cargo, nome, nivel, salario)
values (5, "Contador", "NA", 4500.00);

insert into departamento(cod_depto, nome, sigla)
values (1, "Informática", "INF");
insert into departamento(cod_depto, nome, sigla)
values (2, "Financeiro", "FIN");
insert into departamento(cod_depto, nome, sigla)
values (3, "Pessoal", "RH");

insert into funcionario (cod_func, nome, data_adm, sexo, cod_cargo, cod_depto) values
(1, 'João Nogueira', '2008-03-12', 'M', 1, 1),
(2, 'Maria Silveira', '2008-03-20', 'F', 4, 3),
(3, 'Marcos Silva', '2008-07-05', 'M', 2, 1),
(4, 'Gabriel Pereira', '2008-07-10', 'M', 5, 2),
(5, 'Carla Junqueira', '2008-08-15', 'F', 1, 1),
(6, 'Janete Rosa', '2008-10-01', 'F', 4, 3),
(7, 'Fernando Silva', '2009-02-03', 'M', 3, 1),
(8, 'Marília Vieira', '2009-02-05', 'F', 2, 1),
(9, 'Patrícia Chaves', '2009-03-01', 'F', 5, 2),
(10, 'João Marques', '2008-03-15', 'M', 3, 1);
