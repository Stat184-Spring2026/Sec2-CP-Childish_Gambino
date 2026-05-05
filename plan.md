# Initial Course Project Plan


This document contains the active plan for our State College Weather Data Analysis Project

## Goals

**Main Goal:**
Our goal as a group is to explore weather trends for the city of State College using temperature and precipitation data from the last 20 years. We will compare this data to the weather data from Philidalphea, a city in the same region with a much lower elavation, to further expand on our analysis. 

**Sub-goals:**

- Create professional and accessible data visualizations
- Use and maintain our GitHub repository to ensure that each members work is tracable
- Produce a reproducible Quarto report that renders to a PDF

## Needs

We are going to need the {ggplot2} package to create our plots, and we will need the rest of the tidyverse({dplyr}, {tidyr}, {readr}) for cleaning and reshaping the data. For tables we will need {knitr} and {janitor}. Most importantly, we need the two datasets of State College and Philadalphia's weather data. We will also need to render and examine all plots and tables generated to ensure readability. 

## Steps 

1. Initial Project Set Up and Data Collection
    - Locate and collect our two sets of weather data from the NOAA.gov website
    - Inspect the raw data to see column names and verify if any tidying or wrangling should be done for our analysis
    - Create and set up our team Github repository
    - Write and commit the ReadME and plan docuemnts for context and guidence for the project and repository

2. Create the QMD file
    - Create a quarto file and add the YAML header with format set as PDF
    - In an initial R code chunk, specify the coding style used and load required packages for the project
    - Create a code chunk for data wrangling (clean and combine tables for further analysis)

3. Build the Analysis for our Report ( All Code Chunks should have an Author and Reviewer Section and should be properly labeled)
   - Write an Introduction section to explain context and purpose
   - Discuss our Data and it's features (Data Provenance, FAIR AND CARE)
   - Tasks for each team member:
     - Build a polished and informative table for our dataset
     - Build a polished plot using ggplot2
       - Each plot should be of a unique geometry and accessible
     - Write informative narratives for each table and plot created
   
4. Gather Insights and finish sections of the Report
    - Build A Summary/Discussion section that will talk about our overall findings and the purpose of the report
    - Add the Author Contributions Page discussion our share of work
    - Add the Citations page
    - Add an auto generated code appendix to the bottom of our report

5. Polish and Finalize Report
    - Using lintr, find and fix any style or syntax errors that appear in our document
    - Review the final document to ensure that all figures have alt text for accessibility features.
    - Ensure that any written sections and narratives are understandable and insightful and not simply describing what is shown in the visuals.
    - Render the PDF to verify that the document renders properly and make any necesssary formatting changes
    - Final Read of the PDF Report to ensure there are no remaining issues in our code and it is ready for submission


