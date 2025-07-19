library(tidyverse)
data_2018 <- read_csv("POAR_2018.csv", skip = 4)
data_2019 <- read_csv("POAR_2019.csv", skip = 4)
data_2020 <- read_csv("POAR_2020.csv", skip = 4)
data_2021 <- read_csv("POAR_2021.csv", skip = 4)
data_2022 <- read_csv("POAR_2022.csv", skip = 4)
data_2023 <- read_csv("POAR_2023.csv", skip = 4)

dates <- c("20 December 2018", "3 January 2019", "19 March 2020", "26 March 2020", "29 June 2020", "10 November 2020", "20 December 2020", "3 January 2021", "29 November 2021", "25 July 2022", "24 July 2023")

my_dates <- dmy(dates)

poar_big <- bind_rows(data_2018, data_2019, data_2020, data_2021, data_2022, data_2023)
