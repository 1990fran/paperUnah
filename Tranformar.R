rm(list=ls())
setwd("/")
setwd("C:/Users/REINA MARIA/Documents/Clases/2020/Formulario")


survey <- read.csv("encuesta_limpia.csv",sep=",",header = T)
library("dplyr")

summary(survey)

#table es una de las funciones mas importantes que utiliza un alalista de datos 

prop.table(table(survey$razones_eleccion_carrera))

#coverir los arreglos a dataframe 
df_perc <- as.data.frame(prop.table(table(survey$razones_eleccion_carrera)))

#ordenar la informacion 
#%>%
df_perc <- df_perc %>% arrange(-Freq)

#se le envia un vector numerico continuo
#boxplot(df_perc$Freq)
hist(df_perc$Freq)
qqnorm(df_perc$Freq)

summary(survey)

for(myname in names(survey)){
  print(myname)
  #print(is.na(survey[,myname]))
  #print(head(survey[,myname]))
  #print(table(is.na(survey[,myname])))
  print(prop.table(table(is.na(survey[,myname]))))
}

eleccion_carrera <- read.csv("razones_eleccion.csv",sep=",",header = T)
