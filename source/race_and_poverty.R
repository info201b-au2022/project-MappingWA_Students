# How are Race and Poverty Related?
# cvs: https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2016.csv

# rm(list=ls())
census_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2016.csv", stringsAsFactors = FALSE)
# View(census_data)

# DATA WRANGLING
library("tidyr")
library("stringr")

## Organizing raw data from 2016 by row to only include
## race categorization and estimates amount of people within
## those groups under the poverty line. 
## NOTICE: Hispanic and Latino categorization is excluded from data
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
    str_detect(counties, "Percent") &
    !str_detect(counties, "Error")
  )


## Rename columns with in new data frame
colnames(census_data)[1] <- "race"
colnames(census_data)[2] <- "counties"
colnames(census_data)[3] <- "percent"

## filtering specific county "Whitman"
whitman_county <- census_data %>%
  filter(
    str_detect(counties, "Whitman")
  )
# View(census_data)
##  Whitman is the manually entered county name
##  Will eventually be replaced by variable to filter
##  through all the unique counties 


# PIE CHART FUNCTION
library("ggplot2")

plot_labels <- labs(
  x = "",
  y = "",
  title = "Distribution of Racial Groups Below the Poverty Line",
  subtitle = "Whitman County Washington, 2016",
  caption = "MappingWA_Students Project",
  alt = "Distribution of Racial Groups Below the Poverty Line in Adams County, WA, 2016"
)


## chart function
pie_chart_race_and_poverty <- function(census_data) {
  chart <- ggplot(data = census_data) +
    geom_bar(
      mapping = aes(x = "", y = percent, fill = race),
      stat = "identity",
      width = 1,
    ) +
    coord_polar("y", start = 0) +
    plot_labels +
    theme(
      axis.text = element_blank()
    )
  return(chart)
}


p <- pie_chart_race_and_poverty(census_data)
p
