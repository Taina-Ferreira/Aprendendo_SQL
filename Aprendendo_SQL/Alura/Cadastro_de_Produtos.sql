SELECT * from Cadastro_de_produtos
-- Inserindo dados na tabelas 
INSERT into Cadastro_de_Produtos
(
    Codigo_Produto,
    Nome_produto,
    Embalagem,
    Tamanho,
    Sabor,
    Preco_lista
)
VALUES
(
    '1040107', 'Light - 350 ml - Melância', 'Lata', '350 ml', 'Melância', 4.56 
)
INSERT into Cadastro_de_Produtos
(
    Codigo_Produto,
    Nome_produto,
    Embalagem,
    Tamanho,
    Sabor,
    Preco_lista
)
VALUES
(
    '1037797', 'Clean - 2 litros - laranja', 'PET', '2 Litros', 'Laranja', 16.01 
)
INSERT into Cadastro_de_Produtos
(
    Codigo_Produto,
    Nome_produto,
    Embalagem,
    Tamanho,
    Sabor,
    Preco_lista
)
VALUES
(
    '1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31 
)

SELECT * from Cadastro_de_Produtos

--Alterando dados na tabela 
UPDATE Cadastro_de_Produtos SET
Embalagem  = 'lata',
Preco_lista = 2.46
where Codigo_Produto ='544931'

UPDATE Cadastro_de_Produtos SET
Embalagem  = 'Garrafa'
where Codigo_Produto ='1078680'

INSERT into Cadastro_de_Produtos
(
    Codigo_Produto,
    Nome_produto,
    Embalagem,
    Tamanho,
    Sabor,
    Preco_lista
)
 VALUES
 ('1004327', 'Videira do Campo - 1,5 Litros - Melância','PET', '1,5 Litros', 'Melancia', 19.51),
 ('1088126', 'Linha Citros - 1 Litro - Limão','PET', '1 Litro', 'Limao', 7.00 )

DELETE Cadastro_de_Produtos
WHERE Codigo_Produto = '1088126'

