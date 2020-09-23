setwd("/Users/otyfrank/documents/Exploratory Data Analysis/Course Project 1/")

# reading dataset
HPC <- read.table("household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")

# subsetting the data from the dates 2007-02-01 and 2007-02-02
HPC_subset <- HPC[(HPC$Date == "1/2/2007" | HPC$Date == "2/2/2007"),]

# constructing plot
hist(HPC_subset$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "Red")

# saving plot to a PNG file with a width of 480 pixels and a height of 480 pixels
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()