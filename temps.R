library(tidyverse)
library(knitr)

philadelphia_weather <- read_csv("C:\\Users\\quinn\\OneDrive - The Pennsylvania State University\\Yr2\\Stat184\\GitHub\\Sec2-CP-Childish_Gambino\\PhillyData.csv") |>
  mutate(
    date = as.Date(DATE),
    year = as.numeric(format(date, "%Y")),
    month_num = as.numeric(format(date, "%m")),
    tmax = as.numeric(TMAX),
    tmin = as.numeric(TMIN),
    tobs = as.numeric(TOBS),
    avg_temp = (tmax + tmin) / 2,
    season = case_when(
      month_num %in% c(12, 1, 2) ~ "Winter",
      month_num %in% c(3, 4, 5) ~ "Spring",
      month_num %in% c(6, 7, 8) ~ "Summer",
      month_num %in% c(9, 10, 11) ~ "Fall"
    ),
    decade = case_when(
      year >= 2006 & year <= 2015 ~ "2006-2015",
      year >= 2016 & year <= 2025 ~ "2016-2025",
      TRUE ~ "Other"
    )
  ) |>
  select(date, year, month_num, season, decade, tmax, tmin, tobs, avg_temp)


state_college_weather <- read_csv("C:\\Users\\quinn\\OneDrive - The Pennsylvania State University\\Yr2\\Stat184\\GitHub\\Sec2-CP-Childish_Gambino\\StateCollegeData.csv") |>
  mutate(
    date = as.Date(DATE),
    year = as.numeric(format(date, "%Y")),
    month_num = as.numeric(format(date, "%m")),
    tmax = as.numeric(TMAX),
    tmin = as.numeric(TMIN),
    tobs = as.numeric(TOBS),
    avg_temp = (tmax + tmin) / 2,
    season = case_when(
      month_num %in% c(12, 1, 2) ~ "Winter",
      month_num %in% c(3, 4, 5) ~ "Spring",
      month_num %in% c(6, 7, 8) ~ "Summer",
      month_num %in% c(9, 10, 11) ~ "Fall"
    ),
    decade = case_when(
      year >= 2006 & year <= 2015 ~ "2006-2015",
      year >= 2016 & year <= 2025 ~ "2016-2025",
      TRUE ~ "Other"
    )
  ) |>
  select(date, year, month_num, season, decade, tmax, tmin, tobs, avg_temp)



