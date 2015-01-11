library(data.table)
library(dplyr)
data <- fread( "sed '1p;/^[12]\\/2\\/2007/!d'  household_power_consumption.txt",na.strings = c("?", ""))


x<-(as.character(data$Date))
y<-paste(x,data$Time)
q<-strptime(y, "%d/%m/%Y %T")


png(filename = "Rplot3.png",width = 480, height = 480, units = "px")
plot (q,data$Sub_metering_1,xlab="",ylab="Global Active Power","l")
points (q,data$Sub_metering_2,"l",col="red")
points (q,data$Sub_metering_3,"l",col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),  col=c("black","red","blue"), lty=c(1,1,1))
dev.off()