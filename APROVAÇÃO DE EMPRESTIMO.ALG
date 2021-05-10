Algoritmo "Aprovação de emprestimo"


Var
   ve, np, sal, p, pct: real


Inicio
   escreval("Qual o valor do emprestimo solicitado?")
   leia(ve)

   escreval("Em quantas parcelas pretende pagar?")
   leia(np)

   escreval("Informe seu salario.")
   leia(sal)


   p <-(ve/np)


   pct <-(p*100/sal)


   se pct <=35 entao
      escreva("Seu credito foi aprovado")

   senao

      escreva("Seu credito nao foi aprovado")

   fimse



Fimalgoritmo




(p*100/sal)