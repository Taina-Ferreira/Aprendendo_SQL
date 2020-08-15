CREATE TABLE Tabela_de_vendedores
(
    Matricula CHAR (5),
    Nome varchar (100),
    Percentual_comissao FLOAT
)
DROP TABLE Tabela_de_vendedores
SELECT * from Tabela_de_vendedores

create table Cadastro_de_Produtos
(
    Codigo_Produto varchar (10),
    Nome_produto VARCHAR (50),
    Embalagem VARCHAR (50),
    Tamanho VARCHAR (50),
    Sabor VARCHAR (50),
    Preco_lista SMALLMONEY not NULL
)

INSERT into Tabela_de_vendedores
(
    Matricula,
    Nome,
    Percentual_comissao
)
values 
( '00233','Nome', 10);


SELECT * from Tabela_de_vendedores;

update Tabela_de_vendedores
set Nome = 'José Geraldo da Fonseca',
    Percentual_comissao = 0.10
where Matricula = '00233';

INSERT into Tabela_de_vendedores
(
    Matricula,
    Nome,
    Percentual_comissao
)
values 
( '00235','Márcio Almeida Silva', 0.08)

INSERT into Tabela_de_vendedores
(
    Matricula,
    Nome,
    Percentual_comissao
)
values 
( '00236','Cláudia Morais', 8.0/100)

DELETE Tabela_de_vendedores WHERE Matricula= '00236'

--Inserindo novos dados a tabela de vendedores 

INSERT into Tabela_de_vendedores
(
    Matricula,
    Nome,
    Percentual_comissao
)
values 
( '00237','Roberta Martins', 0.11)

INSERT into Tabela_de_vendedores
(
    Matricula,
    Nome,
    Percentual_comissao
)
values 
( '00238','Pericles Alves', 0.07)

UPDATE Tabela_de_vendedores SET
Percentual_comissao = 0.11
WHERE Matricula = '00238'

update Tabela_de_vendedores set
Nome = 'José Geraldo da Fonseca Junior'
WHERE Matricula = '00233'

DELETE Tabela_de_vendedores
WHERE Matricula = '00233'

