### plot2
library(lubridate)
library(tidyverse)
setwd("C:/Users/Yapp/OneDrive/coursera/john hopkins data science/Exploratory Data Analysis/ExData_Plotting1")

a <- read.csv("household_power_consumption.txt", sep = ";", colClasses ="character")
a <- a[a$Date == "1/2/2007" | a$Date== "2/2/2007",]
a$Date <- as.Date(a$Date, format = "%d/%m/%Y", origin= "16/12/2006")
a$Time <- hms(a$Time)

png("plot2.png")
plot(as.numeric(a$Global_active_power),
     ylab = "Global Active Power (kilowatts)", 
     type = "l")
dev.off()

