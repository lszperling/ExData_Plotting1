    source("load_file.R")
    sub <- load_data()
    
    #opens the png file were the result will be writen
    png(filename = "plot4.png",width = 480, height = 480)
    
    #Makes it so that the final plot contains a matrix of 4 plots
    par(mfrow = c(2,2))
    
    #Plot in the top left
    plot(sub$coso, sub$Global_active_power,  type = "l", main="", ylab="Global Active Power", xlab="")

    #Plot in the top right
    plot(sub$coso, sub$Voltage,  type = "l", main="", ylab="Voltage", xlab="")
    
    #Compound plot in the bottom left
    plot(sub$coso, sub$Sub_metering_1,  type = "l", main="", ylab="Energy sub metering", xlab="")
    lines(sub$coso, sub$Sub_metering_2, type= "l", col= "red")
    lines(sub$coso, sub$Sub_metering_3, type= "l", col= "blue")
    legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"))
    
    #plot in the bottom right
    plot(sub$coso, sub$Global_reactive_power,  type = "l", main="", ylab="Global_reactive_power", xlab="")
    
    #prints result into the file and closes it
    dev.off()