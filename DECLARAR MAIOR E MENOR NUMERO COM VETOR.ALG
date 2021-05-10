Algoritmo "Declarar maior e menor numero com vetor"
//  
//  

Var
   // Seção de Declarações das variáveis
   inteiros: vetor[ 1..100] de inteiro
   i, MaiorNumero, MenorNumero: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   MaiorNumero <- 0
   MenorNumero <- 9999999

   para i de 1 ate 100 faça
      escreval ("Digite o valor",i, ": ")
      leia(inteiros[i])
      se ( inteiros[i] > MaiorNumero) entao
         MaiorNumero <- inteiros[i]
      fimse

      se (inteiros[i] < MenorNumero) entao
         MenorNumero <- inteiros[i]
      fimse

   fimpara

   escreval("O maior número:", MaiorNumero)
   escreval("O menor número:", MenorNumero)

Fimalgoritmo