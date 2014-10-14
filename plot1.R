dataset <- read.csv("household_power_consumption.txt", header=TRUE, sep=";")
a <- dataset[dataset$Date=="1/2/2007",]
a1 <- dataset[dataset$Date=="2/2/2007",] 
data <- rbind(a,a1)
data$Global_active_power <- as.numeric(data$Global_active_power)
hist(data$Global_active_power/1000, col="Red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png,"plot1.png",width=4.8,height=4.8,units="in",res=100)
dev.off()
