-------------------------------------------------------------------------------------------
rm(list=ls())
library(dplyr)
setwd("/")
setwd("C:/Users/REINA MARIA/Documents/Clases/2020/Formulario")

survey<-read.csv("encuesta_limpia.csv",sep=",", header=T)


table(survey$satisfaccion_carrera)
str(survey$satisfaccion_carrera) #categorica 
summary(survey$motivacion)       #numerica 

#tabla de proporciones 

prop.table(table(survey$satisfaccion_carrera))

qqnorm(survey$motivacion)
qqline(survey$motivacion)

#pruebas de shapio
shapiro.test(survey$motivacion)
#boxplot(survey$motivacion)

muy_satisfecho  <- survey %>% filter(satisfaccion_carrera =="Muy satisfecho") %>% select(motivacion)
no_satisfecho   <- survey %>% filter(satisfaccion_carrera =="No satisfecho") %>% select(motivacion)
poco_satisfecho <- survey %>% filter(satisfaccion_carrera =="Poco satisfecho") %>% select(motivacion)

boxplot(muy_satisfecho$motivacion)
qqnorm(muy_satisfecho$motivacion)
qqline(muy_satisfecho$motivacion)
shapiro.test(muy_satisfecho$motivacion)

boxplot(no_satisfecho$motivacion)
qqnorm(no_satisfecho$motivacion)
qqline(no_satisfecho$motivacion)
shapiro.test(no_satisfecho$motivacion)

boxplot(poco_satisfecho$motivacion)
qqnorm(poco_satisfecho$motivacion)
qqline(poco_satisfecho$motivacion)
shapiro.test(poco_satisfecho$motivacion)

#prueba de homocedasticidad
#mide que tan normal es la variabza 

var.test(muy_satisfecho$motivacion,poco_satisfecho$motivacion)

#prueba teststident
---------------------------------------------------------------------------------------------------