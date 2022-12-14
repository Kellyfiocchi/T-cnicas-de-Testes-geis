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
E o usuario escolhe a cor, tamanho e quantidade
Entao o produto deve ser inserido no carrinho



Exemplos:
|    cor         |  tamanho   | quantidade |
|  "azul"        |   "M"      |   "1"      |
|  "amarelo"     |   "L"      |   "2"      |
|  "branco"      |   "M"      |   "10"     | 


Esquema do Cenario: Configuracao invalida
Quando o ususario selecciona um produto
E o usuario seleciona o <tamanho> e <quantidade>
Entao deve exibir uma <mensagem> de alerta 

Exemplos:
|    cor         |  tamanho   | quantidade  |                     mensagem                                              |
|  "azul"        |   "M"      |   "1"       | "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."   |
|  "branco"      |   "M"      |   "11"      | "E permitido apenas 10 produtos por venda."                               |



