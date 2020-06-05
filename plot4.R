### plot3
library(lubridate)
library(tidyverse)
setwd("C:/Users/Yapp/OneDrive/coursera/john hopkins data science/Exploratory Data Analysis/ExData_Plotting1")

a <- read.csv("household_power_consumption.txt", sep = ";", colClasses ="character")
a <- a[a$Date == "1/2/2007" | a$Date== "2/2/2007",]
a$Date <- as.Date(a$Date, format = "%d/%m/%Y", origin= "16/12/2006")
a$Time <- hms(a$Time)

png("plot4.png")


par(mfrow=c(2,2), mar = c(4,4,2,1))
plot(a$Global_active_power, type = "l")
plot(a$Voltage, type = "l")
plot(as.numeric(a$Sub_metering_1),
     ylab = "Energy sub metering", 
     type = "l")
lines(a$Sub_metering_2, col="red")
lines(a$Sub_metering_3, col="blue")
legend(1700,39, legend = names(a[,c(7:9)]),
       col = c("black","red","blue"),
       lty=0.5:1, cex=0.6)
plot(a$Global_reactive_power, type = "l")
dev.off()
