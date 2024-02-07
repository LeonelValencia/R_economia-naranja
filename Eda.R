#EDA Scatter plot mtcars
plot(mtcars$mpg ~ mtcars$cyl,
     xlab="cilindros", ylab="millas por galon",
     main="Relacion cilindros y millas por galon")

plot(mtcars$mpg ~ mtcars$hp,
     xlab="cabllos de fuerza", ylab="millas por galon",
     main="Relacion caballos de fuerza y millas por galon")

plot(orangeec$Unemployment ~ orangeec$Education.invest...GDP,
     xlab="inversion educacion(%PIB)", ylab="Desempleo",
     main="Relacion Inversion en educacion y desempleo")

plot(orangeec$GDP.PC ~ orangeec$Services...GDP,
     xlab="Aporte economia naranja al PIB(%)", ylab="PIB per capita",
     main="Relacion economia naranja y pib per capita")

install.packages("ggplot2")
#histograma mtcars qplot
hist(mtcars$hp,
      xlab="Caballos de fuerza",
      main="caballos de fuerza")

ggplot(mtcars, aes(x=hp))+
  geom_histogram()+
  labs(x="Caballos de fuerza",y="Cantidad de carros",
       title = "Caballosde fuerza en carros seleccionados")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(x=hp))+
  geom_histogram(binwidth = 30)+
  labs(x="Caballos de fuerza",y="Cantidad de carros",
       title = "Caballosde fuerza en carros seleccionados")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot()+geom_histogram(data=mtcars,
                        aes(x=hp),fill="blue",color="red",
                        binwidth = 20)+
  labs(x="Caballos de fuerza",y="Cantidad de carros",
       title = "Caballosde fuerza en carros seleccionados")+
  xlim(c(80,280))+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#hist orangeec
ggplot()+geom_histogram(data=orangeec,
                        aes(x=GDP.PC),fill="blue",color="red",
                        binwidth = 2000)+
  labs(x="pib per capita",y="Cantidad de paises",
       title = "pip percapita en paises latam")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot()+geom_histogram(data=orangeec,
                        aes(x=AporteEcNja),fill="blue",color="red",
                        binwidth = 1)+
  labs(x="aporte economia naraca al pib(%)",y="Cantidad de paises",
       title = "contribucion economia naranja al pib(%) en paises latam")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot()+geom_histogram(data=orangeec,
                        aes(x=Internet.penetration...population),fill="red",color="yellow",
                        binwidth = 5)+
  scale_x_continuous(breaks = seq(40, max(100), 5))+
  labs(x="Penetracion internet (%) poblacion",y="Cantidad de paises",
       title = "Penetracion internet en paises latam")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#boxplot
boxplot(mtcars$hp,
        ylab='caballos de fuerza',
        main='caballos de fuerza en carros mtcars')

ggplot(mtcars,aes(x=as.factor(cyl),y=hp,fill=cyl))+
  geom_boxplot(alpha=0.6)+
  labs(x='cilindros',y='caballos de fuerza',
       title='Caballos de fuerza segun cilindros en mtcars')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars,aes(x=am,y=mpg,fill=am))+
  geom_boxplot()+
  labs(x='tipo de caja',y='millas por galon',
       title='Millas por galon segun tipo de caja mtcars')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

mtcars$am <- factor(mtcars$am, levels=c(TRUE,FALSE),
                    labels=c("Manual","Automatico"))

economy <- mean(orangeec$GDP.PC)
economy
#library(dplyr)
orangeec <- orangeec %>%
  mutate(Strong_economy= ifelse(GDP.PC <economy,
                                'Por debajo promedio pib per capita',
                                'Arriba promedio pib per capita'))

ggplot(orangeec,aes(x=Strong_economy,y=AporteEcNja,
                    fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x='Tipo de pais',y='Aporte economia naranja al pib',
       title='Aporte economia naranja en pib  paises latam con alto y bajo pib per capita')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(orangeec,aes(x=Strong_economy,y=Internet.penetration...population,
                    fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x='Tipo de pais',y='penetracion de internet(%)',
       title='Penetracion de internet en  paises latam con alto y bajo pib per capita')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#scatter plot con ggplot en mtcars - dos variables
ggplot(mtcars, aes(hp,mpg))+
  geom_point()+
  labs(x='caballos de fuerza',y='Millas por galon',
       title='Relacion caballos de fuerza y  millas por galon')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(wt,hp))+
  geom_point()+
  labs(x='Peso',y='caballos de fuerza',
       title='Relacion caballos de fuerza y  peso')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(hp,qsec))+
  geom_point(aes(color=am, size=cyl))+
  labs(x='caballos de fuerza',y='Tiempo en 1/4 de milla',
       title='Caballos velocidad segun cilindraje y tipo de caja')

ggplot(orangeec, aes(Internet.penetration...population,AporteEcNja))+
  geom_point(aes(color=factor(Strong_economy), size=GDP.Growth..))+
  labs(x='Penentracion internet',y='Aporte economia naraja al pib',
       title='Internet y aporte economia naranja segun economia y crecimiento pib')

#color=strong economy tamano=% debajo de la linea de pobreza
ggplot(orangeec, aes(Education.invest...GDP,Unemployment))+
  geom_point(aes(color=factor(Strong_economy), size=X..pop.below.poverty.line))+
  labs(x='Educacion',y='Desempleo',
       title='Educacion y desempleo segun economia y linea debajo de pobreza')

