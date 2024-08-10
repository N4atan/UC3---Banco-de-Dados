--Criando um procedimento

DELIMITER // 

CREATE PROCEDURE AumentarSalario(       -->Nome e paramentros na hora de chamar ele, igual JS
    IN dep_id INT,                      -->nÃO É O MESMO IN QUE USAMOS ANTERIORMENTE
    IN percentual DECIMAL(5,2)          -->Use a logica de função do JS ;)
)

--Oque vai ser executado
BEGIN
    UPDATE CARGOS
    SET Salario = Salario + (Salario * (percentual / 100))
    WHERE departamento_id = dep_id;
END //

DELIMITER ;



--Para chamar-lo
CALL AumentarSalario(1, 100)