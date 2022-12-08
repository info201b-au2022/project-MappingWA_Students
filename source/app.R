# A file containing the interactive web application for the Mapping WA students
# project.

# Load the relevant libraries
library(shiny)

# Load the necessary source files
source("app_ui.R")
source("app_server.R")

# Run the server!
shinyApp(ui = ui, server = server)