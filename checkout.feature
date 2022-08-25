            #language: pt

           Funcionalidade: Tela de cadastro - checkout
            Como cliente da EBAC-SHOP
            Quero finalizar meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que esteja no site da Ebac-Shop, e queira realizar o cadastro para finalizar a compra

            Cenário: Campos obrigatórios com asterisco devem ser preenchidos
            Quando quando escolher os produtos
            E clicar em comprar
            Então deve me redirecionar para a tela de cadastro.


            Cenário: Validar Tela de cadastro - Campos obrigatórios
            Quando preencher os campos obrigatórios marcados com asteriscos
            E clicar em finalizar compra
            Então deve permitir que avance com a compra

            Cenário: Formato incorreto de email
            Quando preencher o email
            E entrar com um formato de email inválido
            Então deve me apresentar uma mensagem de erro.

            Cenário: Campos Vazios
            Quando tentar cadastrar com campos Vazios
            E não inserir as informações obrigatórias
            Então deve me retornar uma mensagem de alerta.

            Esquema do Cenário: validar cadastro com campos Obrigatórios preenchidos.
            Quando preencher os <dados>
            E clicar em finalizar compra
            Então deve ser permitido avançar com a compra.

            Exemplos:
            | nome     | sobrenome  | pais   | endereço                          | complemento     | cidade    | estado    | CEP       | telefone  | e-mail                 |
            | Camila   | Cunha      | Brasil | Rua Pará                          | casa  450       | Sao Paulo | Sao Paulo | 09430-350 | 991390066 | camila@gmail.com       |
            | Fernando | Martinez   | Brasil | AV. mirante   #222                | apto 31B        | Sao Paulo | Sao Paulo | 09445-000 | 991390066 | patopatonico@gmail.com |
            | João     | Montenegro | Brasil | AV. professor Antonio Nunes  #219 | bloco A apto 55 | Sao Paulo | Sao Paulo | 09431-440 | 991390066 | jm@gmail.com           |



            Esquema do Cenario: Cadastrar dados usuario inválido

            Contexto: 
            Dado que o usuario está digitando os dados incorretos

            Quando o usuario digitar os <dados>
            E o usuario for <invalido>
            Entao deve exibir uma <mensagem> de alerta.

            Exemplos:
            | nome   | sobrenome | pais   | endereço | complemento | cidade         | estado    | CEP      | telefone  | e-mail           | mensagem                                                                        |       
            | Camila | Cunha     | Brasil | Rua Pará | casa  450   | Ribeirão Pires | Sao Paulo | 09430350 | 999912841 |                  | "Não e permitido campos vazios"                                                 |
            | Camila | Cunha     | Brasil | Rua Pará | casa  450   | Ribeirão Pires | Sao Paulo | 09430350 | 999912841 | camila           | "O email informado é inválido! Insira no seguinte formato: exemplo@dominio.com" |
            |        |           |        |          |             |                |           |          |           |                  | "Dados obrigatórios *                                                           |
