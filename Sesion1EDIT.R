###Direccionar el workdirectory
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
getwd()

#####SESION1#####
#Autor:Eddison Velazco
#Fecha:
#E-MAIL:edisonvelazco141@gmail.com

##.Definicion entorno de trabajo##

####1.Variables####
#Numeros
a <- 5
a
str(a)

#caracter
nombre <- "Eddison"
nombre
str(nombre)
class(nombre)
#logical
resultado <- TRUE
resultado

str(resultado)

####2.Estructuras####
#vectores
edades <- c(18,16,19,20,22,17)
edades

#secuencias
secuencia <- 1:10
secuencia

#listas
registro <- list(nombre = "Juan", edad = 20, inscrito = TRUE)
registro


mi_lista <- list(
  v1 = c(1, 2, 3),
  m1 = matrix(1:9, nrow=3, ncol=3),
  v2 = c("rojo", "verde", "azul")
)



registro$nombre
registro$edad
registro$inscrito

mi_lista$v1
mi_lista$v2
mi_lista$m1

#matriz
mtx_1 <- matrix(1:6, 3, 2)#3 filas y 2 columnas
mtx_1#la matriz se rellena en el sentido de columnas

#data frame
data <- data.frame(nombres = c("Felipe","Karelis"),edades = c(20,18),inscripcion = c(TRUE,FALSE))
data#Tabla de datos

data$nombres
data$edades
data$inscripcion

####3.Operadores####
#suma
2+3

#resta
a - 5

#multiplicacion
a * 4

#division
10 / a

##Division entera
31%/%a

#Modulo
14%%a

#potencia
a^2#alt 94 

####4.Funciones####
#suma
sum(edades)

#producto
prod(secuencia)

#tipo de dato
str(secuencia)

#concatenacion
paste(edades,"años")

#media
mean(edades)

#Varianza y Desviacion estandar
var(edades)
sd(edades)

#mediana
median(edades)

#minimo
min(edades)

#maximo
max(edades)

#repeticion
rep(a,3)

#exponencial
exp(a)
exp(secuencia)

#logaritmo
log(a)
log(secuencia)

#redondeo
a/3
round(a/3,5)
round(a/3,4)
round(a/3,3)
round(a/3,2)
round(a/3,1)
#Raiz
sqrt(a)
#Ayuda

?help
help(summary)
?summary

methods("utils")

ls("package:utils")
ls("package:stats")
ls("package:methods")
ls("package:graphics")
ls("package:base")

?seq
?c

help(package="base")
library(dplyr)
help(package="dplyr")

"! no
 != diferente
 | significa o 
 & significa y"
#==============================
get_mode <-function(f){
  uf <- unique(f)
  tab<-tabulate(match(f,uf))
  uf[tab ==max(tab)]
}

range(edades)
get_mode(edades)
class(edades)
typeof(edades)

edades
setNames(edades,c("Luis","Carlos","Vaina","Samia","Tania","Bruna"))
nombres<-c("Luis","Carlos","Vaina","Samia","Tania","Bruna")
sort(edades)
sort(edades,decreasing=TRUE)

nombres[edades>16 &edades<20]
nombres[edades>16 | edades<20]

edades[order(edades)]
edades[order(-edades)]
rev(edades)


#%in% ##in contenido
  all 
seq(1,8,0.5)

seq(to=1,from=9,length.out=9)
sample(1:10,8,replace = TRUE)
rnorm(5,mean = 0,sd=1)
runif(5,min=2,max=10)
set.seed(1)
rnorm(5,mean = 0,sd=1)
runif(5,min=2,max=10)


letras<-letters

n1<-which(letras=="n")
n1
c(letras[1:n1],"ñ",letras[-(1:n1)])
c(letras,"ñ")
c("ñ",letras)

