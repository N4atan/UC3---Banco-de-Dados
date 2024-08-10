/*
1) Escreva uma consulta SQL para selecionar o departamento_id e a soma dos salários para cada departamento. 
Filtre os departamentos onde a soma total dos salários é maior que R$ 12.000,00. --> Subconsulta (nao precisa:( )
*/ 

SELECT ID_Departamentos, Nome 
FROM DEPARTAMENTOS 
WHERE (
     SELECT SUM(Salario)
    FROM CARGOS
    WHERE departamento_id = ID_Departamentos
    GROUP BY departamento_id
    ) > 12000.00

/*
    Peço para somar os salarios da planilha cargos. onde :
    ,na planilha cargo, o idepartamento for igual ao iddepartamento da planilha departamento
    depois ordena por grupo e não por cargo


    new condition é que tem que ser maior de 12k
*/ 

/*  Caso a mesma sub consulta pra melhor entendimento:

     SELECT SUM(Salario), departamento_id 
    FROM CARGOS
    WHERE departamento_id = departamento_id
    GROUP BY departamento_id

    só que assim nao funciona na consulta principal, porq ele retorna +1 coluna

*/