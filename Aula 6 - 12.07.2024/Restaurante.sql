--Criei a tabela mas nao anotei..
--ID_Pedido	id_Cliente	NumeroPedido	ValorTotal	DataPedido	

CREATE TABLE IF NOT EXISTS Pedidos (
    ID_Pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_Cliente INT,
    NumeroPedido VARCHAR(50),
    ValorTotal DECIMANL(10,2),
    DataPedido DATE

    FOREIGN KEY (id_Cliente) REFERENCES CLIENTES (ID_Cliente)
);

INSERT INTO Pedidos (id_Cliente, NumeroPedido, ValorTotal, DataPedido)
	VALUES  (1, 'PED-001', 150.00, '2024-07-12'),
            (2, 'PED-002', 250.00, '2024-07-12'),
            (1, 'PED-003', 180, '2024-07-13');
