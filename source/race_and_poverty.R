# How are Race and Poverty Related?
library("tidyr")
library("tidyverse")
library("stringr")

# all data files by year
census_data_2016 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2016.csv", stringsAsFactors = FALSE)
census_data_2017 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2017.csv", stringsAsFactors = FALSE)
census_data_2018 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2018.csv", stringsAsFactors = FALSE)
census_data_2019 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2019.csv", stringsAsFactors = FALSE)
census_data_2020 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2020.csv", stringsAsFactors = FALSE)


# 2016 data
data_2016 <- census_data_2016 %>%
  gather(key = counties, value = feature, -Label..Grouping.) %>%
  filter(
    str_detect(Label..Grouping., "White alone$") |
      str_detect(Label..Grouping., "Black") |
      str_detect(Label..Grouping., "Native") |
      str_detect(Label..Grouping., "Asian") |
      #str_detect(Label..Grouping., "Some other race") |
      str_detect(Label..Grouping., "Two or more races")
  ) %>%
  filter(
    str_detect(counties, "Percent") &
      !str_detect(counties, "Error")
  ) %>%
  mutate(percent = gsub("%$","",feature))

race_data_2016 <- data_2016 %>%  
  mutate(year = c(rep(2016, nrow(data_2016)))) %>%
  rename(race = Label..Grouping.) %>%
  select(year, race, counties, percent)

# 2017 data
data_2017 <- census_data_2017 %>%
  gather(key = counties, value = feature, -Label..Grouping.) %>%
  filter(
    str_detect(Label..Grouping., "White alone$") |
      str_detect(Label..Grouping., "Black") |
      str_detect(Label..Grouping., "Native") |
      str_detect(Label..Grouping., "Asian") |
      #str_detect(Label..Grouping., "Some other race") |
      str_detect(Label..Grouping., "Two or more races")
  ) %>%
  filter(
    str_detect(counties, "Percent") &
      !str_detect(counties, "Error")
  ) %>%
  mutate(percent = gsub("%$","",feature))
  
race_data_2017 <- data_2017 %>%
  mutate(year = c(rep(2017, nrow(data_2017)))) %>%
  rename(race = Label..Grouping.) %>%
  select(year, race, counties, percent)

# race_data_2017 <- census_data_2017 %>%
#   gather(key = counties, value = feature, -Label..Grouping.) %>%
#   filter(
#     str_detect(Label..Grouping., "White alone$") |
#       str_detect(Label..Grouping., "Black") |
#       str_detect(Label..Grouping., "Native") |
#       str_detect(Label..Grouping., "Asian") |
#       #str_detect(Label..Grouping., "Some other race") |
#       str_detect(Label..Grouping., "Two or more races")
#   ) %>%
#   filter(
#     str_detect(counties, "Percent") &
#       !str_detect(counties, "Error")
#   ) %>%
#   mutate(percent = gsub("%$","",feature)) %>%
#   mutate(year = c(rep(2017, nrow(race_data_2017)))) %>%
#   rename(race = Label..Grouping.) %>%
#   select(year, race, counties, percent)
# #View(race_data_2017)


# 2018 data
data_2018 <- census_data_2018 %>%
  gather(key = counties, value = feature, -Label..Grouping.) %>%
  filter(
    str_detect(Label..Grouping., "White alone$") |
      str_detect(Label..Grouping., "Black") |
      str_detect(Label..Grouping., "Native") |
      str_detect(Label..Grouping., "Asian") |
      #str_detect(Label..Grouping., "Some other race") |
      str_detect(Label..Grouping., "Two or more races")
  ) %>%
  filter(
    str_detect(counties, "Percent") &
      !str_detect(counties, "Error")
  ) %>%
  mutate(percent = gsub("%$","",feature))

race_data_2018 <- data_2018 %>%
  mutate(year = c(rep(2018, nrow(data_2018)))) %>%
  rename(race = Label..Grouping.) %>%
  select(year, race, counties, percent)

# race_data_2018 <- census_data_2018 %>%
#   gather(key = counties, value = feature, -Label..Grouping.) %>%
#   filter(
#     str_detect(Label..Grouping., "White alone$") |
#       str_detect(Label..Grouping., "Black") |
#       str_detect(Label..Grouping., "Native") |
#       str_detect(Label..Grouping., "Asian") |
#       #str_detect(Label..Grouping., "Some other race") |
#       str_detect(Label..Grouping., "Two or more races")
#   ) %>%
#   filter(
#     str_detect(counties, "Percent") &
#       !str_detect(counties, "Error")
#   ) %>%
#   mutate(percent = gsub("%$","",feature)) %>%
#   mutate(year = c(rep(2018, nrow(race_data_2018)))) %>%
#   rename(race = Label..Grouping.) %>%
#   select(year, race, counties, percent)
# #View(race_data_2018)


