# plot1.R code that creates plot1.png
## Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007.
## Global Active Power visual

setwd("C:/Users/clicq573/Documents/datasciencecoursera/Assignment1_ExploratoryDataAnalysis")


#pull in all household_power_consumption data
all_data <- read.csv("household_power_consumption.txt", header =T, sep=';', na.strings='?')
all_data$Date <- as.Date(all_data$Date, format= "%d/%m/%Y")

#subset the data to only include February 1-2, 2007
subset_data <- subset(all_data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))


#Create the plot1 png file
png("plot1.png", width =480, height = 480)
hist(subset_data$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency", col ="Red")
dev.off()