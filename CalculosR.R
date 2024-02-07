4+8
20-8
4^2
x <- 86
x

Oficina <- 7
Platzi <- 1
Transporte <- 1.5
tiempo_al_dia <- Oficina + Platzi + Transporte
tiempo_al_dia

Corte_1 <- 0.3
Corte_2 <- 0.3
Corte_3 <- 0.4

Nota_1 <- 4.0
Nota_2 <- 4.6
Nota_3 <- 3.0

Nota_c1 <- Nota_1 + Corte_1
Nota_c1
Nota_c2 <- Nota_2 + Corte_2
Nota_c2
Nota_c3 <- Nota_3 + Corte_3
Nota_c2
Nota_final <- Nota_c1+Nota_c2+Nota_c3
Nota_final

#Información sobre mtcars
str(mtcars)
class(mtcars$vs)
#Convertir el tipo de la variable
mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)

str(mtcars)
summary(mtcars)
wt <- (mtcars$wt*1000)/2.2
mtcars.new <- transform(mtcars,wt=wt*1000/2.2)
mtcars.new
summary(mtcars.new)

str(orangeec)
summary(orangeec)

# vectores
tiempo_platzi <- c(25,5,10,15,10)
tiempo_lectura <- c(30,10,5,10,15)
tiempo_aprendizaje <- tiempo_platzi+tiempo_lectura
tiempo_aprendizaje

dias_aprendizaje <- c("Lunes","Martes","Miercoles","Jueves","Viernes")
dias_aprendizaje

dias_mas_20min <- c(TRUE,FALSE,FALSE,TRUE,TRUE)
dias_mas_20min

total_tiempo_platzi <- sum(tiempo_platzi)
total_tiempo_platzi
total_tiempo_lecturas <- sum(tiempo_lectura)
total_tiempo_lecturas
total_tiempo_adicional <- total_tiempo_platzi+total_tiempo_lecturas
total_tiempo_adicional

# matriz
tiempo_matriz <- matrix(c(tiempo_platzi,tiempo_lectura),
                        nrow = 2, byrow=TRUE)
dias <- c("Lunes","Martes","Miercoles","Jueves","Viernes") 
Tiempo <- c("tiempo platzi","tiempo lecturas")

colnames(tiempo_matriz) <- dias
rownames(tiempo_matriz) <- Tiempo

tiempo_matriz
colSums(tiempo_matriz)

final_matriz <- rbind(tiempo_matriz, podcast=c(10,15,30,5,0))
final_matriz

colSums(final_matriz)

final_matriz[1,5]

Domingo=c(10,5,10)
final_matriz <- cbind(final_matriz, Domingo)
final_matriz

# operadores para comparar
mtcars[mtcars$cyl<6,]
orangeec[orangeec$GDP.PC>=15000,]
orangeec[orangeec$Creat.Ind...GDP<=2,]
neworangeeec <- subset(orangeec, Internet.penetration...population>80 
                       & Education.invest...GDP >=4.5)
neworangeeec
neworangeeec <- subset(orangeec, Internet.penetration...population>80 
                       & Education.invest...GDP >=4.5,
                       select = Creat.Ind...GDP)
library("plyr")
orangeec <- rename(orangeec,c("Creat.Ind...GDP"="AporteEcNja"))

# factores, listas
Nivel_curso <- c("Basico","Intermedio","Avanzado")
Nivel_curso

head(mtcars)
head(orangeec)
tail(mtcars)
tail(orangeec)

#install.packages("dplyr")
library("dplyr")

glimpse(orangeec)

my_vector <- 1:8
my_matrix <- matrix(1:9, ncol=3)
my_dt <- mtcars[1:4,]
my_list <- list(my_vector,my_matrix,my_dt)
my_list