#scatter plot interactivo
install.packages("plotly")
library("plotly")

my_graph <- ggplot(orangeec, aes(Internet.penetration...population,
                                 AporteEcNja,label=Country))+
  geom_point()+
  labs(x='Penetracion internet',y='Aporte economi naranja',
       title='Penetracion Internet y aporte ecnonomia naranja')

my_graph

p= ggplotly(my_graph)
p

setwd("C:/Users/VALENCIA/Documents/cursos/fundamentos-R")

#buscando correlaciones con pairs
pairs(mtcars[,2:6])

newdata <- subset(mtcars, select=c(2,7:8,11,12))
pairs(newdata)

pairs(mtcars[,-c(1,3,4,5,6,9,10)])

#library(dplyr)
Eficientes <- filter(mtcars, mpg>=30)
Eficientes

pairs(Eficientes[,2:6])

library(stringr)

merc <- mtcars %>%
  filter(str_detect(model,"Merc"))
merc

pairs(merc[,2:6])


# correlaciones con cor
cor(mtcars[,2:6])
cor(newdata)
cor(merc[,2:6])

pairs(orangeec[,2:6])
pairs(orangeec[,5:10])
newdata <- subset(orangeec,select=c(5,6,10,11,12,13))
newdata
pairs(newdata)

cor(orangeec[,2:6], use="complete.obs")
cor(orangeec[,5:10],use="complete.obs")
cor(newdata,use="complete.obs")


## protegiendonos de los peligros del promedio
summary(mtcars)
prom <- mean(mtcars$mpg)
prom
desv <- sd(mtcars$mpg) #desviacion estandar
desv
coefvar <- (desv/prom)*100
coefvar


desv <- sd(orangeec$Internet.penetration...population)
desv
prom <- mean(orangeec$Internet.penetration...population)
prom
coefvar <- (desv/prom)*100
coefvar
summary(orangeec)

prom <- mean(orangeec$AporteEcNja, na.rm = TRUE)
desv <- sd(orangeec$AporteEcNja, na.rm = TRUE)
coefvar <- (desv/prom)*100
coefvar

#Ajustando datos para mejorar visualizaciones
eficientes <- mean(mtcars$mpg)
eficientes
#Para agregar nueva columna, con una nueva variable en el dataset
mtcars <- mtcars %>%
  mutate(Mas_eficientes=ifelse(mpg<eficientes,
                               "bajo promedio","en ó sobre promedio"))
Mas_veloces <- mtcars[mtcars$qsec<16,]
Mas_veloces
mtcars <- mtcars %>%
  mutate(Velocidad_Cuarto_milla=ifelse(qsec<16,
                                       "Menos 16 segs",
                                       "Mas 16 segs"))
mtcars <- mtcars %>%
  mutate(Peso_kilos=(wt/2)*1000)
mtcars <- mtcars %>%
  mutate(Peso=ifelse(Peso_kilos <= 1500,
                     "Livianos","Pesados"))

orangeec <- orangeec %>%
  mutate(Crecimiento_GDP = ifelse(GDP.Growth..>=2.5,
                          "2.5% o más","Menos 2.5%"))
orangeec <- orangeec %>%
  mutate(Anaranjados=ifelse(AporteEcNja>=2.5,
                    "Mas anaranjados","Menos anaranjados"))
#ranking
orangeec %>%
  arrange(desc(AporteEcNja))
TopNaranjas <- orangeec %>%
  filter(Country %in% c("Mexico","Panama","Paraguay",
                        "Argentina","Colombia","Brazil"))
TopNaranjas
TopNaranjas %>%
  arrange(desc(AporteEcNja))

#TopNaranjas <- top_n(orangeec,3,AporteEcNja )
mtcars %>%
  arrange(desc(Peso_kilos))

Mas_pesados <- mtcars %>%
  filter(model %in% c("Lincoln Continental","Chrysler Imperial",
                      "Cadillac Fleetwood","Merc 450SE"))
Mas_pesados

ggplot(Mas_pesados, aes(x=hp, y=mpg))+
  geom_point()+
  facet_wrap(~model)

ggplot(mtcars, aes(x=cyl, y=mpg, size=Peso))+
  geom_point()+
  facet_wrap(~am)

ggplot(mtcars, aes(x=cyl, y=mpg, size=Peso_kilos))+
  geom_point(aes(color=Peso))+
  facet_wrap(~am)

ggplot(TopNaranjas, aes(x=Internet.penetration...population,
                        y=Services...GDP, size=GDP.PC))+
  geom_point()+
  facet_wrap(~Country)

ggplot(TopNaranjas, aes(x=Education.invest...GDP,
                        y=AporteEcNja, size=Unemployment))+
  geom_point()+
  facet_wrap(~Country)

install.packages("RColorBrewer")
library("RColorBrewer")

myColors <- brewer.pal(9,"Reds")

ggplot(TopNaranjas, aes(x=Internet.penetration...population,
                        y=GDP.PC, fill=AporteEcNja))+
  geom_tile()+
  facet_wrap(~Country)+
  scale_fill_gradientn(colors = myColors)


# conociendo r markdown
install.packages("rmarkdown")
install.packages("knitr")
library(rmarkdown)
library(knitr)
