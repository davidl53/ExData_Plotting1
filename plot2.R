library(data.table)
library(dplyr)
data <- fread( "sed '1p;/^[12]\\/2\\/2007/!d' household_power_consumption.txt",na.strings = c("?", ""))

x<-(as.character(data$Date))
y<-paste(x,data$Time)
q<-strptime(y, "%d/%m/%Y %T")

png(filename = "Rplot2.png",width = 480, height = 480, units = "px")
plot (q,data$Global_active_power,xlab="",ylab="Global active power (kilowatts)","l")
dev.off()
