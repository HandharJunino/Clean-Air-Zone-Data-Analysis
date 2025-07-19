library(tidyverse)
library(dygraphs)

myData_2020 <- read_csv("POAR_2020.csv", skip = 4)

myData <- select(myData_2020, Date, Time = time, PM10 = "PM<sub>10</sub> particulate matter (Hourly measured)", Nitric_oxide = "Nitric oxide", Nitrogen_oxides_as_nitrogen_dioxide = "Nitrogen oxides as nitrogen dioxide")

myData$Date <- as.Date(myData$Date)

myData$months <- months(myData$Date)
myData$months <- factor(myData$months, levels = month.name)

myAgg <- aggregate(cbind(PM10, Nitric_oxide, Nitrogen_oxides_as_nitrogen_dioxide) ~ months, myData, mean, na.rm = TRUE)

my_data <- ts(myAgg[, -1], start = c(2020, 1), frequency = 12)
mydy <-  dygraph(my_data) %>% dyRangeSelector()
mydy