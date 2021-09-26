***Settings***
Library     hello.py

***Test Cases***
Deve retornar mensagem de boas vindas
        ${resultado}=       Hello Robot     Dani Cavalcanti
        Should Be Equal     ${resultado}        Olá, Dani Cavalcanti. 
