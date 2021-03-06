table<-read.csv("household_power_consumption.txt", sep=";", dec = ".", na.strings = "?")
Feb1<-subset(table, table$Date == "1/2/2007")
Feb2<-subset(table, table$Date == "2/2/2007")
Feb12<-rbind(Feb1, Feb2)
hist(Feb12$Global_active_power, col = "red", breaks=15, xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
png("plot1.png", h=480, w=480)
hist(Feb12$Global_active_power, col = "red", breaks=15, xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
