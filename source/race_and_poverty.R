## RESEARCH QUESTION: How are race and poverty related?
## cvs: https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2016.csv

# race/origin > categorical
# below poverty > continuous
# counties > categorical 


rm(list=ls())
census_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2016.csv", stringsAsFactors = FALSE)
#View(census_data)

# DATA WRANGLING
library("tidyr")
library("stringr")

## Organizing raw data frame and filtering through rows to 
## organize by race as well as through percentage 
## below poverty level
## Notice: Hispanic and Latino categorization is excluded from data

census_data <- census_data %>%
  gather(key = counties, value = feature, -Label..Grouping.) %>%
  filter(
    str_detect(Label..Grouping., "White alone$") |
    str_detect(Label..Grouping., "Black") |
    str_detect(Label..Grouping., "Native") |
    str_detect(Label..Grouping., "Asian") |
    str_detect(Label..Grouping., "Some other race") |
    str_detect(Label..Grouping., "Two or more races")
    ) %>%
  filter(
    str_detect(counties, "Estimate") &
    str_detect(counties, "Below")
  )


## Rename columns with in new data frame

colnames(census_data)[1] = "race_origin"
colnames(census_data)[2] = "counties"
colnames(census_data)[3] = "count"


## filtering specific county "Adams"

census_data <- census_data %>%
  filter(
    str_detect(counties, "Adams")
  )

View(census_data)
##  Adams is the manually entered county name
##  Will eventually be replaced by variable to filter
##  through all the unique counties 


# LOLIPOP CHART FUNCTION
library("ggplot2")

plot_labels <- labs(
  x = "",
  y = "",
  title = "Distribution of Racial Groups Below the Poverty Line",
  subtitle = "Adams County Washington",
  caption = "MappingWA_Students Project",
  alt = "Distribution of Racial Groups Below the Poverty Line in Adams County, WA"
)

pie_chart_race_and_poverty <- function(census_data) {
  chart <- ggplot(census_data) +
    geom_histogram(
      mapping = aes(x = "identity", y = count, fill = race_origin)) + 
      geom_bar(stat = "", width = 1, color = "white") +
      coord_polar("y", start = 0)
  return(chart)
} 

p <- pie_chart_race_and_poverty(census_data)
p

  








