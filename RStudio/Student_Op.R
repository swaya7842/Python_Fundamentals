Student_data = data.frame(Student=c("KARAN","ARJUN","RAMESH","SURESH"),
                          Subject=c("ENGLISH","ENGLISH","MATH","MATH"),
                          Marks=c(60,75,65,80))
View(Student_data)
require(reshape)
x=cast(Student_data,Student~Subject,value="Marks")
View(x)
