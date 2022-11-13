# Research Question:
# How might food insecurity be related to students’ socioeconomic status?
# Considerations:
# - median income
# - poverty line
# - percent with food insecurity
# - students under 18
# - number of students suffering from food insecurity by district
# - average median income across all counties
# - compiling average statistics on proportion food insecure students
#   per county

# Load libraries
rm(list = ls())
library(dplyr)
library(tidyr)
library(stringr)
library(readxl)
library(ggplot2)
library(plotly)

# Dataframe wrangling function
food_2016 <- read_excel("data/map_the_meal_gap_data/meal_gap_2016.xlsx")
food_2016 <- food_2016 %>%
    filter(State == "WA") %>%
    rename(food_insecurity_rate = "2016 Food Insecurity Rate") %>%
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

# generates a blank theme
blank <- function() {
    return(
        theme(
            axis.line = element_blank(),
            axis.text = element_blank(),
            axis.ticks = element_blank(),
            axis.title = element_blank(),
            panel.grid.major = element_blank(),
            panel.grid.minor = element_blank(),
        )
    )
}

# chart creation func
create_food_graph <- function(dataframe) {
    county_shape <- map_data("county", "Washington") %>%
        rename(county = subregion) %>%
        left_join(dataframe, by = "county")
    
    map <- ggplot(county_shape) +
        geom_polygon(
            mapping =
                aes(x = long,
                    y = lat,
                    group = group,
                    fill = `food_insecurity_rate`
                ),
            color = "white",
            size = 0.5
        ) +
        coord_map() +
        scale_fill_continuous() +
        labs(
            title = "Map of Food Insecurity Rates in Washington State",
            fill = "Percent Food-Insecure"
        ) +
        blank()
   # ggplotly(map)
}

test <- create_food_graph(food_2016)