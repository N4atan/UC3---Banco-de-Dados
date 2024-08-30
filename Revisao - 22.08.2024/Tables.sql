USE revisao_natan;

CREATE TABLE IF NOT EXISTS clientes (
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(15),
    DataCadastro DATE
);

CREATE TABLE IF NOT EXISTS produtos (
    ID_Produto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Descricao VARCHAR(100),
    Preco DECIMAL(10,2),
    Estoque INT
);

CREATE TABLE IF NOT EXISTS pedidos (
    ID_Pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    DataPedido DATE,
    Status VARCHAR(10),

    FOREIGN KEY (id_cliente) REFERENCES clientes (ID_Cliente)
);

CREATE TABLE IF NOT EXISTS itens_pedidos (
    ID_ItensPedido INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_produto INT,
    Quantidade INT,
    PrecoUnitario DECIMAL(10,2),

    FOREIGN KEY (id_pedido) REFERENCES pedidos (ID_Pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos (ID_Produto)
)