library(data.table)
library(dplyr)

data <- fread( "sed '1p;/^[12]\\/2\\/2007/!d' household_power_consumption.txt",na.strings = c("?", ""))

png(filename = "Rplot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power,main="Global Active Power",xlab="Global active power (kilowatts)",col="red")
dev.off()