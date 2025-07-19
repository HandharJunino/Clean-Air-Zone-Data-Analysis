library(tidyverse)
library(plotly)
library(lubridate)
source("main.R")

df_2018_n <- select(data_2018, Date, Time = time, Nitric_Oxide = "Nitric oxide")
df_2019_n <- select(data_2019, Date, Time = time, Nitric_Oxide = "Nitric oxide")
df_2020_n <- select(data_2020, Date, Time = time, Nitric_Oxide = "Nitric oxide")
df_2021_n <- select(data_2021, Date, Time = time, Nitric_Oxide = "Nitric oxide")
df_2022_n <- select(data_2022, Date, Time = time, Nitric_Oxide = "Nitric oxide")
df_2023_n <- select(data_2023, Date, Time = time, Nitric_Oxide = "Nitric oxide")

df_2018_n$Date <- dmy(df_2018_n$Date)
df_2019_n$Date <- dmy(df_2019_n$Date)
df_2020_n$Date <- dmy(df_2020_n$Date)
df_2021_n$Date <- dmy(df_2021_n$Date)
df_2022_n$Date <- dmy(df_2022_n$Date)
df_2023_n$Date <- dmy(df_2023_n$Date)

dates_2018_n <- df_2018_n %>% filter(Date %in% my_dates)
dates_2019_n <- df_2019_n %>% filter(Date %in% my_dates)
dates_2020_n <- df_2020_n %>% filter(Date %in% my_dates)
dates_2021_n <- df_2021_n %>% filter(Date %in% my_dates)
dates_2022_n <- df_2022_n %>% filter(Date %in% my_dates)
dates_2023_n <- df_2023_n %>% filter(Date %in% my_dates)

poar_nitric_uncleaned <- bind_rows(dates_2018_n, dates_2019_n, dates_2020_n, dates_2021_n, dates_2022_n, dates_2023_n)
poar_nitric <- poar_nitric_uncleaned %>% filter(!is.na(Nitric_Oxide))

poar_nitric$Date <- as.factor(poar_nitric$Date)

nitric_oxide_plot <- ggplot(poar_nitric, aes(Time, Nitric_Oxide)) + geom_point(aes(colour = Date))

ggplotly(nitric_oxide_plot)