    source("load_file.R")
    sub <- load_data()
    
    png(filename = "plot4.png",width = 480, height = 480)
    par(mfrow = c(2,2))
    plot(sub$coso, sub$Global_active_power,  type = "l", main="", ylab="Global Active Power", xlab="")
    plot(sub$coso, sub$Voltage,  type = "l", main="", ylab="Voltage", xlab="")
    
    
    plot(sub$coso, sub$Sub_metering_1,  type = "l", main="", ylab="Energy sub metering", xlab="")
    lines(sub$coso, sub$Sub_metering_2, type= "l", col= "red")
    lines(sub$coso, sub$Sub_metering_3, type= "l", col= "blue")
    legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"))
    
    
    plot(sub$coso, sub$Global_reactive_power,  type = "l", main="", ylab="Global_reactive_power", xlab="")
    dev.off()