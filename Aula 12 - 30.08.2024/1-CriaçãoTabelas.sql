/* SEGUINDO UM PADRAO, COM NOMES DE TABELAS: "Tabela". 
    COLUNA: "coluna1" */

-- Tabela Niveis
CREATE TABLE Niveis (
    nivel INT PRIMARY KEY,
    descricao VARCHAR(50),
    bonus_forca INT,
    bonus_agilidade INT
);

-- Tabela Jogadores
CREATE TABLE Jogadores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    nivel INT,
    FOREIGN KEY (nivel) REFERENCES Niveis(nivel)
);

-- Tabela Atributos_Jogadores
CREATE TABLE Atributos_Jogadores (
    jogador_id INT PRIMARY KEY,
    forca INT,
    agilidade INT,
    FOREIGN KEY (jogador_id) REFERENCES Jogadores(id)
);