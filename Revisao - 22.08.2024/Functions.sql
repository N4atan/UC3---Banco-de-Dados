/*29*/
USE revisao_natan;

DELIMITER //

CREATE FUNCTION calcular_total_pedido(p_id_pedido INT)
RETURNS DECIMAL(10,2)
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(Quantidade * PrecoUnitario) INTO total
    FROM itens_pedidos
    WHERE id_pedido = p_id_pedido;
    RETURN total;
END //

DELIMITER ;

/*30*/
USE revisao_natan;

DELIMITER //

CREATE FUNCTION obter_estoque_produto(p_id_produto INT)
RETURNS INT
BEGIN
    DECLARE estoque INT;
    SELECT Estoque INTO estoque
    FROM produtos
    WHERE ID_Produto = p_id_produto;
    RETURN estoque;
END //

DELIMITER ;

/*31*/
DELIMITER //

CREATE FUNCTION verificar_cliente_existente(p_email VARCHAR(100))
RETURNS BOOLEAN
BEGIN
    DECLARE existe BOOLEAN;
    SELECT COUNT(*) INTO existe
    FROM clientes
    WHERE Email = p_email;
    RETURN existe > 0;
END //

DELIMITER ;

/*32*/
DELIMITER //

CREATE FUNCTION total_vendas_por_cliente(p_id_cliente INT)
RETURNS DECIMAL(10,2)
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(itens_pedidos.Quantidade * itens_pedidos.PrecoUnitario) INTO total
    FROM pedidos
    JOIN itens_pedidos ON pedidos.ID_Pedido = itens_pedidos.id_pedido
    WHERE pedidos.id_cliente = p_id_cliente;
    RETURN total;
END //

DELIMITER ;