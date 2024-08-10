USE natansp;

CREATE TABLE IF NOT EXISTS DEPARTAMENTOS (
    ID_Departamentos INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS EMPREGADOS (
    ID_Empregados INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Salario DECIMAL(10,2) NOT NULL,
    departamentos_id INT,

    FOREIGN KEY (departamentos_id) REFERENCES DEPARTAMENTOS (ID_Departamentos)
)

INSERT IGNORE INTO DEPARTAMENTOS (Nome) VALUES
    ("TI"),
    ("Marketing"),
    ("Suporte");

INSERT IGNORE INTO EMPREGADOS (Nome, Salario, departamentos_id) VALUES
    ("Natan Gabriel Wildner da Silva", 1500, 1),
    ("Lindsey Isadora Nogueira Corrêa", 1200, 2),
    ("Gabriela Wildner da Silva", 1000, 3);

/* Exemplo de sub consulta, consulta escalar, pois retorna um unico valor :|*/
SELECT Nome, Salario
    FROM EMPREGADOS
    WHERE Salario > (SELECT AVG(Salario) FROM EMPREGADOS)

/* Adicionando mais uma coluna na tabela */
ALTER TABLE DEPARTAMENTOS ADD Localizacao VARCHAR(50);

UPDATE DEPARTAMENTOS SET Localizacao = "Montenegro" WHERE Nome = "TI";
UPDATE DEPARTAMENTOS SET Localizacao = "São Leopoldo" WHERE Nome = "Marketing";
UPDATE DEPARTAMENTOS SET Localizacao = "Camaquã" WHERE Nome = "Suporte";

/*OUTRO EXEMPLO <--> SubConsultas de coluna única*/
SELECT Nome
FROM EMPREGADOS
WHERE departamentos_id IN (SELECT ID_Departamentos FROM DEPARTAMENTOS WHERE Localizacao = "Montenegro") --In seria en algo

--ANY e ALL


ALTER TABLE EMPREGADOS ADD Titulo VARCHAR(50);

CREATE TABLE CARGOS (
    ID_Cargos INT AUTO_INCREMANT PRIMARY KEY,
    Titulo VARCHAR(50) NOT NULL,
    departamento_id INT,
    Salario DECIMAL(10,2) NOT NULL

    FOREIGN KEY (departamento_id) REFERENCES DEPARTAMENTOS(ID_Departamentos)
)
--Como vou criar uma tabela chamada cargos, onde vai ter um salario pra cada cargo, devo excluir a coluna já existente na tabela
ALTER TABLE EMPREGADOS DROP Salario


UPDATE EMPREGADOS SET Titulo = 'Gerente' WHERE Nome = 'Natan Gabriel Wildner da Silva';
UPDATE EMPREGADOS SET Titulo = 'SubGerente' WHERE Nome = 'Lindsey Isadora Nogueira Corrêa';
UPDATE EMPREGADOS SET Titulo = 'Supervisor' WHERE Nome = 'Gabriela Wildner da Silva'

INSERT INTO CARGOS (Titulo, departamento_id, Salario) VALUES
    ('Gerente', 1, 5000.00 ),
    ('SubGerente', 2, 3000.00),
    ('Supervisor', 3, 1800.00);

--Enclus
SELECT DEPARTAMENTOS.Nome, AVG(CARGOS.Salario)
    FROM EMPREGADOS
    JOIN CARGOS ON EMPREGADOS.departamentos_id = CARGOS.departamento_id
    JOIN DEPARTAMENTOS ON EMPREGADOS.departamentos_id = DEPARTAMENTOS.ID_Departamentos
    GROUP BY DEPARTAMENTOS.Nome 
    HAVING AVG(CARGOS.Salario) > 5000.00

