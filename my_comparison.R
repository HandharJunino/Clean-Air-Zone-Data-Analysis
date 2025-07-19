library(tidyverse)
library(plotly)

source("pm10.R")

pm10_compare <- bind_rows(df_2020, df_2021, df_2022)

pm10_compare$months <- months(pm10_compare$Date)
pm10_compare$months <- factor(pm10_compare$months, levels = month.name)

pm10_compare$year <- year(pm10_compare$Date)
pm10_compare$month <- month(pm10_compare$Date, label = TRUE)

pm_10_avg_agg <- pm10_compare %>%
  group_by(year, month) %>%
  summarise(avg_PM10 = mean(PM10, na.rm = TRUE))

my_comp_bar <- ggplot(pm_10_avg_agg, aes(x = month, y = avg_PM10, fill = factor(year))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Month", y = "Average PM10", fill = "Year") +
  ggtitle("Average PM10 by Month and Year") +
  theme_minimal()

ggplotly(my_comp_bar)