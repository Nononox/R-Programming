data <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
usefulData <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
GAP <- as.numeric(levels(usefulData$Global_active_power))[usefulData$Global_active_power]
D = as.Date(usefulData$Date, format = "%d/%m/%Y")
DANDT <- as.POSIXct(paste(D, usefulData$Time), format="%Y-%m-%d %H:%M:%S")
plot(DANDT, GAP, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
