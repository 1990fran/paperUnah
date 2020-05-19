#install.packages("ggplot2")
rm(list=ls())
library(dplyr)
library(ggplot2)
setwd("/")
setwd("C:/Users/REINA MARIA/Documents/Clases/2020/Formulario")

survey<-read.csv("encuesta_limpia.csv",sep=",", header=T)


#summary(survey$satisfaccion_carrera)

prop.table(table(survey$indice_academico,survey$cambio_carrera),1)
#prop.table(table(survey$satisfaccion_carrera,survey$cambio_carrera),2)

ggplot(survey)+
  aes(x=indice_academico,fill=factor(cambio_carrera))+
  geom_bar(position = "fill")+
  theme(axis.text = element_text(angle = 45))


ggplot(survey)+
  aes(x=indice_academico,fill=factor(cambio_carrera))+
  geom_bar(position = "stack")+
  theme(axis.text = element_text(angle = 45))

#poder responder a la hipotesis variables 2 categoricas 
chisq.test(table(survey$indice_academico,survey$cambio_carrera))

#H_0: son independientes
#H_A: Las categorias son dependientes

#aceptar o rechazar la hipotesis nula cuando p-value es menor a 0.05

#comprovamos que si son dependientes las variables categoricas si influye cambio de carrera con la satisfaccion
#conclucion: la deve hacer siembre en funccion de la hipoteiss nula
#segun nuestro p-value rechasamos nuestra hipotesis nula por lo tanto las variables son dependientes






