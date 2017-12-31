data <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
usefulData <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
with(usefulData, hist(as.numeric(levels(usefulData$Global_active_power))[usefulData$Global_active_power], xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red"))
