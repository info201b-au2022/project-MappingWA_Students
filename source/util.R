# This file contains miscellaneous functions that are currently not in use.

# Generates a blank theme for mapping.
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

# Function to create choropleth map
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
                    fill = food_insecurity_rate
                ),
            color = "white",
            size = 0.5
        ) +
        scale_fill_distiller(palette = "Greens") +
        coord_map() +
        labs(
            title = "Map of Food Insecurity Rates in Washington State",
            fill = "Percent Food-Insecure"
        ) +
        blank()
    return(map)
   # ggplotly(map)
}