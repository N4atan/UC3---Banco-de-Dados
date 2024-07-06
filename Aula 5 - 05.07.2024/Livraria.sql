
    USE tdssl241n_natangabrielwildnerdasilva;


    CREATE TABLE IF NOT EXISTS AUTORES (
        ID_Autor INT PRIMARY KEY AUTO_INCREMENT,
        Nome VARCHAR(100 ) NOT NULL,
        Nacionalidade VARCHAR(100)
    );

    CREATE TABLE IF NOT EXISTS LIVROS (
        ID_Livro INT PRIMARY KEY AUTO_INCREMENT,
        Titulo VARCHAR(100) NOT NULL,
        Genero VARCHAR(200),
        AnoPublicacao INT,
        id_Autor INT,
        
        FOREIGN KEY (id_Autor) REFERENCES AUTORES(ID_Autor)
    );

    CREATE TABLE IF NOT EXISTS CLIENTES (
        ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
        Nome VARCHAR(100) NOT NULL,
        Endereco VARCHAR(200),
        Telefone VARCHAR(30)
    );

    CREATE TABLE IF NOT EXISTS EMPRESTIMOS (
        ID_Emprestimo INT PRIMARY KEY AUTO_INCREMENT,
        id_Livro INT,
        id_Cliente INT,
        DataEmprestimo DATE,
        DataDevolucao DATE,

        FOREIGN KEY (id_Livro) REFERENCES LIVROS(ID_Livro),
        FOREIGN KEY (id_Cliente) REFERENCES CLIENTES(ID_Cliente)
    );


    INSERT IGNORE INTO AUTORES (Nome, Nacionalidade) VALUES
    ('Haruki Murakami', 'Japonês'),
    ('Friedrich Nietzsche','Alemão'),
    ('Takehiko Inou','Japonês');

    INSERT IGNORE INTO LIVROS (Titulo, Genero, AnoPublicacao, id_Autor) VALUES
    ('Norwegian Wood', 'Ficção Contemporânea', 1987, 1),
    ('Assim Falava Zaratustra', 'Filosofia Existencialista', 1883, 2 ),
    ('Vagabond', 'Mangá Histórico', 1998, 3);

    INSERT IGNORE INTO CLIENTES (Nome, Endereco, Telefone) VALUES
    ('Natan Gabriel Wildner da Silva', 'Rua Sebastião Meireles N°130', '(51) 999988574'),
    ('Gabriela Wildner da Silva', 'Rua das Camélias', NULL),
    ('Lindsey Isadora Nogueira Corrêa', 'Rua Sebastião Meireles N°66', NULL);

    INSERT IGNORE INTO EMPRESTIMOS (id_Livro, id_Cliente, DataEmprestimo, DataDevolucao) VALUES
        (2, 3, 2024-07-05, 2024-07-25),
        (3, 2, 2024-05-07, 2024-05-27),
        (1, 1, 2023-12-29, 2024-01-19);


    ALTER TABLE AUTORES
        ADD COLUMN DataNascimento DATE,
        ADD COLUMN Biografia TEXT;

    ALTER TABLE LIVROS
        ADD COLUMN Editora VARCHAR(50),
        ADD COLUMN NumeroPaginas INT,
        ADD COLUMN Idioma VARCHAR(200);

    ALTER TABLE CLIENTES
        ADD COLUMN Email VARCHAR(100),
        ADD COLUMN DataNascimento DATE;

    ALTER TABLE EMPRESTIMOS
        ADD COLUMN DataPrevistaDevolucao DATE,
        ADD COLUMN Statuus VARCHAR(50);

    
    --Quando querer atualizar mais de uma vez:
    UPDATE AUTORES
        SET DataNascimento = 
            CASE 
                WHEN ID_Autor = 1 THEN '1949-01-12'
                WHEN ID_Autor = 2 THEN '1844-10-15'
                WHEN ID_Autor = 3 THEN '1967-01-12'
                ELSE DataNascimento  -- manter a DataNascimento existente para IDs não especificados
            END;
        WHERE ID_Autor IN (1, 2, 3);
    --Quando tentei atualizar a biografia, nao deu pra deixar 2 SET, entao só apaguei o SET por completo e botei pro Biografia!!
    
    --Assim podemos usar assim para mais de 1 coluna :))
    UPDATE LIVROS
        SET Editora = 
            CASE 
                WHEN ID_Livro = 1 THEN 'Alfagura'
                WHEN ID_Livro = 2 THEN 'Companhia das Letras'
                WHEN ID_Livro = 3 THEN 'Panini Comics'
            END,

            NumeroPaginas = 
                CASE 
                    WHEN ID_Livro = 1 THEN 384
                    WHEN ID_Livro = 2 THEN 300
                    WHEN ID_Livro = 3 THEN 320
                END
        WHERE ID_Livro IN (1, 2, 3)



