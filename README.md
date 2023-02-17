# Projeto em grupo do quinto módulo - CRUD API 

Projeto composto por um produto mínimo viável de um banco com as requisições create, read, update, delete (CRUD).

## Endpoints do servidor 
- pessoas 
- contas 

## Execução
```
# Clone o repositório
git clone https://github.com/Thamilliz/Projeto-em-Grupo-M-05.git

# Inicie o xampp, crie um banco chamado "banco" e importe o arquivo SQL

# Instale as dependências no terminal do Node.js
npm install

# Inicie o servidor 
node index.js
```
## Métodos de requisição HTTP no endpoint contas 

| Método | Rota | Descrição |
| ------ | ----- | ----------- |
| **`GET`** | **/contas** | Retorna todas as contas. |
|  **`GET`** | **/contas/:ID_contas** | Retorna uma conta específica a partir do ID_contas. |
|  **`POST`** | **/contas** | Cria uma nova conta.  |
|  **`PUT`** | **/contas/:ID_contas** | Altera os dados da conta a partir do ID_contas.  |
|  **`DELETE`** | **/contas/:ID_contas** | deleta uma conta a partir do ID_contas. |

## Integrantes
[Igor Ferreira](https://github.com/IgorFerrer053)

[José Lucas](https://github.com/lucascovv)

[Lucas Cardoso](https://github.com/Lucas2Cardoso)

[Matheus Cristhian](https://github.com/mcristhian)

[Thamilliz Vallesk](https://github.com/Thamilliz)
