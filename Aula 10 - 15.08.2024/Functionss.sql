/*
1️⃣ Função para Calcular Salário Anual
Desafio: Crie uma função que, dado o ID de um cargo, retorne o salário anual correspondente ao cargo.
*/

DELIMITER //

    CREATE FUNCTION SalarioAnual(
        emp_id INT
    )
    RETURNS DECIMAL(10, 2)

    BEGIN
        DECLARE salarioAnual DECIMAL(10, 2);

        SELECT CARGOS.Salario
        INTO salarioAnual
        FROM EMPREGADOS
        JOIN CARGOS ON EMPREGADOS.Titulo = CARGOS.Titulo AND EMPREGADOS.departamentos_id = CARGOS.departamento_id
        WHERE EMPREGADOS.ID_Empregados = emp_id;

        RETURN salarioAnual * 12;
    END //

DELIMITER ;

USE natansp;
SELECT Nome, salarioAnual(ID_Empregados) AS Salario_Anual
FROM EMPREGADOS
WHERE ID_Empregados = 3;


/*
---------------------------------------------------------------------------------
*/

/*
2️⃣ Função para Contar Empregados por Departamento
Desafio: Crie uma função que, dado o ID de um departamento, retorne o número de empregados que trabalham nesse departamento.
*/

--ID Departamento | Departamento | QTD
--GROUP BY: DEPARTAMENTOS.ID_Departametos = EMPREGADOS.departamentos_id
--WHERE: DEPARTAMENTOS.ID_Departamentos = dep_id
USE natansp;
DELIMITER //
 
CREATE FUNCTION ContarEmpregadosDepartamento (
    p_departamento_id INT
)
RETURNS INT
 
BEGIN
    DECLARE numero_empregados INT;
 
    SELECT COUNT(*) -- Conta o número de registros (empregados) na tabela.
    INTO numero_empregados
    FROM empregados
    WHERE departamento_id = p_departamento_id;
 
    RETURN numero_empregados;
END //
 
DELIMITER ;
 
USE natansp;
SELECT Nome, ContarEmpregadosDepartamento(1) AS 'Total'
FROM DEPARTAMENTOS
