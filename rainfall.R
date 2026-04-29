rm(list = ls()) # clean up; good hygiene

# Step 1: Load Packages ----
library(tidyverse)
library(ggplot2)
library(dplyr)

# Step 2: Load Data ----
state_college_weather <- read.csv("~/Desktop/penn state/STAT 184/Childish_Gambino/Sec2-CP-Childish_Gambino/state_college_weather.csv", header = TRUE)
philadelphia_weather <- read.csv("~/Desktop/penn state/STAT 184/Childish_Gambino/Sec2-CP-Childish_Gambino/philadelphia_weather.csv", header = TRUE)

# Step 3: Clean and Combine ----
weather_combined <- bind_rows(
  philadelphia_weather |> mutate(City = "Philadelphia"),
  state_college_weather |> mutate(City = "State College")
) |>
  mutate(DATE = as.Date(DATE)) |>
  select(City, STATION, NAME, DATE, TMAX, TMIN, TOBS, PRCP, SNOW, SNWD, WESD, starts_with("WT")) |>
  rename(
    station_id = STATION,
    station_name = NAME,
    date = DATE,
    temp_max = TMAX,
    temp_min = TMIN,
    temp_obs = TOBS,
    precipitation = PRCP,
    snowfall = SNOW,
    snow_depth = SNWD,
    snow_water_equiv = WESD,
    fog = WT01,
    thunder = WT03,
    ice_pellets = WT04,
    hail = WT05,
    freezing_rain = WT06,
    high_wind = WT11
  ) |>
  arrange(City, date)

# Step 4: Plot Development
# Make sure variables are the correct type
weather_combined <- weather_combined |>
  mutate(
    date = as.Date(date),
    precipitation = as.numeric(precipitation)
  )

# Create monthly precipitation totals
weather_monthly <- weather_combined |>
  mutate(month = as.Date(format(date, "%Y-%m-01"))) |>
  group_by(City, month) |>
  summarise(
    total_precipitation = sum(precipitation, na.rm = TRUE),
    .groups = "drop"
  )

# Plot monthly precipitation comparison
precip_plot <- ggplot(weather_monthly, aes(x = month, y = total_precipitation)) +
  geom_line(alpha = 0.3) +
  geom_smooth(se = FALSE) +
  facet_wrap(~ City, ncol = 1) +
  labs(
    title = "Monthly Precipitation Trends",
    subtitle = "Philadelphia vs State College",
    x = "Year",
    y = "Total Monthly Precipitation (inches)"
  ) +
  theme_minimal(base_size = 12) +
  theme(
    strip.text = element_text(face = "bold"),
    plot.title = element_text(size = 16, face = "bold")
  )

precip_plot