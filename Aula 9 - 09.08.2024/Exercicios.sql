DELIMITER //
    CREATE PROCEDURE AdicionarEmpregado(
        IN namee VARCHAR(100),
        IN dep_id INT,
        IN titulo VARCHAR(100)
    )

    BEGIN
        INSERT INTO EMPREGADOS (Nome, departamentos_id, Titulo) VALUES
        (namee, dep_id, titulo);

    END //
DELIMITER ;

DELIMITER


DELIMITER //
    CREATE PROCEDURE DeletarEmpregado(
        IN empregado INT
    )

    BEGIN   
        DELETE FROM EMPREGADOS WHERE ID_Empregados = empregado;
    END //
DELIMITER ;


DELIMITER //
    CREATE PROCEDURE TrocarTituloEmpregado(
        IN empID INT,
        IN newTitle VARCHAR(100)
    ) 

    BEGIN
        UPDATE EMPREGADOS SET Titulo = newTitle WHERE ID_Empregados = empID;
    END //
DELIMITER ;


