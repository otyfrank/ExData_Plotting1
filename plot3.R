setwd("/Users/otyfrank/documents/Exploratory Data Analysis/Course Project 1/")

# reading dataset
HPC <- read.table("household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")

# subsetting the data from the dates 2007-02-01 and 2007-02-02
HPC_subset <- HPC[(HPC$Date == "1/2/2007" | HPC$Date == "2/2/2007"),]

# creating variable with date and time
HPC_subset$Date_time <- strptime(paste(HPC_subset$Date, HPC_subset$Time), "%d/%m/%Y %H:%M:%S")

# constructing plot
plot(HPC_subset$Date_time, HPC_subset$Sub_metering_1, ylab = 'Energy sub metering', xlab = '', type = 'l')
lines(HPC_subset$Date_time, HPC_subset$Sub_metering_2, col = "red")
lines(HPC_subset$Date_time, HPC_subset$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 'solid', y.intersp = 0.5)

# saving plot to a PNG file with a width of 480 pixels and a height of 480 pixels
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()