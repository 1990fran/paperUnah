install.packages("corrplot")
rm(list=ls())
library(dplyr)
library(ggplot2)
setwd("/")
setwd("C:/Users/REINA MARIA/Documents/Clases/2020/Formulario")

survey<-read.csv("encuesta_limpia.csv",sep=",", header=T)