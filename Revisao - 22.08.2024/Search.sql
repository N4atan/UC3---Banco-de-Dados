USE revisao_natan;

--10
SELECT * FROM clientes

--11
SELECT * FROM produtos

--12
    SELECT 
        ID_Pedido,
        clientes.Nome AS 'Nome do Cliente',
        Status,
        DataPedido
    FROM pedidos
    JOIN clientes ON pedidos.id_cliente = clientes.ID_Cliente;
--13
USE revisao_natan;
SELECT 
    itens_pedidos.ID_ItensPedido,
    itens_pedidos.Quantidade,
    itens_pedidos.PrecoUnitario,
    produtos.Nome AS 'Nome do Produto',
    pedidos.ID_Pedido,
    pedidos.Status,
    pedidos.DataPedido
FROM itens_pedidos
JOIN pedidos ON itens_pedidos.id_pedido = pedidos.ID_Pedido
JOIN produtos ON itens_pedidos.id_produto = produtos.ID_Produto;
/*
O que o JOIN faz:
JOIN entre itens_pedidos e pedidos:

Essa junção é feita usando a condição itens_pedidos.id_pedido = pedidos.ID_Pedido.
Significa que, para cada linha em itens_pedidos, o SQL encontra a linha correspondente em pedidos onde o ID_Pedido é igual ao id_pedido em itens_pedidos.
Isso permite que você veja detalhes do pedido, como a data e o status, junto com os itens específicos desse pedido.
JOIN entre itens_pedidos e produtos:

Essa junção é feita usando a condição itens_pedidos.id_produto = produtos.ID_Produto.
Aqui, o SQL encontra a linha correspondente em produtos onde o ID_Produto é igual ao id_produto em itens_pedidos.
Isso permite que você veja o nome do produto relacionado a cada item do pedido.
*/