
# import ggplot2 library to plot the result
library(ggplot2)
# plot number of damages with the most harmful event type
damages <- aggregate(PROPDMGNUM + CROPDMGNUM ~ EVTYPE, data=tidy_storm_data, sum)
names(damages) = c("EVTYPE", "TOTALDAMAGE")
damages <- damages[order(-damages$TOTALDAMAGE), ][1:10, ]
damages$EVTYPE <- factor(damages$EVTYPE, levels = damages$EVTYPE)

ggplot(damages, aes(x = EVTYPE, y = TOTALDAMAGE)) + 
  geom_bar(stat = "identity", fill = "red", las = 3) + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + 
  xlab("Event Type") + ylab("Damages ($)") + ggtitle("Property & Crop Damages by top 10 Weather Events")