-- Inserir dados na tabela Niveis
INSERT INTO Niveis (nivel, descricao, bonus_forca, bonus_agilidade) VALUES
(1, 'Iniciante', 1, 1),
(2, 'Veterano', 2, 2),
(3, 'Guerreiro', 3, 3),
(4, 'Mestre', 4, 4);

-- Inserir dados na tabela Jogadores
INSERT INTO Jogadores (nome, nivel) VALUES
('Arthur', 1),
('Lancelot', 1);

-- Inserir dados na tabela Atributos_Jogadores
INSERT INTO Atributos_Jogadores (jogador_id, forca, agilidade) VALUES
(1, 10, 10),
(2, 12, 8);