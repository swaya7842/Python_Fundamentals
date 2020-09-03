airquality<-read.csv("~/airquality.csv")
View(airquality)
head(airquality)
ds1=airquality
ds2=airquality


head(ds1)
ds1
interval=c(0,50,100,150,200,250,300,350)
ds1$Solar.R=cut(ds1$Solar.R,breaks = interval,include.lowest = TRUE)
head(ds1)
ds1

head(ds2)
ds2$Month=gsub(5,'May',ds2$Month)
ds2$Month=gsub(6,'June',ds2$Month)
ds2$Month=gsub(7,'July',ds2$Month)
ds2$Month=gsub(8,'August',ds2$Month)
ds2$Month=gsub(9,'September',ds2$Month)
head(ds2)
ds2
