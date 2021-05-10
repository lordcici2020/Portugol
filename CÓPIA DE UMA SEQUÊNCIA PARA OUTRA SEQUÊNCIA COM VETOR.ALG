Algoritmo ""
//
//

Var
   // Seção de Declarações das variáveis
   original: vetor[ 1..8] de inteiro
   copiai: vetor[1..8] de inteiro
   i: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Digite uma sequência de 8 números inteiros")
   para i de 1 ate 8 faça
      escreval ("Digito o valor", i, ":" )
      leia(original[i])
   fimpara
   limpatela

   
    escreval("Cópia da sequência")
   para i de 1 ate 8 faça
      copiai[i] <- original[i]
   fimpara
   
   
     escreval("Outra sequência")
   para i de 1 ate 8 faça
      escreval("Numero ", i, ": ", copiai[i])
   fimpara






Fimalgoritmo