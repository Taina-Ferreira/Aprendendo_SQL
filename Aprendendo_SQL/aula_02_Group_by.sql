-- contando quantidade de linhas da tabela 
select count (*) from tb_watch_movies
-- contar clientes únicos 
select count (distinct id_cliente) from tb_watch_movies
-- quantos filmes foram assistidos 
select count (distinct id_movie) from tb_watch_movies
-- Quantos filmes cada pessoa assistiu?
select id_cliente, count (*) as Qtd_idas_cinema, count (distinct id_movie) as qtd_filmes_assistidos from tb_watch_movies group by id_cliente
-- Quem assistiu mais filmes?
select id_cliente, count (*) as Qtd_idas_cinema, count (distinct id_movie) as qtd_filmes_assistidos from tb_watch_movies group by id_cliente order by Qtd_idas_cinema desc
-- Quem mais gastou no cinema?
select id_cliente, SUM (price) as total_price from tb_watch_movies group by id_cliente ORDER by total_price DESC
-- Valor de ingresso mais caro
select id_cliente, max (price) as maior_valor_pago from tb_watch_movies group by id_cliente order by maior_valor_pago DESC
--Valor de ingresso mais barato
select ROUND(MIN(price),2) as menor_valor_pago from tb_watch_movies  
--Média de valor pago
select id_cliente, AVG(price) as media_ingresso, count (*) as qtd_idas_cinema from tb_watch_movies group by id_cliente order by media_ingresso DESC