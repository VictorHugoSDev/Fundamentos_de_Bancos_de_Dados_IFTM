use empresa;

-- Exercicio pg.1

-- Selecionar o nome e o sexo dos funcionários que são desenvolvedores
Select f.nome, f.sexo
from funcionario f,
	cargo c
WHERE
	f.cod_cargo = c.cod_cargo
    and c.nome="Desenvolvedor";
    
-- Liste o nome do funcionário e a sigla do departamento de cada funcionário.
Select f.nome, d.sigla
from funcionario f,
	departamento d
WHERE
	f.cod_depto = d.cod_depto;
    
-- Liste o nome, sexo e salário de cada funcionario contratado no ano de 2009.
Select f.nome, f.sexo, c.salario
from funcionario f,
	cargo c
WHERE
	f.cod_cargo = c.cod_cargo
    and YEAR(f.data_adm) = 2009;

-- Liste o nome, data de admissão e nome do departamento dos funcionários do sexo feminino.
Select f.nome, f.data_adm, d.nome
from funcionario f,
	departamento d
WHERE
	f.cod_depto = d.cod_depto
	and f.sexo = "F";
-- Liste os dados dos funcionários que trabalham no departamento de informática ou financeiro.
Select f.*, d.nome
from funcionario f,
	departamento d
WHERE
	f.cod_depto = d.cod_depto
    AND d.nome IN ('Informática', 'Financeiro');

-- Liste o nome dos funcionarios, nome do cargo, salario e nome do departamento dos funcionários de nível JR contratados no ano de 2008.
Select f.nome, c.nome, c.salario, d.nome
from funcionario f,
	cargo c,
    departamento d
WHERE f.cod_depto = d.cod_depto
	and f.cod_cargo = c.cod_cargo
	and c.nivel = "JR"
	and YEAR(f.data_adm) = 2008;

-- Exercicio pg.2

-- Selecione o maior salário do departamento Pessoal
Select max(c.salario)
from funcionario f,
	cargo c,
	departamento d
WHERE f.cod_depto = d.cod_depto
	and f.cod_cargo = c.cod_cargo
	and d.nome = "Pessoal";

-- Listar o total pago em salários para funcionários do departamento financeiro
Select sum(c.salario)
from funcionario f,
	cargo c,
	departamento d
WHERE f.cod_depto = d.cod_depto
	and f.cod_cargo = c.cod_cargo
	and d.nome = "Financeiro";

-- Listar a quantidade de funcionários do departamento de informática
Select count(f.cod_func)
from funcionario f,
	departamento d
WHERE f.cod_depto = d.cod_depto
	and d.nome = "Informática";

-- Listar o menor salário de funcionários do departamento de informática
Select min(c.salario)
from funcionario f,
	cargo c,
	departamento d
WHERE f.cod_depto = d.cod_depto
	and f.cod_cargo = c.cod_cargo
	and d.nome = "Informática";

-- Exercicio pg.3

-- Selecione o maior salário,menor salário, média e soma dos salários dos funcionários do departamento de Informática
Select max(c.salario), min(c.salario), avg(c.salario), sum(c.salario)
from funcionario f,
	cargo c,
	departamento d
WHERE f.cod_depto = d.cod_depto
	and f.cod_cargo = c.cod_cargo
	and d.nome = "Informática";

-- Listar a quantidade  de funcionárias do sexo feminino que trabalham no departamento Financeiro ou Pessoal
Select count(f.cod_func)
from funcionario f,
	cargo c,
	departamento d
WHERE f.cod_depto = d.cod_depto
	and f.cod_cargo = c.cod_cargo
	and f.sexo = "F"
	and d.nome IN ('Informática', 'Financeiro');

-- Selecionar a média dos salários dos funcionários contratados no primeiro semestre do ano de 2008
Select avg(c.salario)
from funcionario f,
	cargo c,
	departamento d
WHERE f.cod_depto = d.cod_depto
	and f.cod_cargo = c.cod_cargo
	and YEAR(f.data_adm) = 2008
	and MONTH(f.data_adm) BETWEEN 1 AND 6;

-- Listar a quantidade de funcionários que ganham abaixo de R$ 2000
Select count(f.cod_func)
from funcionario f,
	cargo c,
	departamento d
WHERE f.cod_depto = d.cod_depto
	and f.cod_cargo = c.cod_cargo
	and c.salario < 2000;