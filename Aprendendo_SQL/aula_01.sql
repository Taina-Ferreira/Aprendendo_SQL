create table tb_clientes (
    id_cliente int primary key,
    first_name varchar (60) not null,
    last_name varchar (60) not null,
    email varchar (250) not null,
    gender varchar (6),
    ip_address CHAR (15),
    city VARCHAR (60),
    country varchar (60) not null,

    check (gender in ('male','female')),
    check (email like '%@%.__%')
);

---------------------------------------------------------

create table tb_movies(
    id_movie int primary key,
    movie_title VARCHAR (50),
    movie_gender varchar (50),
    movie_year INT
)
select * from tb_movies;

----------------------------------------------------------

drop table tb_watch_movies;

select c.id_cliente, m.id_movie, dateadd(DAY,rand() * 100,cast('2020-08-12' as date)) as dt_watch, cast(35.5 as money) as Price into tb_watch_movies
  from (
      select top 150 id_cliente
        from tb_clientes 
       order by newid()
  ) c,
 (
select top 1 *
  from tb_movies
  order by newid()
) m;


insert into tb_watch_movies
select c.id_cliente, m.id_movie, dateadd(DAY,rand() * 100,cast('2020-08-12' as date)) as dt_watch, cast(rand() * 10 + 30 as money) as Price
  from (
      select top 50 id_cliente
        from tb_clientes 
       order by newid()
  ) c,
 (
select top 1 id_movie
  from tb_movies
  order by newid()
) m;