## RESEARCH QUESTION: How are race and poverty related?
## cvs: https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2016.csv

census_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2016.csv", stringsAsFactors = FALSE)
View(census_data)

# DATA WRANGLING
library("tidyverse")

census_data <- gather(census_data, key = counties, value = feature, -Label..Grouping.)
census_data <- spread(census_data, key = Label..Grouping., value = feature)
View(census_data)

censes_data %>%
  rename(
    Label..Grouping. = group_type
    feature =  below_poverty_count
  )
# race(grouping) > categorical
# below poverty > continuous
# counties > categorical
