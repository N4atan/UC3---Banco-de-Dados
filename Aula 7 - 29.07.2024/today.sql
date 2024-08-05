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

/*OUTRO EXEMPLO*/
SELECT Nome
FROM EMPREGADOS
WHERE departamentos_id IN (SELECT ID_Departamentos FROM DEPARTAMENTOS WHERE Localizacao = "Montenegro")