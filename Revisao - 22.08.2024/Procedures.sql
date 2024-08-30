/*25*/
USE revisao_natan;

DELIMITER //

CREATE PROCEDURE adicionar_cliente(
    IN p_nome VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_telefone VARCHAR(15)
)
BEGIN
    INSERT INTO clientes (Nome, Email, Telefone, DataCadastro)
    VALUES (p_nome, p_email, p_telefone, CURDATE());
END //

DELIMITER ;

/*26*/
USE revisao_natan;

DELIMITER //

CREATE PROCEDURE atualizar_preco_produto(
    IN p_id_produto INT,
    IN p_novo_preco DECIMAL(10,2)
)
BEGIN
    UPDATE produtos
    SET Preco = p_novo_preco
    WHERE ID_Produto = p_id_produto;
END //

DELIMITER ;

/*27*/
USE revisao_natan;

DELIMITER //

CREATE PROCEDURE registrar_pedido(
    IN p_id_cliente INT,
    IN p_data_pedido DATE,
    IN p_status VARCHAR(10)
)
BEGIN
    INSERT INTO pedidos (id_cliente, DataPedido, Status)
    VALUES (p_id_cliente, p_data_pedido, p_status);
END //

DELIMITER ;

/*28*/
USE revisao_natan;

DELIMITER //

CREATE PROCEDURE adicionar_item_pedido(
    IN p_id_pedido INT,
    IN p_id_produto INT,
    IN p_quantidade INT,
    IN p_preco_unitario DECIMAL(10,2)
)
BEGIN
    INSERT INTO itens_pedidos (id_pedido, id_produto, Quantidade, PrecoUnitario)
    VALUES (p_id_pedido, p_id_produto, p_quantidade, p_preco_unitario);
END //

DELIMITER ;
