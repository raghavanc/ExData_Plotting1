setwd("/Users/raghavanchandran/downloads")
power <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
power$Date <- as.Date(power$Date,"%d/%m/%Y")
## plot - 1
png(file= "plot1.png")
power_flt <- with(power, power[(Date == "2007-02-01"|Date == "2007-02-02" & Global_active_power != '?'),])
power_flt$Global_active_power <- as.numeric(as.character(power_flt$Global_active_power))
hist(power_flt$Global_active_power, xlab = "Global Active power(kilowatts)", main = "Global Active power", col = "red")
dev.off()