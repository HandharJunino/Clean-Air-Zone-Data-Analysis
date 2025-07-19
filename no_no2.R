library(tidyverse)
library(plotly)
library(lubridate)
source("main.R")

df_2018_no <- select(data_2018, Date, Time = time, no_as_no2 = "Nitrogen oxides as nitrogen dioxide")
df_2019_no <- select(data_2019, Date, Time = time, no_as_no2 = "Nitrogen oxides as nitrogen dioxide")
df_2020_no <- select(data_2020, Date, Time = time, no_as_no2 = "Nitrogen oxides as nitrogen dioxide")
df_2021_no <- select(data_2021, Date, Time = time, no_as_no2 = "Nitrogen oxides as nitrogen dioxide")
df_2022_no <- select(data_2022, Date, Time = time, no_as_no2 = "Nitrogen oxides as nitrogen dioxide")
df_2023_no <- select(data_2023, Date, Time = time, no_as_no2 = "Nitrogen oxides as nitrogen dioxide")

df_2018_no$Date <- dmy(df_2018_no$Date)
df_2019_no$Date <- dmy(df_2019_no$Date)
df_2020_no$Date <- dmy(df_2020_no$Date)
df_2021_no$Date <- dmy(df_2021_no$Date)
df_2022_no$Date <- dmy(df_2022_no$Date)
df_2023_no$Date <- dmy(df_2023_no$Date)

dates_2018_no <- df_2018_no %>% filter(Date %in% my_dates)
dates_2019_no <- df_2019_no %>% filter(Date %in% my_dates)
dates_2020_no <- df_2020_no %>% filter(Date %in% my_dates)
dates_2021_no <- df_2021_no %>% filter(Date %in% my_dates)
dates_2022_no <- df_2022_no %>% filter(Date %in% my_dates)
dates_2023_no <- df_2023_no %>% filter(Date %in% my_dates)

poar_nitricDioxide_uncleaned <- bind_rows(dates_2018_no, dates_2019_no, dates_2020_no, dates_2021_no, dates_2022_no, dates_2023_no)
poar_nitricDioxide <- poar_nitricDioxide_uncleaned %>% filter(!is.na(no_as_no2))

poar_nitricDioxide$Date <- as.factor(poar_nitricDioxide$Date)

Nitric_Oxide_as_NitrogenDioxide_plot <- ggplot(poar_nitricDioxide, aes(Time, no_as_no2)) + geom_point(aes(colour = Date))

ggplotly(Nitric_Oxide_as_NitrogenDioxide_plot)