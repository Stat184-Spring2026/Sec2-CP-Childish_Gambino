library(tidyverse)
library(knitr)

# wrangle and sort by season, 10 year chunk, and average temps 
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

#make the tables
philadelphia_table <- philadelphia_weather |>
  filter(decade != "Other") |>
  group_by(decade, season) |>
  summarize(
    average_high = round(mean(tmax, na.rm = TRUE), 1),
    average_low = round(mean(tmin, na.rm = TRUE), 1),
    average_temp = round(mean(avg_temp, na.rm = TRUE), 1),
    hottest_day = max(tmax, na.rm = TRUE),
    coldest_day = min(tmin, na.rm = TRUE),
    days_recorded = n(),
    .groups = "drop"
  ) |>
  arrange(decade, factor(season, levels = c("Winter", "Spring", "Summer", "Fall")))

kable(
  philadelphia_table,
  caption = "Philadelphia Temperature Summary by Season and 10-Year Period"
)

state_college_table <- state_college_weather |>
  filter(decade != "Other") |>
  group_by(decade, season) |>
  summarize(
    average_high = round(mean(tmax, na.rm = TRUE), 1),
    average_low = round(mean(tmin, na.rm = TRUE), 1),
    average_temp = round(mean(avg_temp, na.rm = TRUE), 1),
    hottest_day = max(tmax, na.rm = TRUE),
    coldest_day = min(tmin, na.rm = TRUE),
    days_recorded = n(),
    .groups = "drop"
  ) |>
  arrange(decade, factor(season, levels = c("Winter", "Spring", "Summer", "Fall")))

kable(
  state_college_table,
  caption = "State College Temperature Summary by Season and 10-Year Period"
)


philadelphia_monthly <- philadelphia_weather |>
  mutate(month = as.Date(format(date, "%Y-%m-01"))) |>
  group_by(month) |>
  summarize(
    average_temp = mean(avg_temp, na.rm = TRUE),
    .groups = "drop"
  ) |>
  mutate(place = "Philadelphia")

state_college_monthly <- state_college_weather |>
  mutate(month = as.Date(format(date, "%Y-%m-01"))) |>
  group_by(month) |>
  summarize(
    average_temp = mean(avg_temp, na.rm = TRUE),
    .groups = "drop"
  ) |>
  mutate(place = "State College")

combined_monthly <- bind_rows(philadelphia_monthly, state_college_monthly)


