Algoritmo "Declarar maior e menor numero com vetor"
//  
//  

Var
   // Se��o de Declara��es das vari�veis
   inteiros: vetor[ 1..100] de inteiro
   i, MaiorNumero, MenorNumero: inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   MaiorNumero <- 0
   MenorNumero <- 9999999

   para i de 1 ate 100 fa�a
      escreval ("Digite o valor",i, ": ")
      leia(inteiros[i])
      se ( inteiros[i] > MaiorNumero) entao
         MaiorNumero <- inteiros[i]
      fimse

      se (inteiros[i] < MenorNumero) entao
         MenorNumero <- inteiros[i]
      fimse

   fimpara

   escreval("O maior n�mero:", MaiorNumero)
   escreval("O menor n�mero:", MenorNumero)

Fimalgoritmo