USE industria_db;

DROP table setores;
CREATE TABLE setores (
    id_setor INT PRIMARY KEY AUTO_INCREMENT,
    nome_setor VARCHAR(10) NOT NULL,
    localizacao_setor VARCHAR(100)
);


CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome_funcionario VARCHAR(200) NOT NULL,
    cpf_funcionario VARCHAR(14) UNIQUE NOT NULL,
    cargo_funcionario VARCHAR(200),
    salario_funcionario DECIMAL(6,2),
    data_admissao_funcionario DATE,
    id_setor INT,

    foreign key(id_setor) references setores(id_setor)
);

CREATE TABLE controle_qualidade (
    id_qualidade INT PRIMARY KEY AUTO_INCREMENT,
    data_qualidade DATE,
    resultado_qualidade VARCHAR(200),
    obrservacoes_qualidade VARCHAR(200)
);


CREATE TABLE ordens_de_producao (
    id_ordens INT PRIMARY KEY AUTO_INCREMENT,
    data_producao_ordens DATE,
    quant_produzida_ordens INT, 
    status_ordens VARCHAR(100),
    tempo_estimado_ordens INT,
    tempo_real_ordens INT,
    id_setor INT,
    id_funcionario INT,
    id_qualidade INT,

    foreign key(id_setor) references setores(id_setor),
    foreign key(id_funcionario) references funcionarios(id_funcionario),
    foreign key(id_qualidade) references controle_qualidade(id_qualidade)
);

CREATE TABLE produtos_industriais (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    codigo_produto INT UNIQUE NOT NULL,
    nome_produto varchar(200) NOT NULL,
    descricao_produto VARCHAR(200),
    preco_fabricacao_produto DECIMAL(6,2),
    quant_estoque_produto INT
);

CREATE TABLE fornecedores (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    cnpj_fornecedor varchar(50) UNIQUE NOT NULL,
    telefone_fornecedor varchar(11),
    cidade_fornecedor varchar(100)
);

CREATE TABLE categoria_produto (
    nome_categoria VARCHAR(100) NOT NULL,
    id_fornecedor INT,
    id_produto INT,

    foreign key(id_fornecedor) references fornecedores(id_fornecedor),
    foreign key(id_produto) references produtos_industriais(id_produto)
);


