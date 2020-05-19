rm(list=ls())
library(dplyr)
setwd("/")
setwd("C:/Users/REINA MARIA/Documents/Clases/2020/Formulario")

survey<-read.csv("encuesta_limpia.csv",sep=",", header=T)


table(survey$estudia_grupo)

#declarar vector vacio
level_one <- c()

#### Limpiar columnas que solo tengan un valor de nivel y las binariaas obtienes 3
for (myname in names(survey)) {
   #extraer los valores unicos 
  unique_values <- unique(survey[,myname])
  if(length(unique_values)==1){
    level_one <- c(level_one,myname)
  }
  
  
}


