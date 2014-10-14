dataset <- read.csv("household_power_consumption.txt", header=TRUE, sep=";")
a <- dataset[dataset$Date=="1/2/2007",]
a1 <- dataset[dataset$Date=="2/2/2007",] 
data <- rbind(a,a1)
data$day <- paste(data$Date,data$Time,sep=" ")
data$day <- strptime(data$day,"%d/%m/%Y %H:%M:%S")
plot(data$day,data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", ylim=range(c(data$Sub_metering_1,data$Sub_metering_2,data$Sub_metering_3)))
par(new=TRUE)
plot(data$day,data$Sub_metering_2,col="Red", type="l",axes=FALSE, xlab="", ylab="", ylim=range(c(data$Sub_metering_1,data$Sub_metering_2,data$Sub_metering_3)))
par(new=TRUE)
plot(data$day,data$Sub_metering_3,col="Blue", type="l",axes=FALSE, xlab="", ylab="", ylim=range(c(data$Sub_metering_1,data$Sub_metering_2,data$Sub_metering_3)))
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),pch="-", col=c("Black","Red","Blue"))
dev.copy(png,"plot3.png",width=6,height=6,units="in",res=80)
dev.off()
