create table Cadastro_clientes
(
    cpf CHAR (11),
    nome VARCHAR (50),
    Rua VARCHAR (50),
    bairro VARCHAR (50),
    complemento VARCHAR (70),
    cidade VARCHAR (50),
    estado CHAR (2),
    cep char (8),
    data_de_nascimento date,
    idade INT,
    sexo CHAR (6),
    Limite_credito money,
    Volume_Minimo float,
    Primeira_compra BIT
)
select * from Cadastro_clientes