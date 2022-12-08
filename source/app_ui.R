# Load the necessary libraries
library(plotly)

# Load the necessary source files
source("tab_food_to_income.R")
source("tab_report.R")
source("tab_intro.R")
source("tab_race_and_pov.R")
source("tab_graduation_rates.R")

ui <- navbarPage(
  title = strong("Mapping WA Students",
                 style = "color: white;
                     font-size: 20px;
                     font-family: Trebuchet MS, Sans-Serif"),
  intro_tab,
  food_to_income_tab,
  grad_rates_tab,
  race_and_pov_tab,
  report_tab,
  position = "fixed-top"
)
