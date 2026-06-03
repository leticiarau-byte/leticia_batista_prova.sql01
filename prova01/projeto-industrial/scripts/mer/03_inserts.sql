use industria_db;

INSERT setores (nome_setor, localizacao_setor) VALUES 
('usinagem','rua A'),
('soldagem','rua B'),
('pintura','rua C'),
('montagem','rua D'),
('qualidade','rua E');

INSERT funcionarios (nome_funcionario, cpf_funcionario, cargo_funcionario, salario_funcionario, data_admissao_funcionario) VALUES 
('leticia', 12, 'chefe', 9000.00, '2020-02-01'),
('alanis', 34, 'funcionario', 1200.00, '2021-02-01'),
('barbara', 56, 'funcionario', 1300.00, '2022-02-01'),
('julia', 78, 'funcionario', 1400.00, '2023-02-01'),
('natalia', 910, 'funcionario', 1500.00, '2024-02-01'),
('valentin', 1112, 'lider', 1600.00, '2025-02-01'),
('carlos', 1314, 'lider', 2000.00, '2026-02-01'),
('marci', 1516, 'lider', 1650.00, '2020-02-01'),
('liandro', 1718, 'lider', 1000.00, '2021-02-01'),
('roberto', 1920, 'lider', 1250.00, '2022-02-01');

INSERT produtos_industriais (codigo_produto, nome_produto, descricao_produto, preco_fabricacao_produto) VALUES
(1,'livro A','bom enredo',50.0),
(2,'livro B','mal enredo',60.0),
(3,'livro C','ótimo enredo',120.0),
(4,'livro D','enredo triste',50.0),
(5,'livro E','enredo feliz',30.0),
(6,'livro F','lindo enredo',15.0),
(7,'livro G','feio enredo',25.0),
(8,'livro H','emocionante enredo',50.0),
(9,'livro I','decepcionante enredo',200.0),
(10,'livro J','maravilhoso enredo',70.0);

INSERT categoria_produto (nome_categoria) VALUES 
('Estruturas metálicas'),
('Parafusos'),
('Componentes hidráulicos'),
('Peças automotivas'),
('Chaves');

insert fornecedores (cnpj_fornecedor, telefone_fornecedor, cidade_fornecedor) VALUES
('123', '132','jaragua'),
('456', '654','curitiba'),
('789', '798','sao paulo'),
('321', '221','campinas'),
('654', '665','indaiatuba');

insert ordens_de_producao (data_producao_ordens, quant_produzida_ordens, status_ordens, tempo_estimado_ordens, tempo_real_ordens) VALUES
('2001-08-07', 800, 'bom', 15, 14),
('2002-08-07', 100, 'bom', 16, 17),
('2003-08-07', 700, 'bom', 17, 14),
('2004-08-07', 100, 'bom', 18, 1),
('2005-08-07', 600, 'bom', 19, 17),
('2006-08-07', 100, 'bom', 20, 41),
('2006-08-07', 500, 'bom', 21, 56),
('2007-08-07', 100, 'bom', 22, 10),
('2007-08-07', 400, 'bom', 23, 8),
('2008-08-07', 100, 'bom', 24, 1),
('2009-08-07', 300, 'bom', 25, 4),
('2010-08-07', 100, 'bom', 26, 84),
('2011-08-07', 200, 'bom', 27, 34),
('2012-08-07', 150, 'bom', 28, 19),
('2000-08-07', 90, 'bom', 29, 15);

insert controle_qualidade (data_qualidade, resultado_qualidade, obrservacoes_qualidade ) VALUES
('2001-01-02', 'Incrivel', 'qualidade extrema'),
('2002-01-02', 'Incrivel', 'qualidade extrema'),
('2002-01-02', 'Incrivel', 'qualidade extrema'),
('2000-01-02', 'deploravel', 'qualidade baixa'),
('2000-01-02', 'Incrivel', 'qualidade extrema'),
('2005-01-02', 'otimo', 'qualidade alta'),
('2005-01-02', 'Incrivel', 'qualidade extrema'),
('2000-01-02', 'ruim', 'qualidade ruim'),
('2007-01-02', 'pessimo', 'qualidade horrivel'),
('2009-01-02', 'tristes', 'qualidade pessimo');



