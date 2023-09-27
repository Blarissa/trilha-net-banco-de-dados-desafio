-- Buscar o nome e ano dos filmes
select Nome, Ano from Filmes

-- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano from Filmes order by Ano

-- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro'

-- Buscar os filmes lan�ados em 1997
select * from Filmes where Ano = 1997

-- Buscar os filmes lan�ados AP�S o ano 2000
select * from Filmes where Ano > 2000

-- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao 

-- Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, count(*) Quantidade from Filmes group by Ano order by Quantidade desc

--  Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome from Atores where Genero = 'M'

-- Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome

-- Buscar o nome do filme e o g�nero
select Filmes.Nome, Generos.Genero from Filmes 
inner join FilmesGenero FG on Filmes.Id = FG.IdFilme 
inner join Generos  on FG.IdGenero = Generos.Id

-- Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select Filmes.Nome, Generos.Genero from Filmes 
inner join FilmesGenero FG on Filmes.Id = FG.IdFilme 
inner join Generos on FG.IdGenero = Generos.Id where Genero = 'Mist�rio'

-- Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel from Filmes
inner join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme
inner join Atores on ElencoFilme.IdAtor = Atores.Id