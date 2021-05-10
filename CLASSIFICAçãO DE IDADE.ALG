Algoritmo "Classificação de Idade"
//
//
//
//
// Descrição   : Classificar a idade do usuário
// Autor(a)    : Cicero Gabriel de Sousa Cardoso
// Data atual  : 15/09/2020
Var
   // Seção de Declarações das variáveis
   id: inteiro


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   escreval("Digite aqui sua idade")
   leia (id)


   se (id < 12) entao
      escreva("Você é Criança")
   fimse

   se (id >= 12) e (id <=17) entao
      escreva("Você é adolescente")
   fimse
   
   se (id >= 18) e (id <25) entao
      escreva("Você é jovem")
   fimse
   
   se (id >=25) e (id <59) entao
      escreva("Você é adulto")
   fimse
   
   se (id >60) entao
      escreva("Você é aposentado")
   fimse

Fimalgoritmo