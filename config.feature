#language: pt

Funcionalidade: Configurar meu produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
    Dado que o usuario esta autenticado no site 

Esquema do Cenario: Configuracao valida
Quando o ususario selecciona um produto
E o usuario escolhe a <cor>
E o usuario escolhe o <tamanho>
E  o usuario escolhe a <quantidade>
Entao o produto deve ser inserido no carrinho


Exemplos:
|    cor         |  tamanho   | quantidade |
|  "azul"        |   "M"      |   "1"      |
|  "amarelo"     |   "L"      |   "2"      |
|  "branco"      |   "M"      |   "10"     | 


Esquema do Cenario: Configuracao invalida
Quando o ususario selecciona um produto
E o usuario seleciona o <tamanho>
E  o usuario seleciona a <quantidade>
Entao deve exibir uma <mensagem> de alerta 

Exemplos:
|    cor         |  tamanho   | quantidade  |                     mensagem                                              |
|  "azul"        |   "M"      |   "1"       | "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."   |
|                |   "p"      |   "1"       | "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."   |
|  "vermelho"    |            |   "2"       | "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."   |
|  "preto"       |   "L"      |             | "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."   |
|  "azul"        |   "M"      |   "1"       | "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."   |
|                |            |             | "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."   |
|  "branco"      |   "M"      |   "11"      | "E permitido apenas 10 produtos por venda."                               |



Cenario: Limpiar dados
Quando o ususario selecciona um produto
E o usuario escolhe a <cor>
E o usuario escolhe o <tamanho>
E o usuario escolhe a <quantidade>
E clicar no botão “limpar”
Entao os dados do produto voltam ao estado original
 