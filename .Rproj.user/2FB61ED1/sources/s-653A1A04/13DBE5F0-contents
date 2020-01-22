
# Pre-process data

# Dowloading data if it's not already done
if(!file.exists("stormData.csv.bz2")) {
  download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2",
                destfile = "stormData.csv.bz2", method = "curl")
}

# Loading data
storm_data <- read.csv(bzfile("stormData.csv.bz2"), sep=",", header=T)

# Subset (NOAA) storm database
tidy_storm_data <- storm_data[,c('EVTYPE','FATALITIES','INJURIES', 'PROPDMG', 'PROPDMGEXP', 'CROPDMG', 'CROPDMGEXP')]

# Convert H, K, M, B units to calculate Property Damage 
tidy_storm_data$PROPDMGNUM = 0
tidy_storm_data[tidy_storm_data$PROPDMGEXP == "H", ]$PROPDMGNUM = tidy_storm_data[tidy_storm_data$PROPDMGEXP == "H", ]$PROPDMG * 10^2
tidy_storm_data[tidy_storm_data$PROPDMGEXP == "K", ]$PROPDMGNUM = tidy_storm_data[tidy_storm_data$PROPDMGEXP == "K", ]$PROPDMG * 10^3
tidy_storm_data[tidy_storm_data$PROPDMGEXP == "M", ]$PROPDMGNUM = tidy_storm_data[tidy_storm_data$PROPDMGEXP == "M", ]$PROPDMG * 10^6
tidy_storm_data[tidy_storm_data$PROPDMGEXP == "B", ]$PROPDMGNUM = tidy_storm_data[tidy_storm_data$PROPDMGEXP == "B", ]$PROPDMG * 10^9

# Convert H, K, M, B units to calculate Crop Damage
tidy_storm_data$CROPDMGNUM = 0
tidy_storm_data[tidy_storm_data$CROPDMGEXP == "H", ]$CROPDMGNUM = tidy_storm_data[tidy_storm_data$CROPDMGEXP == "H", ]$CROPDMG * 10^2
tidy_storm_data[tidy_storm_data$CROPDMGEXP == "K", ]$CROPDMGNUM = tidy_storm_data[tidy_storm_data$CROPDMGEXP == "K", ]$CROPDMG * 10^3
tidy_storm_data[tidy_storm_data$CROPDMGEXP == "M", ]$CROPDMGNUM = tidy_storm_data[tidy_storm_data$CROPDMGEXP == "M", ]$CROPDMG * 10^6
tidy_storm_data[tidy_storm_data$CROPDMGEXP == "B", ]$CROPDMGNUM = tidy_storm_data[tidy_storm_data$CROPDMGEXP == "B", ]$CROPDMG * 10^9


