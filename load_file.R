#load_data returns a data.table that contains the data read from the csv file
#The returned data.table has only information for the relevant dates (from dates 2007-02-01 and 2007-0202)
load_data <- function() { 
    Sys.setlocale("LC_TIME", "English")
    library(data.table)
    
    date1 <- ymd("2007-02-01")
    date2 <- ymd("2007-02-02")
    data <- fread("household_power_consumption.txt", na.strings = c(',?,',",?,"))
    
    #reformat dates in order to be able to filter by date
    print("Prepairing dates...")
    data$Date <- dmy(data$Date)
    
    print("Subsetting...")
    sub <- subset(data, data$Date == date1  | data$Date == date2)
    
    #reformat colums in order to be able to get the desired stats
    sub$Time <- hms(sub$Time)
    sub$coso = sub$Date + sub$Time
    sub$Global_active_power <- as.numeric(as.character(sub$Global_active_power))
    
    sub
}