new_vector<-c(1,2,3,4,5)
rm(new_vector)
ciudades<-c("lima","Caracas","Bogota","Quito","Santiago","Buenos Aires","Montevideo","Brasilia","La Paz","Asuncion")
indice<-which(ciudades=="Montevideo")
ciudades1<-c(ciudades[1:indice],"GeorgeTown",ciudades[-(1:indice)])
c(ciudades,"Georgetown")
which(ciudades1=="GeorgeTown")
ciudades1[-8]

ciudades[-2]
ciudades[which(ciudades!="Santiago")]
ciudades[-which(ciudades=="Santiago")]
###Matrices###

m<-11:30
dim(m)<-c(4,5)
m
colnames(m)<-c("Lunes","Martes","Miercoles","Jueves","Viernes")
rownames(m)<-c("Bajo","Medio","Alto","Optimo")
m

m1<-rbind(c(1,43,2),c(123,432,12))
M<-cbind(c(12,34,23),c(11,13,14))
M
M01<-cbind(M,c(123,123,234))
M01
M01<-M01[,-1]

 M02<- M[,-c(1,3)]
M02

 X<-matrix(c(1,23,43,24,343,54,23,56),ncol=4,byrow = TRUE)
 Y<-matrix(c(sample(1:10),1,replace=TRUE),ncol = 4,byrow = FALSE)
 Y
 list_matrix<-list(X,Y)
 cbind(list_matrix[[1]],list_matrix[[2]])
 ?replace
 #************************************************************
###Creacion de funciones###
f_sumar<-function(a,b){
  a+b
}
f_sumar(3,5)

f_div<-function(a,b){
  a/b
}
f_div(5,6)


y<-f_sumar(4,6)
y

###Condicionales###

a<-6
b<-"Tercio Estudiantil"

if(a!=b){
  print(a) 
  print(b)
  }else{
    str(a) 
    str(b) 
}
 
###Bucles### 

for(i in 1:100){
print(i)
}

my_vector<-c()

for(i in 1:10){
  my_vector[i]<-i
}
my_vector

z<- 1
cum<-0
while(z<=10){
  cum<-cum+z
z<-z+1
  }
print(cum)


 
while(TRUE){
  num<-runif(1)
  print(num)
  if(num>0.9){
    break
  }
}


library(readxl)
library(haven)
library(readr)
  

data_csv<-read.delim("DailyDelhiClimateTets.csv", delim = ",")

data1<-AirPassengers
data1

data2<-WorldPhones
data2


data_excel<-read_excel("DailyDelhiClimateTest.xlsx")
data_excel
data_excel<-data.frame(data_excel)
data_excel



saludame<-function(name){
  print(paste("Bienvenido",name))
}
saludame("Eddison")

saludame1<-function(){
   name<-readline("Introduce tu nombre /n")
   print(paste("Bienvenido",name))
}


saludame1()
Eddison



data()
data(euro)
data
euro<-data.frame(euro)
euro

swiss<-data.frame(swiss)
swiss

longley<-data.frame(longley)
longley


LON

longley$Year<-1947:1962



population<-ts(longley$Population,frequency = 1,start = c(1947))
population


GNP<-ts(longley$GNP,frequency = 1,start = c(1947))



Unemplyment<-ts(longley$Unemployed,frequency = 1,start=c(1947))

library(plotly)

plot_ly() %>%
  add_lines(x=time(Unemplyment),y=Unemplyment,color=I("red"),name="Desempleo") %>%
  add_lines(x=time(GNP),y=GNP,color=I("blue"),name="GNP")


longley %>% plot_ly(x=~GNP,y=~Unemplyment,type="scatter") %>%
  add_lines(y=~fitted(loess(GNP~Unemplyment)))




library(forecast)
library(plotly)
m_gnp<-auto.arima(GNP)
f_gnp<-forecast(GNP,12,level=0.95)






  ?time
  plot(population,
       ylab = "Poblacion",
       xlab = "Tiempo",
       main="Poblacion entre 1950 y 1963")

ts.plot(population)

methods("as")

