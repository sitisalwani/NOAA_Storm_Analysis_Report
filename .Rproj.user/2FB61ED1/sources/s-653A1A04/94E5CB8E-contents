
# import ggplot2 library to plot the result
library(ggplot2)
# plot number of injuries with the most harmful event type
injuries <- aggregate(INJURIES ~ EVTYPE, data=tidy_storm_data, sum)
injuries <- injuries[order(-injuries$INJURIES), ][1:10, ]
injuries$EVTYPE <- factor(injuries$EVTYPE, levels = injuries$EVTYPE)

ggplot(injuries, aes(x = EVTYPE, y = INJURIES)) + 
  geom_bar(stat = "identity", fill = "red", las = 3) + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + 
  xlab("Event Type") + ylab("Injuries") + ggtitle("Number of injuries by top 10 Weather Events")

dev.copy(png,'plot2.png')
dev.off