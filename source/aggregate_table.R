library("tidyverse")
library("stringr")

#graduation rates data 

report_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2019-20.csv")


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

# Rename student group values to fit in chart display.
graduation_rates[graduation_rates == "Native American"] <-
  "American Indian/\nAlaskan Native"
graduation_rates[graduation_rates == "Black"] <-
  "Black/\nAfrican American"
graduation_rates[graduation_rates == "Pacific Islander"] <-
  "Native Hawaiian/\nOther Pacific Islander"

graduation_rates <- graduation_rates %>%
  filter(County != "Multiple")




graduation_rates_mean <- graduation_rates  %>% 
 group_by(County,StudentGroup) %>%
 summarize(mean_graduation_rate = mean(GraduationRate))

graduation_rates_mean <- graduation_rates_mean %>% 
  rename( "Race" = "StudentGroup" )

graduation_rates_mean$Race[graduation_rates_mean$Race=="Black/ African American"]<-"Black"
graduation_rates_mean$Race[graduation_rates_mean$Race=="Two or More Races"]<-"Two Or More"
graduation_rates_mean$Race[graduation_rates_mean$Race=="American Indian/ Alaskan Native"]<-"Native American"
graduation_rates_mean$Race[graduation_rates_mean$Race=="Native Hawaiian/ Other Pacific Islander"]<-"Pacific Islander"





# median income data 

median_incomes <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/wa_county_median_incomes.csv")
median_incomes <- median_incomes %>%
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
median_incomes <- median_incomes %>%
  select(County, Race, Household.Income.by.Race)

median_incomes<- median_incomes %>%
  group_by(County)
  


aggregate_data <- left_join(graduation_rates_mean,median_incomes)
aggregate_data <- aggregate_data%>% drop_na()
View(aggregate_data)



