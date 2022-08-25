            Funcionalidade: Login na plataforma EBAC-SHOP

            Como cliente da EBAC-SHOP
            Quero fazer o login autenticação na plataforma
            Para visualizar meus pedidos

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso e ir para a tela de checkout

            Exemplos:
            | Usuário              | Senha       | Mensagem      |
            | "camila@ebac.com.br" | "senha@253" | "olá Camila!" |

Cenário: Identificação senha inválida
Quando eu digitar o usuário "camila@ebac.com.br"
E a senha "Ebac@10"
Então deve exibir uma mensagem de alerta "senha inválida"