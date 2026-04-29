library(tidyverse)
library(knitr)

philadelphia_weather <- read_csv("C:\\Users\\quinn\\OneDrive - The Pennsylvania State University\\Yr2\\Stat184\\GitHub\\Sec2-CP-Childish_Gambino\\PhillyData.csv") |>
  mutate(
    date = as.Date(DATE),
    year = format(date, "%Y"),
    month = as.Date(format(date, "%Y-%m-01")),
    tmax = as.numeric(TMAX),
    tmin = as.numeric(TMIN),
    tobs = as.numeric(TOBS),
    avg_temp = (tmax + tmin) / 2
  ) |>
  select(date, year, month, tmax, tmin, tobs, avg_temp)

state_college_weather <- read_csv("C:\\Users\\quinn\\OneDrive - The Pennsylvania State University\\Yr2\\Stat184\\GitHub\\Sec2-CP-Childish_Gambino\\StateCollegeData.csv") |>
  mutate(
    date = as.Date(DATE),
    year = format(date, "%Y"),
    month = as.Date(format(date, "%Y-%m-01")),
    tmax = as.numeric(TMAX),
    tmin = as.numeric(TMIN),
    tobs = as.numeric(TOBS),
    avg_temp = (tmax + tmin) / 2
  ) |>
  select(date, year, month, tmax, tmin, tobs, avg_temp)

