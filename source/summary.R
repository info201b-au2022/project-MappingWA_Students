library(tidyverse)
library(dplyr)

# CHART 2 - Ella
#source("source/race_and_poverty.R")
# What race has the highest percentage of people below the poverty level in Whitman county?
View(census_data)

most_below_poverty_whitman <- census_data %>%
  filter(percent == max(percent, na.rm = TRUE)) %>%
  pull(race)
most_below_poverty_whitman

# What race has the lowest percentage of people below the poverty level in Whitman county?
least_below_poverty_whitman <- census_data %>%
  filter(percent == min(percent, na.rm = TRUE)) %>%
  pull(race)
least_below_poverty_whitman

# CHART 3 - Adora
source("source/graduation_rates.R")

report_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2019-20.csv")
View(report_data)

graduation_rates <- report_data %>%
  filter(
    str_detect(StudentGroupType, "Race")
  )
View(graduation_rates)

graduation_rates <- graduation_rates %>%
  select(County, StudentGroup, GraduationRate)
View(graduation_rates)

graduation_rates <- graduation_rates %>% drop_na()
View(graduation_rates)

# What county has the highest graduation rate? (variable: county_highest_rate)
county_highest_rate <- report_data %>%
  filter(GraduationRate ==max(GraduationRate, na.rm=TRUE)) %>%
  pull(County)
print(county_highest_rate)  

# What is the lowest graduation rate in Washington? (variable: lowest_grad_rate)
lowest_grad_rate <- report_data %>%
  filter(GraduationRate ==min(GraduationRate, na.rm=TRUE)) %>%
  pull(GraduationRate)
print(lowest_grad_rate)



