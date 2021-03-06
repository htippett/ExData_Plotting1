# plot2.R code that creates plot2.png
## Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007.
## Global Active Power vs Time

setwd("C:/Users/clicq573/Documents/datasciencecoursera/Assignment1_ExploratoryDataAnalysis")


#pull in all household_power_consumption data and format the date column
all_data <- read.csv("household_power_consumption.txt", header =T, sep=';', na.strings='?')
all_data$Date <- as.Date(all_data$Date, format= "%d/%m/%Y")

#subset the data to only include February 1-2, 2007
subset_data <- subset(all_data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

#Create dateTime column
datetime <- paste(as.Date(subset_data$Date), subset_data$Time)
subset_data$DateTime <- as.POSIXct(datetime)


#Create the plot2 png file
png("plot2.png", width =480, height = 480)
plot(subset_data$Global_active_power ~ subset_data$DateTime,type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()