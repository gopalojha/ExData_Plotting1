datafile <- file("household_power_consumption.txt")
#data from the dates 2007-02-01 and 2007-02-02
data <- read.table(text = grep("^[1,2]/2/2007", readLines(datafile), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
png("plot3.png", width = 480, height = 480)
## Generating Plot 3
with(data, {
    plot(Sub_metering_1 ~ Datetime, type = "l", 
    ylab = "Global Active Power (kilowatts)", xlab = "")
    lines(Sub_metering_2 ~ Datetime, col = 'Red')
    lines(Sub_metering_3 ~ Datetime, col = 'Blue')
})

legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
