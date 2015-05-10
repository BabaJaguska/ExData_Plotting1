setwd("C:/Users/Belici/Desktop/mama/COURSERA/explor data/Assign1/")
a<-read.table("household_power_consumption.txt",header=TRUE,na.strings="?",nrows=2100000,colClasses="character")
a$Date<-as.Date(a$Date)
Data<-a[which(a$Date=="01-02-2007"|a$Date=="02-02-2007"),]
Data$Global_active_power<-as.numeric(Data$Global_active_power)
hist(Data$Global_active_power,col="red",xlab="Global Active Power (kilowats)",main="Global Active Power")