dataset <- read.csv("household_power_consumption.txt", header=TRUE, sep=";")
a <- dataset[dataset$Date=="1/2/2007",]
a1 <- dataset[dataset$Date=="2/2/2007",] 
data <- rbind(a,a1)
data$Global_active_power <- as.numeric(data$Global_active_power)
data$day <- paste(data$Date,data$Time,sep=" ")
data$day <- strptime(data$day,"%d/%m/%Y %H:%M:%S")
plot(data$day,data$Global_active_power, type="l", xlab="",ylab="Global Active Power (kilowatts)")
dev.copy(png,"plot2.png",width=4.8,height=4.8,units="in",res=100)
dev.off()
