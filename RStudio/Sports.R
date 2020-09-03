sport<-c("Kabbadi","Khokho","Cricket")
league<-c("KPL","KHPL","CPL")
trophy<-c("Kabbadi Cup","Khokho cup","Cricket cup")

trophies1<-cbind(sport,league,trophy)
trophies1

trophies2 <- data.frame(sport=c("Basketball","Golf"),
                        league=c("NBA","PGA"),
                        trophy=c("Larry o Brien championship Trophy",
                                 "Wanamaker Trophy"),
                        stringsAsFactors = FALSE)
trophies2

trophies<-rbind(trophies1,trophies2)
trophies
