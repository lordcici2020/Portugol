algoritmo "Data e ano bissexto"
//
//

var
   H ,MM , SS, DIA, MES, ANO:inteiro

   t, d, bt, nbt :caracter

inicio
   escreval("Primeiramente, vamos verificar se")
   escreval("o ano que você informou é bissexto ou não")
   escreval("Qual ano deseja verificar?")
   leia(ANO)
   escreval("aguarde...Processando Dados...")
   timer 2000
   timer 0

   se (ANO mod 400 = 0) ou ((ANO mod 4 = 0) e (ANO mod 100 <> 0))  entao
      escreval (ANO, " é bissexto")
   senao
      escreval (ANO, " não é bissexto")
   fimse

   repita
      escreval("Digite um Mês válido")
      leia(MES)
   ate (MES<13)

   escreval("Informe o dia")
   leia(DIA)
   se ((DIA>28) e (MES=2) e (ANO mod 4 <> 0)) entao
      repita
         escreval("Dia inválido, informe novamente")
         leia(DIA)
      ate (DIA<29)
   senao
   fimse

   se ((DIA>29) e (MES=2) e (ANO mod 4 = 0)) entao
      repita
         escreval("Dia inválido, informe novamente")
         leia(DIA)
      ate (DIA<=29)
   senao
   fimse

   se ((DIA<=29) e (MES=2) e (ANO mod 4 = 0)) entao
   fimse

   se ((DIA>=31) e (MES=4) ou (MES=6) ou (MES=9) ou (MES=11)) entao
      repita
         escreval("Dia inválido, informe novamente")
         leia(DIA)
      ate (DIA<=30)
   senao
   fimse

   repita
      escreval(" Digite uma hora no formato 24H: ")
      leia(H)
   ate (H<=23)

   repita
      escreval("Digite os minutos: ")
      leia(MM)
   ate (MM<=59)

   repita
      escreval("Digite os segundos: " )
      leia(SS)
   ate (SS<=59)

   t<-":"
   d<-"/"
   SS<-SS+1
   bt<- "é bissexto"
   nbt<- "não é bissexto"

   escreval("Data e hora")
   escreval(DIA, d, MES, d, ANO, " às ",H,"H",t,MM,"MM",t,SS,"SS")
   timer 2000


   escreval("aguarde...Processando Dados...")
   timer 2000
   timer 0

   se (ss=60) ENTÃO
      MM<-MM+1
      ss<-0
   fimse

   se (MM=60)ENTÃO
      H<-H+1
      MM<-0
   fimse

   se (H=24)ENTÃO
      H<-0
      MM<-0
   fimse


   limpatela
   repita
      se (ANO mod 400 = 0) ou ((ANO mod 4 = 0) e (ANO mod 100 <> 0))  entao
         escreval (ANO, " é bissexto")
      senao
         escreval (ANO, " não é bissexto")
      fimse


      escreva ("Data: ")
      escreval(DIA,d,MES,d,ANO)
      escreva ("Hora: ")
      escreval(H,t,MM,t,SS)
      timer 1000
      timer 0
      SS<-SS+1

      se (SS=60) ENTÃO
         MM<-MM+1
         SS<-0
      fimse

      se (MM=60) ENTÃO
         H<-H+1
         MM<-0
      fimse

      se (H=24) ENTÃO
         H<-0
         MM<-0
      fimse

      se (H=23) e (MM=59) e (SS=59) entao
         DIA<- DIA + 1
      fimse

      se (H=23) e (MM=59) e (SS=59) e (DIA>29) e (MES=2) e (ANO mod 4 = 0) entao
         DIA<- 1
         MES<- MES + 1
      fimse

      se (DIA>30) e (MES=4) ou (MES=6) ou (MES=9) ou (MES=11) entao
         MES<-MES+1
         DIA<- 1
      fimse

      se (DIA>31) e (MES=1) ou (MES=5) ou (MES=7) ou (MES=8) ou (MES=10) entao
         MES<-MES+1
         DIA<- 1
      fimse

      SE (MES>12) e (dia>31) entao
         ANO<-ANO+1
         MES<- 1
         DIA<- 1
      fimse

      se (MES=13) entao
         ANO<- ANO+1
         MES<-1
      fimse





























      limpatela
   ate H>76


fimalgoritmo