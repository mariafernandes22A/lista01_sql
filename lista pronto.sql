use avaliacao_22a;

insert into livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ("As cronicas de Nárnia", "c.s. Lewis", "1950", TRUE , "Fantasia", "978-0064471190", "HarperCollins", 768, "Ingles");
Insert into livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("Cem Anos de Solidão","Gabriel Garcia Marquez", 1967, disponivel, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol");
Insert into livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, disponivel, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês");
Insert into livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, disponivel, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

insert into livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("Bob Sponja", "Bob Marley", "1909", disponivel, "história", "632-6747238048", "Casa Brasil","376", "Coreano");

update livros set disponivel = false where ano_publicacao < 2000;

update livros set editora = "Plume Books" where titulo = "1984";

update livros set idioma = "ingles" where editora = "Penguin Books";

update livros set titulo = "Harry Potter e a Pedra Filosofal( Edição Especial)" where isbn = "978-0439708180";

delete from livros where  categoria = "Terror";

delete  from livros where idioma = " frances" and ano_publicacao < 1970;




DELETE FROM livros WHERE titulo = "As cronicas de Nárnia";
SELECT * FROM Livros  WHERE quantidade_paginas > 500;
DELETE FROM Livros WHERE editora = "Penguin Books";
Select categoria, COUNT(*) AS quantidade_Livros
from livros
group by categoria;
select * from Livros 
order by id ASC
limit 5;
SELECT SUM (quantidade_paginas)AS total_paginas,
avg (quantidade_paginas) AS media_paginas
from Livros
where categoria = "Drama";
select avg(ano_publicacao) as media_ano_publicacao
FROM Livros;
SELECT
titulo,ano_publicacao
FROM Livros
Where ano_publicacao = (select max(ano_publicacao)from Livros);

select
titulo,ano_publicacao
from Livros
Where ano_publicacao = (select min(ano_publicacao)from Livros);

select * from Livros
Order by ano_publicacao desc;

select titulo
from livros
where idioma = "ingles"
union
select titulo
from livros
where idioma = "Portugues";

select * from  Livros
where autor = "George Orwell"; 
