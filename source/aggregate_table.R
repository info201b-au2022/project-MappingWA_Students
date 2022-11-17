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


View(graduation_rates)

graduation_rates_mean <- graduation_rates  %>% 
 group_by(County,StudentGroup) %>%
 summarize(mean_graduation_rate = mean(GraduationRate))

graduation_rates_mean <- graduation_rates_mean %>% 
  rename( "Race" = "StudentGroup" )

graduation_rates_mean$Race[graduation_rates_mean$Race=="Black/ African American"]<-"Black"
graduation_rates_mean$Race[graduation_rates_mean$Race=="Two or More Races"]<-"Two Or More"
graduation_rates_mean$Race[graduation_rates_mean$Race=="American Indian/ Alaskan Native"]<-"Native American"
graduation_rates_mean$Race[graduation_rates_mean$Race=="Native Hawaiian/ Other Pacific Islander"]<-"Pacific Islander"
View(graduation_rates_mean)




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
  
View(median_incomes)

# census data 
census_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/census_bureau_data/us_census_bureau_2016.csv", stringsAsFactors = FALSE)
View(census_data)
census_data <- census_data %>%
  gather(key = counties, value = feature, -Label..Grouping.) %>%
  filter(
    str_detect(Label..Grouping., "White") |
      str_detect(Label..Grouping., "Black") |
      str_detect(Label..Grouping., "Native American") |
      str_detect(Label..Grouping., "Asian") |
      str_detect(Label..Grouping., "Pacific Islander") |
      str_detect(Label..Grouping., "Two or more")
  ) %>%
  filter(
    str_detect(counties, "Percent") &
      !str_detect(counties, "Error")
  )


View(census_data)
## Rename columns with in new data frame
colnames(census_data)[1] <- "Race"
colnames(census_data)[2] <- "counties"
colnames(census_data)[3] <- "Percent_under_poverty"

census_data <- census_data %>% mutate(County = (
  str_sub(
    counties,
    0,
    nchar(counties) - nchar(".County..Washington..Percent.below.poverty.level..Estimate")
  )
)
)

census_data <- census_data %>%
  select(Percent_under_poverty, County)


View(census_data)

aggregate_data <- left_join(graduation_rates_mean,median_incomes)
aggregate_data <- left_join(aggregate_data,census_data)
aggregate_data <- aggregate_data%>% drop_na()
View(aggregate_data)



