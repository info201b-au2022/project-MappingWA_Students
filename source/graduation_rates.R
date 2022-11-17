library("tidyverse")
# rm(list = ls())

report_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2019-20.csv")
# View(report_data)

graduation_rates <- report_data %>%
  filter(
    str_detect(StudentGroupType, "Race")
  )
# View(graduation_rates)

graduation_rates <- graduation_rates %>%
  select(County, StudentGroup, GraduationRate)
# View(graduation_rates)

graduation_rates <- graduation_rates %>% drop_na()
# View(graduation_rates)

graduation_rates <- graduation_rates %>%
  filter(!str_detect(StudentGroup, "Hispanic"))

# Rename student group values to fit in chart display.
graduation_rates[graduation_rates == "American Indian/ Alaskan Native"] <-
  "American Indian/\nAlaskan Native"
graduation_rates[graduation_rates == "Black/ African American"] <-
  "Black/\nAfrican American"
graduation_rates[graduation_rates == "Native Hawaiian/ Other Pacific Islander"] <-
  "Native Hawaiian/\nOther Pacific Islander"

bar_chart <- function(df) {
  plot <- ggplot(data = df) +
    geom_col(
      mapping = aes(
        x = StudentGroup,
        y = GraduationRate
      )
    ) +
    scale_x_discrete(
      guide = guide_axis(angle = 45)
    ) +
    labs(
      x = "Racial Group",
      y = "Number of Graduating Students",
    )
  return(plot)
}

# Testing
chart <- bar_chart(graduation_rates)