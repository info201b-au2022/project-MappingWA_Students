# File containing the summary table for the exploratory analysis portion
# of this project

library("tidyverse")
library("stringr")

# Graduation rates data 

report_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2019-20.csv")

grad_rates <- report_data %>%
  filter(
    str_detect(StudentGroupType, "Race")
  )

grad_rates <- grad_rates %>%
  select(County, StudentGroup, GraduationRate)

grad_rates <- grad_rates %>% drop_na()

# Rename student group values to fit in chart display.
grad_rates[grad_rates == "Native American"] <-
  "American Indian/\nAlaskan Native"
grad_rates[grad_rates == "Black"] <-
  "Black/\nAfrican American"
grad_rates[grad_rates == "Pacific Islander"] <-
  "Native Hawaiian/\nOther Pacific Islander"

grad_rates <- grad_rates %>%
  filter(County != "Multiple")

graduation_rates_mean <- grad_rates  %>% 
 group_by(County,StudentGroup) %>%
 summarize(mean_graduation_rate = mean(GraduationRate))

graduation_rates_mean <- graduation_rates_mean %>% 
  rename( "Race" = "StudentGroup" )

graduation_rates_mean$Race[graduation_rates_mean$Race=="Black/ African American"]<-"Black"
graduation_rates_mean$Race[graduation_rates_mean$Race=="Two or More Races"]<-"Two Or More"
graduation_rates_mean$Race[graduation_rates_mean$Race=="American Indian/ Alaskan Native"]<-"Native American"
graduation_rates_mean$Race[graduation_rates_mean$Race=="Native Hawaiian/ Other Pacific Islander"]<-"Pacific Islander"

# Median income data 

median_incomes_summary <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/wa_county_median_incomes.csv")
median_incomes_summary <- median_incomes_summary %>%
  filter(Race != "Total") %>%
  filter(ID.Year == 2020) %>%
  mutate(County = (
             str_sub(
               Geography,
               0,
               nchar(Geography) - nchar(" County, WA")
             )
           )
  )

aggregate_data <- median_incomes_summary %>%
  select(County, Race, Household.Income.by.Race) %>%
  right_join(graduation_rates_mean, by = c("County", "Race")) %>%
  drop_na() %>%
  group_by(County, Race, Household.Income.by.Race) %>%
  summarize("Graduation Rate" = min(mean_graduation_rate, na.rm = TRUE),
            .groups = "keep") %>%
  rename("Average Household Income" = Household.Income.by.Race) %>%
  mutate(`Graduation Rate` = round(`Graduation Rate`, 2)) %>%
  group_by(County) %>%
  filter(`Graduation Rate` == min(`Graduation Rate`),
         `Average Household Income` == min(`Average Household Income`)) %>%
  ungroup() %>%
  top_n(-8, wt = `Graduation Rate`)