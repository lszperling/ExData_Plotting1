    source("load_file.R")
    sub <- load_data()
    
    #opens the png file were the result will be writen
    png(filename = "plot3.png",width = 480, height = 480)
    
    #Create the base plot with one line and the add the other 2 in the same scale
    plot(sub$coso, sub$Sub_metering_1,  type = "l", main="", ylab="Energy sub metering", xlab="")
    lines(sub$coso, sub$Sub_metering_2, type= "l", col= "red")
    lines(sub$coso, sub$Sub_metering_3, type= "l", col= "blue")
    
    #adds the legend to the plot
    legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"))
    
    #prints result into the file and closes it
    dev.off()