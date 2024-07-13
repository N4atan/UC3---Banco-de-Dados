SELECT colunas, da, tabela
    FROM tabela

SELECT * --Seleciona automaticamente todas
    FROM tabala

SELECT colunaqueesta o item
    FROM tabela
    WHERE linhadele

--Pegar varios
SELECT colunadoitem
    FROM tabela
    WHERE locdele IN (X,X,X)

SELECT *
    FROM tabela
    ORDER BY algumaColuna ASC --ou DESC

SELECT *
    FROM tabela
    WHERE algumaColuna
    ORDER BY algumaColuna ASC --ou DESC

SELECT *
    FROM tabela
    LIMIT 3 --limita a quantidade de itens de busca

SELECT DISTINCT item --Nao vai repitir os itens por conta do DISTINCT
    FROM tabela


--Soma do valor total
SELECT SUM(ValorTotal) AS valor_total_pedidos
    FROM Pedidos