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
library(dplyr)
library(tidyverse)
library(readxl)
library(ggplot2)
# library(rgdal)
# library(sf)

# Dataframe wrangling function
food_2016 <- read_excel("data/map_the_meal_gap_data/meal_gap_2016.xlsx")

# chart creation func
create_food_graph <- function(dataframe) {
    # data = dataframe
    ggplot(map_data("county", "washington")) +
        geom_polygon(
            mapping = aes(x = long, y = lat, group = group),
            color = "white",
            size = .1
        ) +
    coord_map()
}

food_map_2016 <- create_food_graph(food_2016)