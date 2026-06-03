use industria_db;

    -- Liste todos os setores cadastrados na fábrica.
select * from setores;

    -- Liste o nome, cargo e salário de todos os funcionários.
select nome_funcionario, cargo_funcionario, salario_funcionario from funcionarios;

    -- Exiba o código, nome e preço de fabricação de todos os produtos cadastrados.
select codigo_produto, nome_produto, preco_fabricacao_produto from produtos_industriais;

    -- Exiba apenas o nome e a quantidade em estoque dos produtos.
select  nome_produto, quant_estoque_produto from produtos_industriais;

    -- Liste os funcionários admitidos após uma determinada data informada pelo professor.
select nome_funcionario as nome, data_admissao_funcionario as data from funcionarios
where data_admissao_funcionario >= '2023-01-02';

    -- Exiba todos os produtos cuja quantidade em estoque seja superior a 100 unidades.
select  nome_produto, quant_estoque_produto from produtos_industriais
where quant_estoque_produto > 100 ;

    -- Liste todos os fornecedores localizados em uma cidade específica.
select cnpj_fornecedor,cidade_fornecedor from fornecedores
where cidade_fornecedor = 'sao paulo';

    -- Exiba os produtos cujo preço de fabricação esteja entre R$ 50,00 e R$ 500,00.
select  nome_produto, preco_fabricacao_produto from produtos_industriais
where preco_fabricacao_produto > 50 and preco_fabricacao_produto <500 ;
    -- Liste os funcionários cujo salário seja superior a R$ 3.000,00.
select nome_funcionario as nome, salario_funcionario  from funcionarios
where salario_funcionario > 3000;

    -- Liste os funcionários cujo cargo contenha a palavra "Operador".
select nome_funcionario as nome, salario_funcionario  from funcionarios
where salario_funcionario > 3000;

    -- Exiba todos os fornecedores que possuem telefone cadastrado.
select cnpj_fornecedor from fornecedores
where telefone_fornecedor <> 0;

    -- Exiba os produtos cuja descrição contenha uma palavra ou trecho informado pelo professor.
select  nome_produto, descricao_produto from produtos_industriais
where descricao_produto like '%bom%';

    -- Exiba todos os produtos ordenados pelo nome em ordem alfabética.
select  nome_produto from produtos_industriais
order by nome_produto desc ; 

    -- Liste todos os produtos ordenados pelo preço de fabricação em ordem decrescente.
    -- Exiba as ordens de produção com status "Concluída".
    -- Exiba a quantidade total de funcionários cadastrados na empresa.
    -- Apresente o salário médio dos funcionários.
    -- Exiba o menor preço de fabricação entre todos os produtos.
    -- Apresente a quantidade de produtos cadastrados em cada categoria.
    -- Exiba a quantidade de ordens de produção cadastradas por funcionário responsável.
    -- Liste o nome dos funcionários e o nome do setor ao qual cada funcionário pertence.
    -- Exiba o nome dos produtos juntamente com o nome de suas respectivas categorias.
    -- Liste o nome do produto, o nome do fornecedor principal e o preço de fabricação do produto.
    -- Exiba o(s) produto(s) que possuem o maior preço de fabricação cadastrado.
    -- Liste os funcionários cujo salário seja superior ao salário médio dos funcionários da empresa.
