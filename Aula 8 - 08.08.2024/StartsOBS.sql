--Primeiro vou add mais algumas pessoas 
/*CREATE TABLE IF NOT EXISTS EMPREGADOS (
    ID_Empregados INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Salario DECIMAL(10,2) NOT NULL, 
    departamentos_id INT,

    FOREIGN KEY (departamentos_id) REFERENCES DEPARTAMENTOS (ID_Departamentos)
)*/

--Como posteriormente eu retirei a coluna salário dessa tabela, nao irei add :)
--Mas preciso add o "cargo", no caso ta como titulo
INSERT INTO EMPREGADOS (Nome, departamentos_id, Titulo) VALUES --TI: 1, MARKETING: 2, SUPORTE: 3
    ("Claúdio Machado Silva", 3, "Analista")
    ("Breno Fagundes", 2, "Social Media")
    ("Marcelo Farias Correa", 1, 'Project Developer')

--Feito, tenho que criar os cargos, adicionar a krl toda... :( mas nao do departamento, pois ja usei existentes
/*
CREATE TABLE CARGOS (
    ID_Cargos INT AUTO_INCREMANT PRIMARY KEY,
    Titulo VARCHAR(50) NOT NULL,
    departamento_id INT,
    Salario DECIMAL(10,2) NOT NULL

    FOREIGN KEY (departamento_id) REFERENCES DEPARTAMENTOS(ID_Departamentos)
)
*/

INSERT INTO CARGOS (Titulo, departamento_id, Salario) VALUES
    ("Analista", 3, 800.00),
    ("Social Media", 2, 1444.00),
    ('Project Developer', 1, 10000.00)