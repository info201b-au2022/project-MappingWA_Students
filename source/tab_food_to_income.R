# A file containing the UI tab panel element for the food insecurity to
# county median income chart in the project app.

# Source the necessary files

# The sidebarPanel element for the sidebarLayout
food_options <- sidebarPanel(
  selectInput(
    inputId = "food_year",
    label = "Year",
    choices = c(2016, 2017, 2018, 2019, 2020),
    selected = 2016,
    selectize = FALSE
  )
)


# The mainPanel element for the chart tab sidebarLayout
food_chart <- mainPanel(
  style = "margin-bottom: 20px;",
  plotlyOutput(
    outputId = "food_plot"
  )
)

# The main tabPanel element for this chart tab
food_to_income_tab <- tabPanel(
  title = p("Chart 1"),
  fluidPage(
    titlePanel(strong("Comparison of Child Food Insecurity Rates to
               Median Income in Washington")),
    p("The following interactive visualizer illustrates how child food
      insecurity rates compare to median income across Washington counties.
      The dataset spans the range from 2016-2020, "),
    sidebarLayout(
      food_options,
      food_chart
    ),
    p("This is a chart!")
  )
)