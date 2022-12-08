# working page for shiny web app for race and poverty pie chart 

# to access data wrangling
source("../source/race_and_poverty.R")

# Go to UI
year <- c("2016", "2017", "2018", "2019", "2020")
year_select_box <- selectInput(
  "year", 
  label = "Year to Display", 
  choices = year, 
  selected = "2016"
)


race_and_pov_tab <- tabPanel(
  title = p("Chart 3"), 
  fluidPage(
    titlePanel(strong("The Relationship Between Race and Poverty Status in Washington")),
    p("This chart represents the proportions of the average percentages 
      of the different racial groups below the poverty line. The poverty thresold is updated annually, 
      and is determined by a number of factors. 
      The proportions, or sections, of the chart are based on calculating the average percentage 
      of the race below the poverty line throughout Washington within a 
      specific year. Users have the ablity to see how the chart varies by year by selecting one of 
      the year options between 2016 and 2020 using the year selector. This chart was produced 
      from poverty data from the Census Bureau."),
    sidebarLayout(
      sidebarPanel(
        year_select_box
      ),
      mainPanel(
        plotlyOutput("pieChart"),
        h3(strong("Observations")), 
        p("By selecting different years you can see that the most prevelent observation 
          is that monoracial white people consistently have the lowest average percentage 
          of people below the poverty threshold. Additionally, monoracial Black and African American peoples 
          are mostly the race with the highest average percentage of the population below the poverty line. 
          In 2020 there is a shift from monoracial Black and African American peoples to Native 
          American and Native Alaskans. The gap between the lowest average percentage and highest 
          average percentage is slightly above or below double the amount. Notably, there appears 
          to be no progression towards a chart that looks more equitable as the section sizes stay 
          relatively similar across all years."), 
      )
    )
  )
)

