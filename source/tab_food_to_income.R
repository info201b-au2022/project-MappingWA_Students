# A file containing the UI tab panel element for the food insecurity to
# county median income chart in the project app.

# Load relevant libraries

# Source the necessary files
source("../source/food_to_income.R")

food_to_income_tab <- tabPanel(
  title = p("Chart 1"),
  fluidPage(
    titlePanel("World."),
    p("Hello")
  )
)