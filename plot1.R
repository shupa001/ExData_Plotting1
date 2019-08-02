#set the working directory
setwd("D:/R/Course 4 - Exloratory Data Analysis")

#load the data and create a subset data
household<-read.table("household_power_consumption.txt",header=T,sep=";",na.string="?")


#subset the data
hsh <- subset(household, Date %in% c("2/1/2007","2/2/2007"))
#covert the factor to date
hsh$Date <- as.Date(hsh$Date,format = "%d/%m/%Y")

#plot 1

hist(hsh$Global_active_power,main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red")
dev.copy(png,file="plot1.png")
dev.off()
