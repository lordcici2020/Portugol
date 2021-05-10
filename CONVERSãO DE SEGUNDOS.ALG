Algoritmo "Conversão de segundos"


var
    entrada:inteiro
    hh ,mm ,ss :real
inicio

    escreval("Entre com os segundos: ")
    leia(entrada)

    hh:= entrada div 3600
    mm:=(entrada mod 3600)/60
    ss:=(entrada mod 3600)mod 60

    escreval(hh ," hh: ",mm," mm: ",ss,"ss")

Fimalgoritmo