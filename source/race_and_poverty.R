## RESEARCH QUESTION: How are race and poverty related?
## cvs: https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2016.csv

census_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2016.csv", stringsAsFactors = FALSE)
View(census_data)

# DATA WRANGLING
library("tidyverse")

census_data <- gather(census_data, key = counties, value = feature, -Label..Grouping.)
census_data <- spread(census_data, key = Label..Grouping., value = feature)
View(census_data)

# Re-naming columns for clarity
colnames(census_data)[1] = "group_type"
colnames(census_data)[3] = "below_poverty_count"
View(census_data)

census_data %>%
  filter(group_type == "    White alone") |
    (group_type == "    Black or African American alone") |
    (group_type == "    American Indian and Alaska Native alone") |
    (group_type == "    Asian alone") |
    (group_type == "    Native Hawaiian and Other Pacific Islander alone") |
    (group_type == "    Some other race alone") |
    (group_type == "    Two or more races") |
    (group_type == "Hispanic or Latino origin (of any race)") |
    (group_type == "White alone, not Hispanic or Latino")
View(census_data)

  
# race(grouping) > categorical
# below poverty > continuous
# counties > categorical - not using 
  # disregarding counties with this assignment > may opt to do one county then
  # repeat using a function to replicate with all counties provided

# PIE CHART BETWEEN RACIAL GROUPS AND POVERTY
pie()

