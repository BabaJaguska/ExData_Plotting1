setwd("C:/Users/Belici/Desktop/mama/COURSERA/explor data/Assign1/")
a<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",nrows=2100000,colClasses="character")
a$Date<-as.Date(a$Date,format="%d/%m/%Y")
Data<-a[which((a$Date=="2007-02-01")|(a$Date=="2007-02-02")),]
Data$Global_active_power<-as.numeric(Data$Global_active_power)

plot(seq_along(Data$Date),Data$Global_active_power,type="l",ylab="Global Active Power (kilowats)",xlab="",xaxt="n")
at <- seq(from = 0, to = nrow(Data), by = nrow(Data)/2)
axis(side = 1, at = at,labels=FALSE)
labels<-c("Thu","Fri","Sat")
text(at,y=-0.5,labels = labels, xpd = TRUE)

png("plot2.png")
