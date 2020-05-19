#install.packages("dplyr")
#install.packages("tidyverse")
#install.packages("datos")

rm(list=ls())
library(dplyr)
library(tidyverse)
library(datos)
setwd("/")
setwd("C:/Users/REINA MARIA/Documents/Clases/2020/Formulario")

survey<-read.csv("encuesta_limpia.csv",sep=",", header=T)


summary(survey$calculo_mental)
        
survey[ survey$calculo_mental =="" , "calculo_mental"] <- median(survey$calculo_mental)

#survey[ survey$horas_dedicadas_clase > 17 , "horas_dedicadas_clase"] <- median(survey$horas_dedicadas_clase)

summay()

col_factores_cambio <- as.data.frame(survey$razones_eleccion_carrera)
#creacion de una funcion 
siFactorSum <- function(cadena_texto_valor) {
   s2="Factor económico"
   #z <- c(cadena_texto_valor)
   
   #nchar(x)
   #x=0
   #if(cadena_texto_valor==""){
   x=0
   #}
  
   tryCatch(
     expr = {
       if(grepl(cadena_texto_valor,s2, fixed = TRUE)==TRUE){
         x=1
       }
     },
     error = function(e){ 
       # (Optional)
       # Do this if an error is caught...
       x=0
     },
     finally = {
       # (Optional)
       # Do this at the end before quitting the tryCatch structure...
       x=0
     }
   )
}
#agregando nueva variables 
col_factores_cambio$Recursos_economico_time_invertido=0

col_factores_cambio$Recursos_economico_time_invertido=siFactorSum(col_factores_cambio$`survey$factores_cambio_carrera`)


#names(survey)
df_perc<-as.data.frame(prop.table(table(survey$factores_cambio_carrera)))

summary(survey$factores_cambio_carrera)

##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 

#identificar valores atipicos
boxplot(df_perc$Freq)

hist(df_perc$Freq)

qqnorm(df_perc$Freq)

str(survey)

df_perc[df_perc$Var1 %in% c("Ocotepeque","Copán","Lempira"),"regiones"]<-"Occidental"
df_perc[df_perc$Var1 %in% c("Cortes","Yoro","Santa Bárbara"),"regiones"]<-"Noroccidental"
df_perc[df_perc$Var1 %in% c("Atlántida","Gracias a Dios","Colón","Islas de la Bahía"),"regiones"]<-"Nororiental"
df_perc[df_perc$Var1 %in% c("Intibucá","Comayagua","La Paz"),"regiones"]<-"Centro Occidental"
df_perc[df_perc$Var1 %in% c("Francisco Morazán","El Paraíso","Olancho"),"regiones"]<-"Centro Oriental"
df_perc[df_perc$Var1 %in% c("Choluteca","Valle"),"regiones"]<-"Sur"


df_perc2<-as.data.frame(prop.table(table(df_perc$regiones)))

##ordena los dato de Freq con (-) lo ordena descenente
df_perc2<-df_perc2 %>% arrange(-Freq) 

#identificar valores atipicos
boxplot(df_perc2$Freq)

hist(df_perc2$Freq)

qqnorm(df_perc$Freq)

#df_perc<-df_perc %>% select(Var1,multiple_carrera2)

#survey<-left_join(survey,df_perc,by=c("asesoria_universitaria"="Var1"))

s1="uno dos"
s2="uno"
nchar(s1)

x <- c(s1)
nchar(x)

grepl(s2, s1, fixed = TRUE)
