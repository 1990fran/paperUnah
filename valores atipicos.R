rm(list=ls())
library(dplyr)
setwd("/")
setwd("C:/Users/REINA MARIA/Documents/Clases/2020/Formulario")

survey<-read.csv("encuesta_limpia.csv",sep=",", header=T)
names(survey)
-----------------------------------------------------------------------------------
#contar el numero de NA
sum(is.na(survey))
colSums(is.na(survey))
#omitir filas NA
survey2 <- na.omit(survey)
#a <- "apple"
-----------------------------------------------------------------------------
str(survey) 

sdf_perc<-as.data.frame(prop.table(table(survey$multiple_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 

#identificar valores atipicos
#boxplot(df_perc$Freq)
#for (i in names(survey)) {  
  df_perc<-as.data.frame(prop.table(table(survey$edad)))
  ##ordena los dato de Freq con (-) lo ordena descenente
  df_perc<-df_perc %>% arrange(-Freq) 
  #print(i)
  boxplot(df_perc$Freq)
#}

jpeg("multiple_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("multiple_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("multiple_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()




df_perc<-as.data.frame(prop.table(table(survey$edad)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("edad_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("edad_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("edad_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()
################################################################################
df_perc<-as.data.frame(prop.table(table(survey$lugar_residencia)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("lugar_residencia_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("lugar_residencia_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("lugar_residencia_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$trabaja)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("trabaja_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("trabaja_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("trabaja_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$familiares_graduados)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("familiares_graduados_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("familiares_graduados_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("familiares_graduados_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$conocimiento_plan_estudios)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("conocimiento_plan_estudios_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("conocimiento_plan_estudios_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("conocimiento_plan_estudios_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$conocimiento_areas_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("conocimiento_areas_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("conocimiento_areas_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("conocimiento_areas_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off


df_perc<-as.data.frame(prop.table(table(survey$lugar_test_vocacional)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("lugar_test_vocacional_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("lugar_test_vocacional_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("lugar_test_vocacional_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$resultados_congruentes_test)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("resultados_congruentes_test_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("resultados_congruentes_test_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("resultados_congruentes_test_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$razones_eleccion_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("razones_eleccion_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("razones_eleccion_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("razones_eleccion_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$satisfaccion_docentes)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("satisfaccion_docentes_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("satisfaccion_docentes_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("satisfaccion_docentes_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$opcion_inicial_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("opcion_inicial_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("opcion_inicial_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("opcion_inicial_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$interes_herramienta_tecnologica)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("interes_herramienta_tecnologica_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("interes_herramienta_tecnologica_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("interes_herramienta_tecnologica_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$factores_no_cambio)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("factores_no_cambio_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("factores_no_cambio_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("factores_no_cambio_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$factores_cambio_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("factores_cambio_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("factores_cambio_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("factores_cambio_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$multiple_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("multiple_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("multiple_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("multiple_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$año_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("año_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("año_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("año_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$porcentaje_clases_facultad)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("porcentaje_clases_facultad_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("porcentaje_clases_facultad_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("porcentaje_clases_facultad_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$indice_academico)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("indice_academico_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("indice_academico_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("indice_academico_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$año_reprobacion)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("año_reprobacion_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("año_reprobacion_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("año_reprobacion_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$jornada)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("jornada_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("jornada_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("jornada_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$horas_estudio_diario)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("horas_estudio_diario_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("horas_estudio_diario_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("horas_estudio_diario_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$relaciones_interpersonales.)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("relaciones_interpersonales._boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("relaciones_interpersonales._hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("relaciones_interpersonales._qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$liderazgo)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("liderazgo_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("liderazgo_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("liderazgo_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$calculo_mental)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("calculo_mental_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("calculo_mental_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("calculo_mental_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$juegos_estrategia)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("juegos_estrategia_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("juegos_estrategia_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("juegos_estrategia_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$edad)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("edad_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("edad_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("edad_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$lugar_origen)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("lugar_origen_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("lugar_origen_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("lugar_origen_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$ingreso_mensual)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("ingreso_mensual_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("ingreso_mensual_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("ingreso_mensual_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$familiares_misma_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("familiares_misma_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("familiares_misma_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("familiares_misma_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$asesoria_universitaria)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("asesoria_universitaria_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("asesoria_universitaria_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("asesoria_universitaria_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$previo_test_vocacional)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("previo_test_vocacional_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("previo_test_vocacional_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("previo_test_vocacional_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$momento_test_vocacional)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("momento_test_vocacional_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("momento_test_vocacional_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("momento_test_vocacional_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$conocimiento_test_unah)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("conocimiento_test_unah_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("conocimiento_test_unah_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("conocimiento_test_unah_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$satisfaccion_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("satisfaccion_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("satisfaccion_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("satisfaccion_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$motivacion)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("motivacion_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("motivacion_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("motivacion_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$cambio_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("cambio_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("cambio_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("cambio_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$pensado_cambio_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("pensado_cambio_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("pensado_cambio_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("pensado_cambio_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$veces._cambio_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("veces._cambio_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("veces._cambio_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("veces._cambio_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$nombre_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("nombre_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("nombre_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("nombre_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$nombre_opcion_carrera)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("nombre_opcion_carrera_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("nombre_opcion_carrera_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("nombre_opcion_carrera_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$procentaje_clases_cursadas)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("procentaje_clases_cursadas_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("procentaje_clases_cursadas_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("procentaje_clases_cursadas_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$porcentaje_clases_matematica)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("porcentaje_clases_matematica_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("porcentaje_clases_matematica_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("porcentaje_clases_matematica_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$reprobado)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("reprobado_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("reprobado_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("reprobado_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$reprobado_mas_de_dos)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("reprobado_mas_de_dos_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("reprobado_mas_de_dos_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("reprobado_mas_de_dos_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$estudia_grupo)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("estudia_grupo_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("estudia_grupo_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("estudia_grupo_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$comunicación_oral_escrita.)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("comunicación_oral_escrita._boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("comunicación_oral_escrita._hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("comunicación_oral_escrita._qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()


df_perc<-as.data.frame(prop.table(table(survey$creatividad)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("creatividad_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("creatividad_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("creatividad_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$autodidacta)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("autodidacta_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("autodidacta_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("autodidacta_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$resolucion_puzzles)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("resolucion_puzzles_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("resolucion_puzzles_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("resolucion_puzzles_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()

df_perc<-as.data.frame(prop.table(table(survey$operaciones_matematicas)))
##ordena los dato de Freq con (-) lo ordena descenente
df_perc<-df_perc %>% arrange(-Freq) 
#print(i)
boxplot(df_perc$Freq)
#}

jpeg("operaciones_matematicas_boxplot.jpeg")
boxplot(df_perc$Freq)
dev.off()

jpeg("operaciones_matematicas_hist.jpeg")
hist(df_perc$Freq)
dev.off()

jpeg("operaciones_matematicas_qqnorm.jpeg")
qqnorm(df_perc$Freq)
dev.off()








#Timestamp LISTO                      
#edad                           
#lugar_residencia                
#lugar_origen                   
#trabaja                         
#ingreso_mensual                
#familiares_graduados            
#familiares_misma_carrera       
#conocimiento_plan_estudios      
#asesoria_universitaria         
#conocimiento_areas_carrera      
#previo_test_vocacional         
#lugar_test_vocacional           
#momento_test_vocacional        
#resultados_congruentes_test     
#conocimiento_test_unah         
#razones_eleccion_carrera        
#satisfaccion_carrera           
#satisfaccion_docentes           
#motivacion                     
#opcion_inicial_carrera          
#cambio_carrera                 
#interes_herramienta_tecnologica 
#pensado_cambio_carrera         
#factores_no_cambio              
#veces._cambio_carrera          
#factores_cambio_carrera         
#nombre_carrera                 
#multiple_carrera                
#nombre_opcion_carrera          
#año_carrera                     
#procentaje_clases_cursadas     
#porcentaje_clases_facultad      
#porcentaje_clases_matematica   
#indice_academico                
#reprobado                      
#año_reprobacion                 
#reprobado_mas_de_dos           
#jornada                         
#estudia_grupo                  
#horas_estudio_diario            
#comunicación_oral_escrita.     
#relaciones_interpersonales.     
#creatividad                    
#liderazgo                       
#autodidacta                    
#calculo_mental                  
#resolucion_puzzles             
#juegos_estrategia               
#operaciones_matematicas