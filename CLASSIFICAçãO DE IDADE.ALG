Algoritmo "Classifica��o de Idade"
//
//
//
//
// Descri��o   : Classificar a idade do usu�rio
// Autor(a)    : Cicero Gabriel de Sousa Cardoso
// Data atual  : 15/09/2020
Var
   // Se��o de Declara��es das vari�veis
   id: inteiro


Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   escreval("Digite aqui sua idade")
   leia (id)


   se (id < 12) entao
      escreva("Voc� � Crian�a")
   fimse

   se (id >= 12) e (id <=17) entao
      escreva("Voc� � adolescente")
   fimse
   
   se (id >= 18) e (id <25) entao
      escreva("Voc� � jovem")
   fimse
   
   se (id >=25) e (id <59) entao
      escreva("Voc� � adulto")
   fimse
   
   se (id >60) entao
      escreva("Voc� � aposentado")
   fimse

Fimalgoritmo