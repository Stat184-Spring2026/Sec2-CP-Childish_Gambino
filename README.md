# Project Title
This project will be analyzing the weather patterns and metrics in State College and Philadelphia, Pennsylvania. Our goal is to compare the two cities and show how diverse the state of Pennsylvania is in terms of weather.

## Overview
Pennsylvania is a very diverse state in terms of culture and climate. The western side of the state and the eastern side of the state experience two different weather patters being within the same state. For this experiment, we are going to look at State College in the center of the state (at 1200 ft sea level) and compare it to Philadelphia (at 400 ft sea level) in the East to compare the two and see if sea level has an impact on weather patterns.

### Interesting Insight (Optional)
N/A

## Data Sources and Acknowledgements
The data was pulled from NOAA from this link. The data was readily available and eaily accessible.

## Current Plan
Goals

Main Goal: Our goal as a group is to explore weather trends for the city of State College using temperature and precipitation data from the last 20 years. We will compare this data to the weather data from Philidalphea, a city in the same region with a much lower elavation, to further expand on our analysis.

Sub-goals:

Create professional and accessible data visualizations
Use and maintain our GitHub repository to ensure that each members work is tracable
Produce a reproducible Quarto report that renders to a PDF
Needs

We are going to need the {ggplot2} package to create our plots, and we will need the rest of the tidyverse({dplyr}, {tidyr}, {readr}) for cleaning and reshaping the data. For tables we will need {knitr} and {janitor}. Most importantly, we need the two datasets of State College and Philadalphia's weather data.

Steps

1 - Locate and collect our weather data from the NOAA.gov website
2 - Inspect the raw data to see column names and check if any tidying or wrangling needs to be done before we can begin our analysis
3 - Create the team GitHub repository and add team members
4 - Write and commit both the README.md and plan.md documents to set up the context for the repository
5 - reate a quarto file to begin creating our reproducible data analysis
6 - Add an appropriate YAML header with the required fields added and format set to pdf
7 - In an R code chunk within our .qmd file, specify our coding style and load all packages required for this data (All code chunks should be properly labeled and include comments about the primary author)
8 - In a code chunk labeled weather-wrangling, clean and wrangle the weather data using dplyr and tidyr to reshape the data for further manipulation
9 - Write an Introduction section to introduce the background information and context for the report
10 - Build a polished, informative summary table for our dataset displaying several statistics from the data (Each team member will create a table for the report)
11 - Write an informative narrative text to further explain and describe what the table is meant to illustrate.
12 - Build the plots for our temperature and precipitation data using ggplot2 and ggplot2's design features for accessibility and readability (Each team member will create their own plot with different information being displayed)
13 - Write a powerful and informative narrative on the plots that were created in the previous step.
14 - Construct a Final Review/ Summary section that will discuss the general purpose of our report, and reviewing any discoveries we have made about our data and weather trends
15 - Add a citations page to show where the data we are using came from
16 - Add an auto generated code appendix to the end of the document
17 - Using lintr::lint() to detect and then fix any syntax or style errors within our document
18 - Review the document to ensure that all figures and tables have a valid alt text for accessibility. Ensure that all written narratives for plots and tables are easy to understand and do more than simply describing the appearance of the visualization.
19 - Render the PDF to verify that all tables and figures render properly and make any necessary changes for the formatting or content of our report.

## Repo Structure
Use this section to explain the structure of your repo. This should help visitors quickly figure out where they should look to find certain elements. Further, you can use this space to highlight and briefly explain important/key files in the repo.


## Authors
Evan Grebner - eag5950@psu.edu
Raouf Halabi - rrh5365@psu.edu
Quinn Hughes - qah5033@psu.edu