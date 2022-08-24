            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o usuario esta autenticado no site


            Esquema do Cenario: Cadastrar dados usuario valido
            Quando o usuario digitar o <nome>
            E o <sobrenome>
            E escolhe o <pais>
            E o usuario digitar o <endereço>
            E o usuario digitar o <complemento>
            E a <cidade>
            E selecionar o <estado>
            E digitar o <CEP>
            E o <telefone>
            E o <e-mail>
            Entao deve exibir a pagina "Pedido recebido" com os detalhes do pedido

            Exemplos:
            | nome     | sobrenome  | pais   | endereço                          | complemento     | cidade    | estado    | CEP       | telefone  | e-mail                 |
            | Camila   | Cunha      | Brasil | Rua Pará                          | casa  450       | Sao Paulo | Sao Paulo | 09430-350 | 991390066 | camila@gmail.com       |
            | Fernando | Martinez   | Brasil | AV. mirante   #222                | apto 31B        | Sao Paulo | Sao Paulo | 09445-000 | 991390066 | patopatonico@gmail.com |
            | João     | Montenegro | Brasil | AV. professor Antonio Nunes  #219 | bloco A apto 55 | Sao Paulo | Sao Paulo | 09431-440 | 991390066 | jm@gmail.com           |



            Esquema do Cenario: Cadastrar dados usuario invalido

            Quando o usuario digitar <nome>
            E o <sobrenome>
            E escolhe o <pais>
            E o usuario digitar o <endereço>
            E  o <complemento>
            E a <cidade>
            E selecionar o <estado>
            E digitar o <CEP>
            E o <telefone>
            E o <e-mail>
            Entao deve exibir uma <mensagem> de alerta.

            Exemplos:
            | nome   | sobrenome | pais   | endereço | complemento | cidade         | estado    | CEP      | telefone  | e-mail           | mensagem                                                                        |
            |        | Cunha     | Brasil | Rua Pará | casa  450   | Ribeirão Pires | Sao Paulo | 09430350 | 999912841 | camila@gmail.com | "Não e permitido campos vazios                                                  |
            | Camila |           | Brasil | Rua Pará | casa  450   | Ribeirão Pires | São Paulo | 09430350 | 999912841 | camila@gmail.com | "Não e permitido campos vazios"                                                 |
            | Camila | Cunha     |        | Rua Pará | casa  450   | Ribeirão Pires | Sao Paulo | 09430350 | 999912841 | camila@gmail.com | "Não e permitido campos vazios"                                                 |
            | Camila | Cunha     |        | Rua Pará | casa  450   | Ribeirão Pires | Sao Paulo | 09430350 | 999912841 | camila@gmail.com | "Não e permitido campos vazios"                                                 |
            | Camila | Cunha     |        | Rua Pará | casa  450   | Ribeirão Pires | Sao Paulo | 09430350 | 999912841 | camila@gmail.com | "Não e permitido campos vazios"                                                 |
            | Camila | Cunha     |        | Rua Pará | casa  450   | Ribeirão Pires | Sao Paulo | 09430350 | 999912841 | camila@gmail.com | "Não e permitido campos vazios"                                                 |
            | Camila | Cunha     | Brasil |          | casa  450   | Ribirão Pires  | Sao Paulo | 09430350 | 999912841 | camila@gmail.com | "Não e permitido campos vazios"                                                 |
            | Camila | Cunha     | Brasil | Rua Pará | casa  450   |                | Sao Paulo | 09430350 | 999912841 | camila@gmail.com | "Não e permitido campos vazios"                                                 |
            | Camila | Cunha     | Brasil | Rua Pará | casa  450   | Ribeirão Pires |           | 09430350 | 999912841 | camila@gmail.com | "Não e permitido campos vazios"                                                 |
            | Camila | Cunha     | Brasil | Rua Pará | casa  450   | Ribeirão Pires | Sao Paulo |          | 999912841 | camila@gmail.com | "Não e permitido campos vazios"                                                 |
            | Camila | Cunha     | Brasil | Rua Pará | casa  450   | Ribeirão Pires | Sao Paulo | 09430350 |           | camila@gmail.com | "Não e permitido campos vazios"                                                 |
            | Camila | Cunha     | Brasil | Rua Pará | casa  450   | Ribeirão Pires | Sao Paulo | 09430350 | 999912841 |                  | "Não e permitido campos vazios"                                                 |
            | Camila | Cunha     | Brasil | Rua Pará | casa  450   | Ribeirão Pires | Sao Paulo | 09430350 | 999912841 | camila           | "O email informado é inválido! Insira no seguinte formato: exemplo@dominio.com" |
            |        |           |        |          |             |                |           |          |           |                  | "Dados obrigatorios *                                                           |
