//por enquanto vamos usar um arquivo js
/*
1º - npm instal cache --force 
2º - npm install sqlite3 
3º - instalar extension sqlite viewer
*/


//Importa a biblioteca sqlite3 e cria uma nova instância do banco de dados SQLite, conectando-se ao arquivo exemplo.db
const sqlite3 = require('sqlite3').verbose()
const db = new sqlite3.Database('exemplo.db')

//Comando SQL para criar tabela funcionarios (se ainda nao existir)
db.run(
    `
        CREATE TABLE IF NOT EXISTS funcionarios(
            id INTEGER PRIMARY KEY,
            nome TEXT NOT NULL,
            cargo TEXT,
            salario REAL
        )
`,
            //O callback (err) em db.run() é usado para capturar e relatar para capturar e relatar erros caso ocorram durnte a execução do comnaod SQL
        (err) => {
            if(err){
                console.log('Erro ao criar tabela.', err.message)
            } else {
                console.log('Tabela criada com sucesso.')

                //Dados dos funcionarios a serem inseridos na tabela
                const funcionarios = [
                    {nome: 'João Silva', cargo: 'Desenvolvedor', salario: 4500.00},
                    {nome: 'Maria Olivera', cargo: 'Analista', salario: 5000.00},
                    {nome: 'Pedro ', cargo: 'Gerente', salario: 7000.00}    
                ]
                
                //Comando SQL para inserir dados na tabeka funcionaários
                const insertQuery = `
                    INSERT INTO funcionarios (nome, cargo, salario)
                    VALUES (?, ?, ?)
                `
                
                //Função para inserir cada funcionario
                funcionarios.forEach((funcionarios) => {
                    db.run(insertQuery, [funcionarios.nome, funcionarios.cargo, funcionarios.salario], function(err){
                        if(err){
                            console.log('Erro ao inserir funcionarios', err.message)
                        } else {
                            console.log(`Funcionarios inseridos com sucesso, ID: ${this.lastID}`)
                        }
                    })
                })
            
                //Fechar conexão com o banco de dados SQLite após a inserção
                db.close((err) => {
                    if(err){
                        return console.log('Erro ao fechar o banco de dados', err.message)
                    }
                    console.log('Conexão com o banco de dados SQLite fechado')
                })
            }
        }
)

