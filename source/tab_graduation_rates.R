library("tidyr")
library("tidyverse")
library("stringr")
library("dplyr")

df_2015 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2015-16.csv")
df_2016 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2016-17.csv")
df_2017 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2017-18.csv")
df_2018 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2018-19.csv")
df_2019 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2019-20.csv")

grad_rates_2015 <- df_2015 %>%
  select(County, StudentGroup, GraduationRate) %>%
  group_by(StudentGroup) %>%
  summarize("Average Graduation Rate" = mean(GraduationRate, na.rm = TRUE))


  
