library(tidyverse)
library(lubridate)
library(knitr)

philadelphia_weather <- read_csv("philadelphia_weather.csv") |>
  mutate(place = "Philadelphia")

state_college_weather <- read_csv("state_college_weather.csv") |>
  mutate(place = "State College")
