## Converting dates
data$Datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

png("plot1.png", width = 480, height = 480)
## Generating Plot 2
plot(data$Datetime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
