Algoritmo ""
//
//

Var
   // Se��o de Declara��es das vari�veis
   original: vetor[ 1..8] de inteiro
   copiai: vetor[1..8] de inteiro
   i: inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("Digite uma sequ�ncia de 8 n�meros inteiros")
   para i de 1 ate 8 fa�a
      escreval ("Digito o valor", i, ":" )
      leia(original[i])
   fimpara
   limpatela

   
    escreval("C�pia da sequ�ncia")
   para i de 1 ate 8 fa�a
      copiai[i] <- original[i]
   fimpara
   
   
     escreval("Outra sequ�ncia")
   para i de 1 ate 8 fa�a
      escreval("Numero ", i, ": ", copiai[i])
   fimpara






Fimalgoritmo