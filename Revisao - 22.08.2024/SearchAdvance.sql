USE revisao_natan;

/*14*/
SELECT 
    clientes.Nome,
    pedidos.ID_Pedido,
    pedidos.Status,
    pedidos.DataPedido

FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.ID_Cliente
WHERE clientes.Nome = "Ana Costa"

/*15*/

USE revisao_natan;
SELECT
    produtos.Nome,
    SUM(itens_pedidos.Quantidade * itens_pedidos.PrecoUnitario) AS 'Total de Vendas'
FROM itens_pedidos
JOIN produtos ON produtos.ID_Produto = itens_pedidos.id_produto
GROUP BY produtos.Nome

/*16*/
SELECT  
    *
FROM produto
WHERE Estoque > 0

/*17*/
Select 
    clientes.Nome
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.ID_Cliente
WHERE pedidos.DataPedido >= "2024-06-01" /*Data para demonstração*/


/*18*/
USE revisao_natan;
SELECT 
    clientes.Nome,
    COUNT(pedidos.ID_Pedido) AS TotalPedidos
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.ID_Cliente
GROUP BY clientes.Nome;