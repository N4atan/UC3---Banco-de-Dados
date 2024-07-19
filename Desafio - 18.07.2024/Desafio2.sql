--Tabela Livros
CREATE TABLE IF NOT EXISTS LIVROS (
    ID_Livro INT UNIQUE PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(100) NOT NULL,
    Genero VARCHAR(200),
    AnoPublicacao INT,
    id_Autor INT,
    Preco REAL,

    FOREIGN KEY (id_Autor) REFERENCES AUTORES (ID_Autor)
);

INSERT IGNORE INTO LIVROS (
    ()
    ()
    ()
    ()
    ()
    ()
    ()
    ()
    ()
    ()
    ()
)