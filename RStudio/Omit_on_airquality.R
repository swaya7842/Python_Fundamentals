airquality<-read.csv("~/airquality.csv")
View(airquality)
head(airquality)
Ds1=airquality
Ds2=airquality

airquality$Ozone=ifelse(is.na(airquality$Ozone),median(airquality$Ozone,na.rm = TRUE),airquality$Ozone)
summary(airquality)
airquality$Solar.R=ifelse(is.na(airquality$Solar.R),median(airquality$Solar.R,na.rm = TRUE),airquality$Solar.R)
summary(airquality)
View(Ds1)
ds1<-na.omit(Ds1)
summary(Ds1)
View(Ds1)
