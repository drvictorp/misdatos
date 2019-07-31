# 💡Análisis de Normalidad: evaluación R

| **Objetivo**<br>**Outcomes** | En base al box plot de una serie de datos determinar si la serie se ajustan a una distribución Normal . |
| ---------------------------- | ------------------------------------------------------------------------------------------------------- |
| **Datos**                    | Serie de datos abalon:  https://drvcruz.s3.us-east-2.amazonaws.com/abalone.csv                          |
| **Prezi**                    |                                                                                                         |
| **Relacionado**              | - Box plots <br>- Prueba de Shapiro                                                                     |
| **Paquetes**                 | # install.packages("lattice")<br># install.packages("DAAG")<br># install.packages("moments")            |
| **R codes**                  | https://drvcruz.s3.us-east-2.amazonaws.com/Limpio.Rmd                                                   |

## Definiciones Generales
    ```{r setup, include=FALSE}
    knitr::opts_chunk$set(echo = TRUE)
    setwd("C:/Users/Dr.Victor/Dropbox/R code")
    dir()
    ```
## Lectura
    ```{r}
    
    abalone1 <- read.table("https://drvcruz.s3.us-east-2.amazonaws.com/abalone.csv", header = T, sep = ",", dec=".")
    head(abalone1)
    ```


