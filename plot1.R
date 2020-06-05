### plot1
library(lubridate)
library(tidyverse)
setwd("C:/Users/Yapp/OneDrive/coursera/john hopkins data science/Exploratory Data Analysis/ExData_Plotting1")
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, "./Electric power consuption.zip")
list.files()
unzip("./Electric power consuption.zip")
a <- read.csv("household_power_consumption.txt", sep = ";", colClasses ="character")
a <- a[a$Date == "1/2/2007" | a$Date== "2/2/2007",]
a$Date <- as.Date(a$Date, format = "%d/%m/%Y", origin= "16/12/2006")
a$Time <- hms(a$Time)

str(a)
png("plot1.png")
hist(as.numeric(a$Global_active_power), 
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatt)")
dev.off()
