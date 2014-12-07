source("load_file.R")
sub <- load_data()

#opens the png file were the result will be writen
png(filename = "plot1.png",width = 480, height = 480)

hist(sub$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

#prints result into the file and closes it
dev.off()
