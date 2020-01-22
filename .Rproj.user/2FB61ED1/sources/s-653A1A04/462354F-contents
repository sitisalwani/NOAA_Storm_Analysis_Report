# Plot 1
# import ggplot2 library to plot the result

library(ggplot2)
# plot number of fatalities with the most harmful event type
fatality <- aggregate(FATALITIES ~ EVTYPE, data=tidy_storm_data, sum)
fatality <- fatality[order(-fatality$FATALITIES), ][1:10, ]
fatality$EVTYPE <- factor(fatality$EVTYPE, levels = fatality$EVTYPE)

ggplot(fatality, aes(x = EVTYPE, y = FATALITIES)) + 
  geom_bar(stat = "identity", fill = "red", las = 3) + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + 
  xlab("Event Type") + ylab("Fatalities") + ggtitle("Number of fatalities by top 10 Weather Events")

dev.copy(png,'plot1.png')
dev.off
