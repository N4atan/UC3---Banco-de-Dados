/* Excluindo
DROP FUNCTION IF EXISTS nome_da_funcao;
 
 
DROP PROCEDURE IF EXISTS nome_do_procedimento;
*/

USE natansp;

DELIMITER //
    
    CREATE FUNCTION CalcularSalarioBruto(
        emp_id INT
    )
    RETURNS DECIMAL(10,2)

    BEGIN
        /* Assim criamos uma variável*/
        DECLARE salario1 DECIMAL(10,2);

        /* Obtem o salario do cargo do empregado com o ID fornecido*/
        SELECT CARGOS.Salario
        INTO salario1
        FROM EMPREGADOS
        JOIN CARGOS ON EMPREGADOS.Titulo = CARGOS.Titulo AND EMPREGADOS.departamentos_id = CARGOS.departamento_id
        WHERE EMPREGADOS.ID_Empregados = emp_id;

        RETURN salario1;
    END //

DELIMITER ;


--Para Uso
USE natansp;
SELECT Nome, CalcularSalarioBruto(ID_Empregados) AS salario_bruto
FROM EMPREGADOS
WHERE ID_Empregados = 3;


