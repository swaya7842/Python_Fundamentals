airquality<-read.csv("~/airquality.csv")
View(airquality)
head(airquality)
Ds1=airquality
Ds2=airquality

View(airquality)
View(airquality[!complete.cases(airquality),]) #It prints rows contaning NA values
View(airquality[complete.cases(airquality),])#It prints rows not contaning NA values
result_mean<-mean(airquality$Ozone)
print(result_mean)
mean(airquality$Ozone,na.rm = TRUE)
max(airquality$Ozone,na.rm = FALSE)
View(max(airquality$Ozone,na.rm = TRUE))
median(airquality$Ozone)
median(airquality$Ozone,na.rm = TRUE)
summary(airquality)
