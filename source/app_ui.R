# Load the necessary source files
source("../source/tab_food_to_income.R")
source("../source/tab_report.R")
source("../source/tab_intro.R")

ui <- navbarPage(
  title = "Mapping WA Students",
  intro_tab,
  food_to_income_tab,
  report_tab
)
