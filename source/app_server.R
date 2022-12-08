# A file containing the overall server for this project app.

# Load the necessary libraries
library(dplyr)
library(tidyr)
library(plotly)
library(ggplot2)
library(stringr)

# Source the necessary files
source("../source/food_to_income.R")
# source("../source/race_and_poverty.R")
source("../source/tab_graduation_rates.R")

# Food and median income data frames for use and to avoid repeated excel
# file loading
food_2016 <- load_food_insecurity_data(2016)
food_2017 <- load_food_insecurity_data(2017)
food_2018 <- load_food_insecurity_data(2018)
food_2019 <- load_food_insecurity_data(2019)
food_2020 <- load_food_insecurity_data(2020)

median_incomes_2016 <- get_median_incomes(2016)
median_incomes_2017 <- get_median_incomes(2017)
median_incomes_2018 <- get_median_incomes(2018)
median_incomes_2019 <- get_median_incomes(2019)
median_incomes_2020 <- get_median_incomes(2020)

server <- function(input, output) {
  output$food_plot <- renderPlotly({
    plot_data <- get(paste0("food_", input$food_year)) %>%
      left_join(get(paste0("median_incomes_", input$food_year)), by = "county")
    plot <- plot_ly(
      data = plot_data,
      x = ~Household.Income.by.Race,
      y = ~food_insecurity_rate,
      type = "scatter",
      mode = "markers"
    ) %>%
      layout(
        title = "Median Income Versus Percent Child Food Insecurity <br> Across Washington Counties",
        xaxis = list(title = "Median Income in US Dollars"),
        yaxis = list(title = "Percentage of Children Living <br> with Food Insecurity")
      )
    return(plot)
  })
  
  output$plot_bar_chart <- renderPlotly({
    year_selected <- str_sub(input$year_grad_rate, 0, 4)
    year_selected <- as.numeric(year_selected)
    
    grad_rates_plot_data <- get(paste0("grad_rates_", year_selected)) %>%
      mutate("Racial Group" = StudentGroup)
    
    grad_rates_plot <- ggplot(data = grad_rates_plot_data) +
      geom_col(
        mapping = aes(
          x = `Racial Group`,
          y = `Average Graduation Rate`
        )
      ) +
      labs(
        x = "Racial Group",
        y = "Percentage of Graduating Students",
      )
    grad_rates_plot <- ggplotly(grad_rates_plot) %>%
      layout(
        yaxis = list(range = c(0.5, 1)),
        xaxis = list(tickangle = -45),
        height = 600
      )
    return(grad_rates_plot)
  })

  output$pieChart <- renderPlotly({
    update <- census_data %>%
      filter(year == input$year) %>%
      group_by(race) %>%
      summarize(avg_percent = mean(percent_num, na.rm = TRUE))
    
    ggplot(data = update) +
      geom_bar(
        mapping = aes(x = "", y = percent_num, fill = race),
        stat = "identity",
        width = 1
      ) +
      coord_polar("y", start = 0) +
    labs(
      x = "",
      y = "",
      title = "Average Proportion of Racial Groups Below the Poverty Line by Year",
      subtitle = "Based on Calculated Average Percent Values",
      caption = "MappingWA_Students Project",
      alt = "Average Proportion of Racial Groups Below the Poverty Line by Year"
    ) +
    theme(
      axis.text = element_blank()
    )
  })
}
