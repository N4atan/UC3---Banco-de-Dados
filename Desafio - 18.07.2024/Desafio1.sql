USE desafio_natan;

--Criação da tabela produts
CREATE TABLE IF NOT EXISTS PRODUTOS(
    ID_Produto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Modelo VARCHAR(50) NOT NULL,
    Marca VARCHAR(50),
    Categoria VARCHAR(50),
    Preco REAL NOT NULL,
    Fornecedor VARCHAR(20) NOT NULL,
    Garantia VARCHAR(100) NOT NULL
);

--Alterei o ID_Produto seja único!!
ALTER TABLE PRODUTOS
    ADD UNIQUE KEY (ID_Produto);

--Criando os 10 itens
INSERT IGNORE INTO PRODUTOS (Nome, Modelo, Marca, Categoria, Preco, Fornecedor, Garantia)
    VALUES
        ('Placa Mãe Asus TUF Gaming B550M-Plus', 'TUF Gaming B550M-Plus', 'Asus', 'Hardware', 1199.90, 'Asus', '1 ano'),
        ('Processador AMD Ryzen 5 4600G', 'Ryzen 5 4600G', 'AMD', 'Processador', 699.90, 'AMD', '1 ano'),
        ('Monitor Gamer LG UltraGear 24"', '24GN60R-B', 'LG', 'Monitor', 1399.90, 'LG', '1 ano'),
        ('Gabinete Gamer Rise Mode Galaxy Glass', 'Galaxy Glass', 'Rise Mode', 'Gabinete', 379.90, 'Rise Mode', '1 ano'),
        ('Mouse Gamer Redragon Cobra', 'Cobra M711 V2', 'Redragon', 'Periférico', 149.90, 'Redragon', '1 ano'),
        ('Headset Gamer Redragon Zeus X', 'Zeus X', 'Redragon', 'Periférico', 289.90, 'Redragon', '1 ano'),
        ('Monitor Gamer LG 27"', '27GN750', 'LG', 'Monitor', 2199.90, 'LG', '1 ano'),
        ('Teclado Mecânico Gamer Redragon Kumara', 'Kumara', 'Redragon', 'Periférico', 199.90, 'Redragon', '1 ano'),
        ('Processador Intel Core i3-10100F', 'Core i3-10100F', 'Intel', 'Processador', 479.90, 'Intel', '1 ano'),
        ('Placa de Vídeo Gigabyte Radeon RX 6600', 'Radeon RX 6600', 'Gigabyte', 'Placa de Vídeo', 2299.90, 'Gigabyte', '1 ano');


--Deleteando o 4 e 7
DELETE FROM PRODUTOS
    WHERE ID_Produto = 4;

DELETE FROM PRODUTOS
    WHERE ID_Produto = 7;

--Adicionando coluna
ALTER TABLE PRODUTOS
    ADD COLUMN PossuiEstoque BOOL NOT NULL

--Alterando estoques

UPDATE PRODUTOS
    SET PossuiEstoque = 0
    WHERE Id_Produto != 2;

UPDATE PRODUTOS
    SET PossuiEstoque = 1
    WHERE Id_Produto = 2;

--Relatorio

SELECT *
    FROM PRODUTOS
    ORDER BY PossuiEstoque DESC, ID_Produto ASC --eLE VAI SEPARAR PRIMEIRO PELOS TRUES E ORGANIZAR PELA ORDEM CRESCENTE DOS IDS, DPS POR FALSE EM ORDEM CRESCENTES O ID
    LIMIT 5;