# 2019 data 
data_2019 <- census_data_2019 %>%
  gather(key = counties, value = feature, -Label..Grouping.) %>%
  filter(
    str_detect(Label..Grouping., "White alone$") |
      str_detect(Label..Grouping., "Black") |
      str_detect(Label..Grouping., "Native") |
      str_detect(Label..Grouping., "Asian") |
      #str_detect(Label..Grouping., "Some other race") |
      str_detect(Label..Grouping., "Two or more races")
  ) %>%
  filter(
    str_detect(counties, "Percent") &
      !str_detect(counties, "Error")
  ) %>%
  mutate(percent = gsub("%$","",feature))
  
race_data_2019 <- data_2019 %>%
  mutate(year = c(rep(2019, nrow(data_2019)))) %>%
  rename(race = Label..Grouping.) %>%
  select(year, race, counties, percent)

# race_data_2019 <- census_data_2019 %>%
#   gather(key = counties, value = feature, -Label..Grouping.) %>%
#   filter(
#     str_detect(Label..Grouping., "White alone$") |
#       str_detect(Label..Grouping., "Black") |
#       str_detect(Label..Grouping., "Native") |
#       str_detect(Label..Grouping., "Asian") |
#       #str_detect(Label..Grouping., "Some other race") |
#       str_detect(Label..Grouping., "Two or more races")
#   ) %>%
#   filter(
#     str_detect(counties, "Percent") &
#       !str_detect(counties, "Error")
#   ) %>%
#   mutate(percent = gsub("%$","",feature)) %>%
#   mutate(year = c(rep(2019, nrow(race_data_2019)))) %>%
#   rename(race = Label..Grouping.) %>%
#   select(year, race, counties, percent)
# #View(race_data_2019)


# 2020 data
data_2020 <- census_data_2020 %>%
  gather(key = counties, value = feature, -Label..Grouping.) %>%
  filter(
    str_detect(Label..Grouping., "White alone$") |
      str_detect(Label..Grouping., "Black") |
      str_detect(Label..Grouping., "Native") |
      str_detect(Label..Grouping., "Asian") |
      #str_detect(Label..Grouping., "Some other race") |
      str_detect(Label..Grouping., "Two or more races")
  ) %>%
  filter(
    str_detect(counties, "Percent") &
      !str_detect(counties, "Error")
  ) %>%
  mutate(percent = gsub("%$","",feature))

race_data_2020 <- data_2020 %>%
  mutate(year = c(rep(2020, nrow(data_2020)))) %>%
  rename(race = Label..Grouping.) %>%
  select(year, race, counties, percent)

# race_data_2020 <- census_data_2020 %>%
#   gather(key = counties, value = feature, -Label..Grouping.) %>%
#   filter(
#     str_detect(Label..Grouping., "White alone$") |
#       str_detect(Label..Grouping., "Black") |
#       str_detect(Label..Grouping., "Native") |
#       str_detect(Label..Grouping., "Asian") |
#       #str_detect(Label..Grouping., "Some other race") |
#       str_detect(Label..Grouping., "Two or more races")
#   ) %>%
#   filter(
#     str_detect(counties, "Percent") &
#       !str_detect(counties, "Error")
#   ) %>%
#   mutate(percent = gsub("%$","",feature)) %>%
#   mutate(year = c(rep(2020, nrow(race_data_2020)))) %>%
#   rename(race = Label..Grouping.) %>%
#   select(year, race, counties, percent)
# #View(race_data_2020)

# Combine all data frames of the different years
census_data <- rbind(race_data_2016, race_data_2017, race_data_2018, race_data_2019, race_data_2020)

census_data <- census_data %>%
  mutate(percent_num = as.numeric(percent)) %>%
  drop_na() %>%
  select(year, race, percent_num)

  

## filtering specific county "Whitman" in 2016 for RMD HTML FILE
whitman_county_2016 <- census_data %>%
  filter(str_detect(counties, "Whitman")) %>%
  filter(year == "2016")



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
  chart <- ggplot(data = whitman_county_2016) +
    geom_bar(
      mapping = aes(x = "", y = percent_num, fill = race),
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
