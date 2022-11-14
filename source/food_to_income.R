### RESEARCH QUESTION:
# How might food insecurity be related to students’ socioeconomic status?

### CONSIDERATIONS:
# - median income
# - poverty line
# - percent with food insecurity
# - students under 18
# - number of students suffering from food insecurity by district
# - average median income across all counties
# - compiling average statistics on proportion food insecure students
#   per county

# Load libraries and clear memory cells
rm(list = ls())
library(dplyr)
library(tidyr)
library(stringr)
library(readxl)
library(ggplot2)
library(ggrepel)

### DATA WRANGLING
# -----------------------------------------------------------------------------
# Load the median incomes csv file and insert a column specifying the
# the relevant county for each observation.
median_incomes <- read.csv("data/wa_county_median_incomes.csv")
median_incomes <- median_incomes %>%
    filter(Race == "Total") %>%
    filter(ID.Year == 2016) %>%
    mutate(county =
        tolower(
            str_sub(
                Geography,
                0,
                nchar(Geography) - nchar(" County, WA")
            )
        )
    )

# Function to retrieve a copy of the median incomes csv file for external use.
load_median_incomes <- function() {
    return(median_incomes)
}

# Function for loading food insecurity data for the given year.
load_food_insecurity_data <- function(year) {
    if (year < 2016 || year > 2020) {
        return(NULL)
    }
    food_df <- read_excel(
        paste0(
            "data/map_the_meal_gap_data/meal_gap_", year, ".xlsx"
        )
    )
    food_df <- food_df %>%
        filter(State == "WA") %>%
        rename(food_insecurity_rate = paste(year, "Food Insecurity Rate")) %>%
        rename(location = "County, State") %>%
        mutate(county =
            tolower(
                str_sub(
                    location,
                    0,
                    nchar(location) - nchar(" County, Washington")
                )
            )
        )
    return(food_df)
}

# Create a scatterplot chart of child food insecurity rates to median income
# for each county specified in the given dataframe. The result of this function
# represents the data for the given year.
create_food_chart <- function(df, year) {
    lab_title <- "Median Income versus Percent Child Food Insecurity Across Washington Counties,"
    food_df <- left_join(df, median_incomes, by = "county")
    top_insecure <- food_df %>%
        mutate(county = toupper(county)) %>%
        top_n(5, wt = food_insecurity_rate)
    ggplot(
        data = food_df,
        mapping = aes(
            x = Household.Income.by.Race,
            y = food_insecurity_rate
        )
    ) +
    geom_point(
        alpha = 1, size = 3
    ) +
    geom_label_repel(
        data = top_insecure,
        mapping = aes(label = county),
        alpha = 1
    ) +
    labs(
        title = paste(
            lab_title,
            year
        ),
        x = "Median Income in US Dollars",
        y = "Percentage of Children Living with Food Insecurity"
    )
}

# Testing code
test <- load_food_insecurity_data(2016)
test2 <- create_food_chart(test, 2016)