use Filmes;

/*Buscar o nome e ano dos filmes*/
select Nome,Ano 
from Filmes;

/*Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano*/
select Nome,Ano 
from Filmes order by ano asc;

-- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select * from Filmes 
where nome='de volta para o futuro';

--4 - Buscar os filmes lançados em 1997
select * from Filmes 
where ano = 1997; 

-- Buscar os filmes lançados APÓS o ano 2000
select * from Filmes
where ano > 1997 order by ano asc; 

--Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes 
where Duracao > 100 and  Duracao <150;

-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) as Quantidade  
FROM Filmes 
GROUP BY Ano ORDER BY Quantidade desc;

--Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
Select PrimeiroNome,UltimoNome,Genero  
from Atores where Genero='M';

--Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
Select PrimeiroNome,UltimoNome,Genero  f
rom Atores where Genero='F' order by PrimeiroNome;

--Buscar o nome do filme e o gênero
Select F.Nome,GE.Genero from Filmes F
inner join FilmesGenero G on G.IdFilme= F.Id 
inner join Generos GE on GE.Id=G.IdGenero;

--Buscar o nome do filme e o gênero do tipo "Mistério"
Select F.Nome,GE.Genero from Filmes F
inner join FilmesGenero G on G.IdFilme= F.Id 
inner join Generos GE on GE.Id=G.IdGenero
where  GE.Genero='Mistério';

-- Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
Select F.Nome,PrimeiroNome,UltimoNome,E.Papel from Atores A
inner join ElencoFilme E on E.IdAtor=A.Id 
inner join Filmes F on F.Id=E.IdFilme;
