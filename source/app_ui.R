# Load the necessary source files
source("../source/tab_food_to_income.R")
source("../source/report.R")

ui <- navbarPage(
  title = "Mapping WA Students",
  food_to_income_tab,
  report_tab
)
