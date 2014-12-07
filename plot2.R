source("load_file.R")
sub <- load_data()

#opens the png file were the result will be writen
png(filename = "plot2.png",width = 480, height = 480)

plot(sub$coso, sub$Global_active_power,  type = "l", main="", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()