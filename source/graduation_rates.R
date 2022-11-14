library("tidyverse")
rm(list = ls())

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

graduation_rates <- graduation_rates %>%
  filter(
    !str_detect(StudentGroup, "Hispanic")
  )
View(graduation_rates)

plot <- ggplot(data = graduation_rates) +
  geom_col(mapping = aes(
    x = StudentGroup,
    y = GraduationRate
  ))
plot

