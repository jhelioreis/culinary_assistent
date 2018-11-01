# Culinary Assistent

O Culinary Assistent, é um assitente culinario que te ajuda a achar receitas com o que você tem em casa!

## Requisitos

* [NodeJS v6+][1]


## Configurando o ambiente de desenvolvimento

Após instalar os requisitos necessários e fazer _clone_ do projeto, execute os seguintes passos:

1. Instale as dependências do npm:
  ```
  $ npm install
  ```
2. Agora suba a aplicação ;):
  ```
  $ npm start
  ```

## Rotas - Usuario comum

1. "/login" - POST
  - Espera receber um "usuario" e uma "senha" no body da requisicão. Devolve um JSON com o token do usuário e armazena um cookie com esse token.

2. "/receita" - POST
  - Espera que tenha um cookie "x-access-token" com um token válido, espera também um JSON no body da requisicão com um array de ingredientes. Devolve as receitas com esses ingredientes.

3. "/receita" - GET
  - Espera que tenha um token válido no "x-access-token" nos cookies. Devolve um JSON com todas as receitas.

## Rotas - Admin

1. "/receita/adicionar" - POST
  - Espera que tenha um token válido no "x-access-token" nos cookies, e que tenha um JSON com as propriedades da receita: "nome - string", "ingredientes - string", "tags - array de strings", "modo_de_preparo - string", "tempo_de_preparo - number", "porcoes - number" e "autor - string" no body da requisicao. Devolve um JSON com a receita cadastrada.

2. "/receita/:id" - PUT
  - Espera que tenha um token válido no "x-access-token" nos cookies, um id válido na url, e um JSON com as propriedades que deseja alterar.

3. "/receita/:id" - DELETE
  - Espera que tenha um token válido no "x-access-token" nos cookies e um id válido na url.

4. "/criarUsuario/" - POST
  - Espera que tenha um cookie "x-access-token" com um token válido e de um admin, no body da requisicao espera: "usuario - string", "senha - string", "email - string" e "isAdmin - boolean". Devolve o usuario e email do novo usuario.

[1]: http://nodejs.org/en/download/ 
