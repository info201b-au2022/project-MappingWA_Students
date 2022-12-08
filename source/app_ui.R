# Load the necessary source files
source("../source/app_server.R")
source("../source/tab_food_to_income.R")
source("../source/tab_report.R")
source("../source/tab_intro.R")
source("../source/tab_race_and_pov.R")
source("../source/tab_graduation_rates.R")

ui <- navbarPage(
  title = "Mapping WA Students",
  intro_tab,
  food_to_income_tab,
  grad_rates_tab,
  race_and_pov_tab,
  report_tab,
  position = "fixed-top"
)
