-- Qual a média de preço (preço regular) dos produtos pesquisados?

select AVG(preco_regular) as preco_medio_regular
from dados.produtos_pesquisa;

-- Quantos produtos diferentes foram pesquisados em cada categoria?
select categoria, count (DISTINCT id_produto) as quantidade_produtos_diferentes
from dados.produtos_pesquisa
group by categoria
order by quantidade_produtos_diferentes desc;

-- Quais são as três categorias com maior quantidade de pesquisas?
select categoria, count(*) as quantidade_pesquisas
from dados.produtos_pesquisa
group by categoria
order by quantidade_pesquisas desc
limit 3;

-- Qual o menor e o maior preço regular de cada categoria?
select categoria, MIN(preco_regular) as menor_preco_regular, MAX(preco_regular) as maior_preco_regular
from dados.produtos_pesquisa
where preco_regular > 0
group by categoria;

-- Contagem das linhas retornadas pela consulta abaixo
select count(*) as total_linhas
from dados.produtos_pesquisa
where categoria = 'NaN';

select * 
from dados.produtos_pesquisa
where categoria = 'NaN';
