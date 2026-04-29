library(tidyverse)
library(knitr)

philadelphia_weather <- read_csv("C:\\Users\\quinn\\OneDrive - The Pennsylvania State University\\Yr2\\Stat184\\GitHub\\Sec2-CP-Childish_Gambino\\PhillyData.csv") |>
  mutate(place = "Philadelphia")

state_college_weather <- read_csv("C:\\Users\\quinn\\OneDrive - The Pennsylvania State University\\Yr2\\Stat184\\GitHub\\Sec2-CP-Childish_Gambino\\StateCollegeData.csv") |>
  mutate(place = "State College")
