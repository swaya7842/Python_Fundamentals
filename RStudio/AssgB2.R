############The dataset#################
airquality <- read.csv("airquality.csv")
View(airquality)
head(airquality)
air=airquality
air1=airquality
###########Errors and corrections########
View(air[!complete.cases(airquality),])# NA Values
View(air[complete.cases(airquality),])# NA Values
result.mean <-  mean(air$Ozone)
print(result.mean)
mean(air$Ozone,na.rm=TRUE) #na stands for unknown 
max(air$Ozone,na.rm=FALSE)
max(air$Ozone,na.rm=TRUE)
median(air$Ozone)
median(air$Ozone,na.rm=TRUE)
summary(air)
##########Data Cleaning – Removing NAs######
air$Ozone=ifelse(is.na(air$Ozone),median(air$Ozone,na.rm=TRUE),air$Ozone)
summary(air)
air$Solar.R=ifelse(is.na(air$Solar.R),median(air$Solar.R,na.rm=TRUE),air$Solar.R)
summary(air)
View(air1)
air1<- na.omit(air1)
summary(air1)
View(air1)
###########Data Transformation############
head(air)
#install.packages("dplyr")
#library(dplyr)
air$Solar.Danger=air$Solar.R>100
head(air)
air
brks=c(0,50,100,150,200,250,300,350)
air$Solar.R=cut(air$Solar.R,breaks = brks,include.lowest = TRUE)
head(air)
air
air2=air
head(air2)
air2$Month=gsub(5,'May',air2$Month)
air2$Month=gsub(6,'June',air2$Month)
air2$Month=gsub(7,'July',air2$Month)
air2$Month=gsub(8,'Aug',air2$Month)
air2$Month=gsub(9,'Sep',air2$Month)
head(air2)
air2
###########Data Integration############
sport <- c("Hockey", "Baseball", "Football")
league <- c("NHL", "MLB", "NFL")
trophy <- c("Stanley Cup", "Commissioner's Trophy", "Vince Lombardi Trophy")
trophies1 <- cbind(sport, league, trophy)
trophies1
# make another data.frame using data.frame()
trophies2 <- data.frame(sport=c("Basketball", "Golf"), league=c("NBA", "PGA"), trophy=c("Larry O'Brien Championship Trophy","Wanamaker Trophy"), stringsAsFactors=FALSE)
trophies2
# combine them into one data.frame with rbind
trophies <- rbind(trophies1, trophies2)
trophies
###########Data Model Building############
require(datasets)
data("airquality")
str(airquality)
head(airquality)
air11=airquality
head(air11)
summary(air11)
for (i in 1:nrow(air11)){
  if(is.na(air11[i,"Ozone"])){
    air11[i,"Ozone"]<-mean(air11[which(air11[,"Month"]==air11[i,"Month"]),"Ozone"],na.rm=TRUE)
  }
  if(is.na(air11[i,"Solar.R"])){
    air11[i,"Solar.R"]<-mean(air11[which(air11[,"Month"]==air11[i,"Month"]),"Solar.R"],na.rm=TRUE)
  }
}
summary(air11)
normalize <- function(x){
  return((x-min(x))/(max(x)-min(x)))
}
air11<-normalize(air11)
summary(air11)
#str(air11)

