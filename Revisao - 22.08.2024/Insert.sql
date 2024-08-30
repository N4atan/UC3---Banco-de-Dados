USE revisao_natan;

INSERT INTO clientes (Nome, Email, Telefone, DataCadastro) VALUES 
('João Silva', 'joao.silva@email.com', '1234567890', '2024-01-15'),
('Maria Oliveira', 'maria.oliveira@email.com', '0987654321', '2024-02-20'),
('Carlos Pereira', 'carlos.pereira@email.com', '1122334455', '2024-03-10'),
('Ana Costa', 'ana.costa@email.com', '2233445566', '2024-04-05'),
('Beatriz Souza', 'beatriz.souza@email.com', '3344556677', '2024-05-25');

INSERT INTO produtos (Nome, Descricao, Preco, Estoque) VALUES 
('Teclado Mecânico', 'Teclado mecânico RGB', 250.00, 50),
('Mouse Gamer', 'Mouse com 7 botões', 150.00, 30),
('Monitor 24"', 'Monitor Full HD', 800.00, 20),
('Cadeira Gamer', 'Cadeira ergonômica', 700.00, 10),
('Headset', 'Headset com microfone', 200.00, 25);

INSERT INTO pedidos (id_cliente, DataPedido, Status) VALUES 
(1, '2024-06-01', 'Pendente'),
(2, '2024-06-10', 'Enviado'),
(3, '2024-06-15', 'Entregue'),
(4, '2024-07-01', 'Cancelado');

INSERT INTO itens_pedidos (id_pedido, id_produto, Quantidade, PrecoUnitario) VALUES 
(1, 1, 2, 250.00),  -- Pedido 1: 2 Teclados Mecânicos
(1, 3, 1, 800.00),  -- Pedido 1: 1 Monitor 24"
(2, 2, 1, 150.00),  -- Pedido 2: 1 Mouse Gamer
(3, 5, 3, 200.00);  -- Pedido 3: 3 Headsets
