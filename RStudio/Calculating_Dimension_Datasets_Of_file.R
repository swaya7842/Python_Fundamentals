first_ds=read.csv("fb.csv")
second_ds=read.csv("fb_1.csv")
dim(first_ds)
dim(second_ds)
newdata=rbind(first_ds,second_ds)
dim(newdata)
View(newdata)
newdata1=cbind(first_ds,second_ds)
dim(newdata1)
View(newdata1)
