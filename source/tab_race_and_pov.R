# working page for shiny web app for race and poverty pie chart 

# to access data wrangling
source("race_and_poverty.R")


# what is the average percentage of all racial groups in the year 2019
test_2019 <- census_data %>%
  mutate(percent_num = as.numeric(percent)) %>%
  select(year, race, percent_num) %>%
  filter(year == "2019") %>%
  group_by(race) %>%
  summarize(avg_percent = mean(percent_num, na.rm = TRUE))
View(test_2019)


# What year to look at
year <- c("2016", "2017", "2018", "2019", "2020")

year_select_box <- selectInput(
  "year", 
  label = "Select Year of Interest", 
  choices = year, 
  selected = "2016"
)


tabPanel("Race and Poverty Pie Chart", 
         sidebarLayout(
           sidebarPanel(
             year_select_box
           ),
           mainPanel(plotlyOutput("pieChart"),
                     p(""),
                     p(""))
         )
)


server <- function(input, output){
  output$pieChart <- renderPlotly({
    update <- co2_data_wrangled %>%
      filter(country == input$country) %>%
      filter(between(year, input$slider[1], input$slider[2])) %>%
      select(country, co2_including_luc, year)
    
    output$range <- renderPrint({
      input$slider
    })
    
    ggplot(update) + 
      geom_line(mapping = aes(x = year, y = co2_including_luc), color = "red") + 
      labs(title = "Total Carbon Dioxide Emission from Production Including Land-Use Change", 
           x = "Year", 
           y = "Production Emissions of CO2 in Million Tonnes")
  })
}

