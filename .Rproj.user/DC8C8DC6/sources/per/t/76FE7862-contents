library(tidyverse)
library(plotly)
library(lubridate)
source("main.R")

pm10x <- select(poar_big, Date, Time = time, PM10 = "PM<sub>10</sub> particulate matter (Hourly measured)")

pm10x$Date <- dmy(pm10x$Date) 

pm10x_filtered <- pm10x %>% filter(Date %in% my_dates)

poar_pm10_uncleaned <- bind_rows(dates_2018, dates_2019, dates_2020, dates_2021, dates_2022, dates_2023) 
poar_pm10 <- poar_pm10_uncleaned %>% filter(!is.na(PM10))

poar_pm10$Date <- as.factor(poar_pm10$Date)

pm10_plot <- ggplot(poar_pm10, aes(Time, PM10)) + geom_point(aes(colour = Date))

ggplotly(pm10_plot)