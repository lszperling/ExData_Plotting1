    source("load_file.R")
    sub <- load_data()
    
    png(filename = "plot3.png",width = 480, height = 480)
    
    
    plot(sub$coso, sub$Sub_metering_1,  type = "l", main="", ylab="Energy sub metering", xlab="")
    lines(sub$coso, sub$Sub_metering_2, type= "l", col= "red")
    lines(sub$coso, sub$Sub_metering_3, type= "l", col= "blue")
    legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"))
    
    dev.off()