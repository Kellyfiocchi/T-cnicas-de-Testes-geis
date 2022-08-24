            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Cenário: Soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu adicionar o primeiro valor 1
            E apertar o botão de somar
            E novamente adicionar o segundo valor 1
            Então será exibido 2 como resultado

            Esquema do Cenário: Calcular Soma
            Quando eu adicionar o primeiro <valor>
            E então apertar <somar>
            E adicionar o segundo <valor>
            Então deve exibir o <resultado>

            Exemplos:

            | primeiro_valor | segundo_valor | operação | resultado |
            | 1              | 1             | soma     | 2         |
            | 1              | 2             | soma     | 3         |
            | 1              | 3             | soma     | 4         |
            | 1              | 4             | soma     | 5         |
            | 1              | 5             | soma     | 6         |
            | 1              | 6             | soma     | 7         |
            | 1              | 7             | soma     | 8         |
            | 1              | 8             | soma     | 9         |
            | 1              | 9             | soma     | 10        |
            | 1              | 10            | soma     | 11        |
            | 2              | 3             | soma     | 5         |
            | 7              | 2             | soma     | 9         |
            | 10             | 15            | soma     | 25        |
            | 30             | 8             | soma     | 38        |
            | 45             | 5             | soma     | 50        |
            | 60             | 15            | soma     | 75        |
            | 100            | 8             | soma     | 108       |
            | 21             | 21            | soma     | 42        |