/*19*/
USE revisao_natan;

UPDATE produtos
SET Preco = 300.00  -- Novo preço
WHERE Nome = 'Teclado Mecânico';  -- Nome do produto a ser atualizado

/*20*/
USE revisao_natan;

UPDATE pedidos
SET Status = 'Concluído'
WHERE ID_Pedido = 1;  -- ID do pedido a ser atualizado

/*21*/
USE revisao_natan;

UPDATE clientes
SET Telefone = '999888777'  -- Novo telefone
WHERE Nome = 'João Silva';  -- Nome do cliente a ser atualizado
