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
## Librerias
    ```{r}
    # install.packages("lattice")
    # install.packages("DAAG")
    library(lattice)
    library(DAAG)
    ```
## Creamos un Subset de datos
    ```{r}
    fossum <- subset(abalone1, Sex=="F")
    attach(fossum)
## Generamos un boxplot y su Histrograma del subset
    boxplot(Length ~ Sex)
    
    hist(Length)
    hist(Length,22)
    ```
## Comparación con la Curva Normal
    ```{r}
    x=fossum[,2]
    
    boxplot(x,main= "Longitud de Muestras Female" ,xlab="Female", ylab="Length")
    
    xbar = mean(Length)
    S = sd(Length)
    xbar
    
    hist(x, freq = F, col="gray")
    curve(dnorm(x,xbar,S),col = 4,add = T)
    ```
## Análisis de Normalidad
    ```{r}
    qqnorm(x)
    qqline(x,col=4)
    shapiro.test(x)
    ```
## Curtosis y Asimetria
    ```{r}
    # install.packages("moments")
    
    library(moments)
    skewness(x)
    kurtosis(x)
    ```
## Resumen de Gráficas
    ```{r}
    # Graficamos ahora todo junto
    # par(mfcol=c(2,2))
    
     par(mfrow=c(2,3))
    boxplot(x,main= "Longitud de Muestras Female" ,xlab="Female", ylab="Length")
    
    hist(x, freq = F, col="gray")
    curve(dnorm(x,xbar,S),col = 4,add = T)
    qqnorm(x)
    qqline(x,col=4)
    ```


## Ideas

Consulta con el grupo para seguir progresando

    
----------
## Próximos pasos
[ ] Sé creativo, @alguien
[ ] De "hay que hacerlo" a "hecho", @alguien

