Algoritmo "Desafio 5 - Estrutura de Dados de Consumo de √Ågua"
Var
   consumo: vetor [1..12,1..20] de real
   mesab: vetor [1..12] de caracter
   ano, mes, anoMinimo, anoAtual,  periodo,  mesDeMaiorConsumo, mesDeMenorConsumo, anoDeMenorConsumo: inteiro
   opcao: caracter
   ehValidaA_opcao, ehValidoO_ano: logico
   consumoDeTodasAsOcorrencias: vetor [1..12] de real
   mediaAnual, maiorConsumoDeAgua, menorConsumoDeAgua: real


Inicio
   anoAtual <- 2020

   periodo <- 2


   anoMinimo <- anoAtual - periodo
   mesab[1]  <- "jan"
   mesab[2]  <- "fev"
   mesab[3]  <- "mar"
   mesab[4]  <- "abr"
   mesab[5]  <- "mai"
   mesab[6]  <- "jun"
   mesab[7]  <- "jul"
   mesab[8]  <- "ago"
   mesab[9]  <- "set"
   mesab[10] <- "out"
   mesab[11] <- "nov"
   mesab[12] <- "dez"

   escreval()
   escreval("____________ABCDE LTDA____________ ")
   escreval()
   escreval("Consumo de Agua")


   ano<- 1
   repita
      escreval("Consumo em litros por mes (", anoMinimo + ano, ")")
      mes<- 1
      repita
         escreva(mesab[mes])
         escreva(" ----> ")
         leia(consumo[mes,ano])
         se ( consumo[mes,ano] < 0.0 ) entao
            escreval("Devo converter para ", abs(consumo[mes,ano]))
            escreval("ou deseja outro valor?")
            escreval("x: converte | o: novo valor")
            repita
               escreva("----> ")
               leia(opcao)
               ehValidaA_opcao <- (opcao = "x") OU (opcao = "o")
               se (nao ehValidaA_opcao) entao
                  escreval("por favor, x ou o.")
               senao
                  se (opcao = "x") entao
                     consumo[mes,ano] <- abs(consumo[mes,ano])
                     mes <- mes + 1
                  senao
                     escreva("novo valor para ")
                  fimse
               fimse
            ate ehValidaA_opcao
         senao
            se ( consumo[mes,ano] > 100000.0 ) entao
               escreval("Digite um valor v·lido")
               escreva("novo valor para ")
            senao
               mes <- mes + 1
            fimse
         fimse
         limpatela

      ate mes> 12
      ano <- ano + 1
   ate (anoMinimo + ano) > anoAtual

   timer 2000
   limpatela
   timer 0

   escreval("Analisador de Consumo")
   repita
      escreval("1: Analisar a media de consumo")

      escreva("2: Analisar o mes que a empresa mais gastou")
      escreval("nos ultimos ", periodo, " anos")

      escreva("3: verificar o mes e o ano de menor consumo")
      escreval()
      escreval("0: EXIT")

      repita
         escreva(" ----> ")
         leia(opcao)
         ehValidaA_opcao<- (opcao = "1") OU (opcao = "2") OU (opcao = "3") OU (opcao = "0")
         se (nao ehValidaA_opcao)entao
            escreval("1, 2, 3 ou 0 para sair.")
         senao


            se (opcao = "1") entao
               escreval("De um ano especifico ou de todos?")
               escreval("e: especifico | t: todos")
               repita
                  escreva(">>> ")
                  leia(opcao)
                  ehValidaA_opcao<- (opcao = "e") OU (opcao = "t")
                  se (nao ehValidaA_opcao) entao
                     escreval("por favor, e ou t.")
                  senao
                     // mes especifico
                     se (opcao = "e") entao
                        repita
                           escreva("ano ----> ")
                           leia(ano)
                           ehValidoO_ano<- ano> anoMinimo) E (doAno <= anoAtual)
                           se (nao ehValidoO_ano) entao
                              escreval("entre ", anoMinimo + 1, " e ", anoAtual)
                           senao
                              escreva("A media do ano ", ano)
                              ano <- ano - anoMinimo
                              para mes de 1 ate 12 faca
                                 mediaAnual <- mediaAnual + consumo[mes,ano]
                              fimpara
                              mediaAnual <- mediaAnual / 12
                              escreval("foi de: ", mediaAnual)
                           fimse
                        ate ehValidoO_ano
                        // todos os meses
                     senao
                        para ano de 1 ate periodo faca
                           escreva("A media do ano ", ano + anoMinimo)
                           para mes de 1 ate 12 faca
                              mediaAnual <- mediaAnual + consumo[mes,ano]
                           fimpara
                           mediaAnual <- mediaAnual / 12
                           escreval(" foi de: ", mediaAnual)
                        fimpara
                     fimse
                  fimse
               ate ehValidaA_opcao
            fimse


            // opcao 2
            se (opcao = "2") entao
               para mes de 1 ate 12 faca
                  para ano de 1 ate periodo faca
                     consumoDeTodasAsOcorrencias[mes] <- consumoDeTodasAsOcorrencias[mes] + consumo[mes,ano]
                  fimpara
               fimpara
               maiorConsumoDeAgua <- consumoDeTodasAsOcorrencias[1]
               para mes de 1 ate 12 faca
                  se (consumoDeTodasAsOcorrencias[mes] >= maiorConsumoDeAgua) entao
                     maiorConsumoDeAgua <- consumoDeTodasAsOcorrencias[mes]
                     mesDeMaiorConsumo <- mes
                  fimse
               fimpara
               escreval("Resultado abreviado ou completo?")
               escreval("x: abreviado | o: completo")
               repita
                  escreva("----> ")
                  leia(opcao)
                  ehValidaA_opcao <- (opcao = "x") OU (opcao = "o")
                  se (nao ehValidaA_opcao) entao
                     escreval("por favor, x ou o.")
                  senao

                     se (opcao = "x") entao
                        escreva("O mes de ", mesAbreviado[mesDeMaiorConsumo])
                        escreval(" teve o maior consumo no total")
                        escreval("Com ", maiorConsumoDeAgua, "L gastos")

                     senao
                        para mes de 1 ate 12 faca
                           escreva(mesab[mes])
                           escreva(" com total de ")
                           escreval(consumoDeTodasAsOcorrencias[mes])
                        fimpara
                        escreval("Maior consumo em ", mesab[mesDeMaiorConsumo])
                     fimse
                  fimse
               ate ehValidaA_opcao
            fimse
            // fim da opcao 2

            // opcao 3
            se (opcao = "3") entao
               menorConsumoDeAgua <- consumo[1,1]
               para ano de 1 ate periodo faca
                  para mes de 1 ate 12 faca
                     se (consumo[mes,ano] <= menorConsumoDeAgua) entao
                        menorConsumoDeAgua <- consumo[mes,ano]
                        mesDeMenorConsumo <- mes
                        anoDeMenorConsumo <- ano
                     fimse
                  fimpara
               fimpara
               anoDeMenorConsumo <- anoDeMenorConsumo + anoMinimo
               escreva("A empresa consumiu menos agua em ")
               escreva(mesab[mesDeMenorConsumo])
               escreva(" de ")
               escreval(anoDeMenorConsumo)
               escreval("Consumindo ", menorConsumoDeAgua, "L")
            fimse



            se (opcao = "0") entao
               escreval("FIM")
            fimse

         fimse
      ate ehValidaA_opcao
   ate opcao = "0"

Fimalgoritmo
