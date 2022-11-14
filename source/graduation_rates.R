library(tidyverse)

report_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2019-20.csv")

graduation_rates <- report_data %>%
  select(County, StudentGroup, GraduationRate)
view(graduation_rates)

report_data <- report_data %>%
  

plot <- ggplot(data = graduation_rates) +
  geom_col(mapping = aes(
    x = StudentGroup,
    y = GraduationRate
  ))
plot
