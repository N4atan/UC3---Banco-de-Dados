/*22*/
USE revisao_natan;

DELETE FROM clientes
WHERE Nome = 'Carlos Pereira';  -- Nome do cliente a ser excluído

/*23*/
DELETE FROM produtos
WHERE Nome = 'Mouse Gamer';  -- Nome do produto a ser excluído

/*24*/
DELETE FROM itens_pedidos
WHERE id_pedido = 1;  -- ID do pedido cujos itens serão excluídos
