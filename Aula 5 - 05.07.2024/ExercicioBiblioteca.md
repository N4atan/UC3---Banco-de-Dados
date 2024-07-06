

### 5. ✍️ Inserção de Dados nas Novas Colunas
Atualize os dados existentes para incluir valores nas novas colunas.
<details>

<summary>💡 Dica: Como atualizar dados nas novas colunas</summary>
sql
Copiar código
UPDATE Autores
SET DataNascimento = '1965-07-31', Biografia = 'J.K. Rowling é uma escritora britânica, autora da série Harry Potter.'
WHERE AutorID = 1;

UPDATE Livros
SET Editora = 'Bloomsbury', NumeroPaginas = 223, Idioma = 'Inglês'
WHERE LivroID = 1;

UPDATE Clientes
SET Email = 'ana.silva@example.com', DataNascimento = '1980-01-15'
WHERE ClienteID = 1;

UPDATE Emprestimos
SET DataPrevistaDevolucao = '2023-07-15', Status = 'Em andamento'
WHERE EmprestimoID = 1;
</details>

