library(tidyverse)
library(dplyr)

rm(list = ls())
# CHART 1 - Richard
source("../source/food_to_income.R")
median_incomes <- load_median_incomes()
food_2016 <- load_food_insecurity_data(2016)
combined_income_food <- median_incomes %>% left_join(food_2016, by = "county")

# Which counties had the lowest median incomes in Washington in 2016?
lowest_median_incomes <- combined_income_food %>%
  arrange(Household.Income.by.Race) %>%
  top_n(-5, wt = Household.Income.by.Race) %>%
  select(Year, Geography, Household.Income.by.Race)

# Which counties had the highest percentage of child facing food insecurity
# in 2016?
highest_food_insecure <- combined_income_food %>%
  arrange(-food_insecurity_rate) %>%
  top_n(5, wt = food_insecurity_rate) %>%
  select(Year, Geography, food_insecurity_rate)

# Which counties had the lowest median incomes and highest percentage of food
# insecure children in 2016?
low_median_high_insecure <- combined_income_food %>%
  arrange(-food_insecurity_rate, Household.Income.by.Race) %>%
  select(Year, Geography, Household.Income.by.Race, food_insecurity_rate) %>%
  head(5)

# At a later date: what is the difference in income and food insecurity between
# the highest median income, lowest food insecure vs. Whitman (its opposite)?

# CHART 2 - Ella
source("../source/race_and_poverty.R")
# What race has the highest percentage of people below the poverty level in
# Whitman county?
# View(census_data)

most_below_poverty_whitman <- whitman_county %>%
  filter(percent == max(percent, na.rm = TRUE)) %>%
  pull(race) %>%
  str_sub(5, -7)

# What race has the lowest percentage of people below the poverty level in
# Whitman county?
least_below_poverty_whitman <- whitman_county %>%
  filter(percent == min(percent, na.rm = TRUE)) %>%
  pull(race) %>%
  str_sub(5, -7)

# CHART 3 - Adora
source("../source/graduation_rates.R")

# report_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2019-20.csv")
# View(report_data)

graduation_rates <- graduation_rates %>%
  select(County, StudentGroup, GraduationRate)
# View(graduation_rates)

graduation_rates <- graduation_rates %>% drop_na()
# View(graduation_rates)

# What county has the highest graduation rate? (variable: county_highest_rate)
county_highest_rate <- report_data %>%
  filter(GraduationRate == max(GraduationRate, na.rm = TRUE)) %>%
  pull(County) %>%
  unique() %>%
  paste("County")

# What is the lowest graduation rate in Washington? (variable: lowest_grad_rate)
lowest_grad_rate <- report_data %>%
  filter(GraduationRate == min(GraduationRate, na.rm = TRUE)) %>%
  pull(GraduationRate) %>%
  unique()