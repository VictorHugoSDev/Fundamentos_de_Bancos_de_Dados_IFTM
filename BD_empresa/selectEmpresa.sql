use empresa;

Select cod_cargo, cod_depto, nome
FROM funcionario
WHERE YEAR(data_adm) = 2008 
 AND sexo = 'F';
 
Select nome
FROM cargo
WHERE salario BETWEEN 2000 AND 5000;

Select nome, salario
FROM cargo
WHERE salario > 3000;

Select *
from funcionario
WHERE nome = 'Fernando Silva';

Select *
from funcionario
WHERE nome like '%eira';

Select *
from funcionario
WHERE nome like '%Silv%';

Select nome, data_adm
from funcionario
WHERE nome like 'P%'
	OR nome like 'M%';

Select *
from funcionario
WHERE nome not like 'J%'
	AND nome not like 'G%';
    
Select cod_depto, sigla
from departamento
WHERE nome IN ('Informática', 'Financeiro');

Select cod_func, nome
from funcionario
WHERE sexo != 'F'
	and cod_depto NOT IN(1, 3); 
    
Select cod_cargo, salario
from cargo
WHERE nome IN ('atendente', 'contador', 'desenvolvedor');
