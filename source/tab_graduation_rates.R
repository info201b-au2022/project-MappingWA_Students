library("tidyr")
library("tidyverse")
library("stringr")
library("dplyr")
library("plotly")
library("ggplot2")
library("stringr")
library("shiny")

df_2015 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2015-16.csv")
df_2016 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2016-17.csv")
df_2017 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2017-18.csv")
df_2018 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2018-19.csv")
df_2019 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-MappingWA_Students/main/data/ospi_report_card_data/Report_Card_Graduation_2019-20.csv")

grad_rates_2015 <- df_2015 %>%
  select(County, StudentGroup, GraduationRate, SchoolYear) %>%
  group_by(StudentGroup) %>%
  summarize("Average Graduation Rate" = mean(GraduationRate, na.rm = TRUE)) %>%
  filter(
    StudentGroup == "Asian" |
    StudentGroup == "Black/ African American" |
    StudentGroup == "American Indian/ Alaskan Native" |
    StudentGroup == "Native Hawaiian/ Other Pacific Islander" |
    StudentGroup == "White" |
    StudentGroup == "Two or More Races" |
    StudentGroup == "Hispanic/ Latino of any race(s)")

grad_rates_2015[grad_rates_2015 == "American Indian/ Alaskan Native"] <-
  "American Indian/\nAlaskan Native"
grad_rates_2015[grad_rates_2015 == "Black/ African American"] <-
  "Black/\nAfrican American"
grad_rates_2015[grad_rates_2015 == "Native Hawaiian/ Other Pacific Islander"] <-
  "Native Hawaiian/\nOther Pacific Islander"
grad_rates_2015[grad_rates_2015 == "Hispanic/ Latino of any race(s)"] <-
  "Hispanic/\nLatino of Any Race(s)"

grad_rates_2016 <- df_2016 %>%
  select(County, StudentGroup, GraduationRate, SchoolYear) %>%
  group_by(StudentGroup) %>%
  summarize("Average Graduation Rate" = mean(GraduationRate, na.rm = TRUE)) %>%
  filter(
    StudentGroup == "Asian" |
      StudentGroup == "Black/ African American" |
      StudentGroup == "American Indian/ Alaskan Native" |
      StudentGroup == "Native Hawaiian/ Other Pacific Islander" |
      StudentGroup == "White" |
      StudentGroup == "Two or More Races" |
      StudentGroup == "Hispanic/ Latino of any race(s)")

grad_rates_2016[grad_rates_2016 == "American Indian/ Alaskan Native"] <-
  "American Indian/\nAlaskan Native"
grad_rates_2016[grad_rates_2016 == "Black/ African American"] <-
  "Black/\nAfrican American"
grad_rates_2016[grad_rates_2016 == "Native Hawaiian/ Other Pacific Islander"] <-
  "Native Hawaiian/\nOther Pacific Islander"
grad_rates_2016[grad_rates_2016 == "Hispanic/ Latino of any race(s)"] <-
  "Hispanic/\nLatino of Any Race(s)"

grad_rates_2017 <- df_2017 %>%
  select(County, StudentGroup, GraduationRate, SchoolYear) %>%
  group_by(StudentGroup) %>%
  summarize("Average Graduation Rate" = mean(GraduationRate, na.rm = TRUE)) %>%
  filter(
    StudentGroup == "Asian" |
      StudentGroup == "Black/ African American" |
      StudentGroup == "American Indian/ Alaskan Native" |
      StudentGroup == "Native Hawaiian/ Other Pacific Islander" |
      StudentGroup == "White" |
      StudentGroup == "Two or More Races" |
      StudentGroup == "Hispanic/ Latino of any race(s)")

grad_rates_2017[grad_rates_2017 == "American Indian/ Alaskan Native"] <-
  "American Indian/\nAlaskan Native"
grad_rates_2017[grad_rates_2017 == "Black/ African American"] <-
  "Black/\nAfrican American"
grad_rates_2017[grad_rates_2017 == "Native Hawaiian/ Other Pacific Islander"] <-
  "Native Hawaiian/\nOther Pacific Islander"
grad_rates_2017[grad_rates_2017 == "Hispanic/ Latino of any race(s)"] <-
  "Hispanic/\nLatino of Any Race(s)"

grad_rates_2018 <- df_2018 %>%
  select(County, StudentGroup, GraduationRate, SchoolYear) %>%
  group_by(StudentGroup) %>%
  summarize("Average Graduation Rate" = mean(GraduationRate, na.rm = TRUE)) %>%
  filter(
    StudentGroup == "Asian" |
      StudentGroup == "Black/ African American" |
      StudentGroup == "American Indian/ Alaskan Native" |
      StudentGroup == "Native Hawaiian/ Other Pacific Islander" |
      StudentGroup == "White" |
      StudentGroup == "Two or More Races" |
      StudentGroup == "Hispanic/ Latino of any race(s)")

grad_rates_2018[grad_rates_2018 == "American Indian/ Alaskan Native"] <-
  "American Indian/\nAlaskan Native"
grad_rates_2018[grad_rates_2018 == "Black/ African American"] <-
  "Black/\nAfrican American"
grad_rates_2018[grad_rates_2018 == "Native Hawaiian/ Other Pacific Islander"] <-
  "Native Hawaiian/\nOther Pacific Islander"
grad_rates_2018[grad_rates_2018 == "Hispanic/ Latino of any race(s)"] <-
  "Hispanic/\nLatino of Any Race(s)"

grad_rates_2019 <- df_2019 %>%
  select(County, StudentGroup, GraduationRate, SchoolYear) %>%
  group_by(StudentGroup) %>%
  summarize("Average Graduation Rate" = mean(GraduationRate, na.rm = TRUE)) %>%
  filter(
    StudentGroup == "Asian" |
      StudentGroup == "Black/ African American" |
      StudentGroup == "American Indian/ Alaskan Native" |
      StudentGroup == "Native Hawaiian/ Other Pacific Islander" |
      StudentGroup == "White" |
      StudentGroup == "Two or More Races" |
      StudentGroup == "Hispanic/ Latino of any race(s)")

grad_rates_2019[grad_rates_2019 == "American Indian/ Alaskan Native"] <-
  "American Indian/\nAlaskan Native"
grad_rates_2019[grad_rates_2019 == "Black/ African American"] <-
  "Black/\nAfrican American"
grad_rates_2019[grad_rates_2019 == "Native Hawaiian/ Other Pacific Islander"] <-
  "Native Hawaiian/\nOther Pacific Islander"
grad_rates_2019[grad_rates_2019 == "Hispanic/ Latino of any race(s)"] <-
  "Hispanic/\nLatino of Any Race(s)"

# grad_data <- rbind(grad_rates_2015, grad_rates_2016, grad_rates_2017, grad_rates_2018, grad_rates_2019)

#UI

year_choices <- c("2015-2016", "2016-2017", "2017-2018", "2018-2019", "2019-2020")
year_select_box <- selectInput(
  inputId = "year_grad_rate", 
  label = "Year to Display", 
  choices = year_choices,
  selected = "2019-2020"
)

grad_rates_tab <- tabPanel(
  title = p(strong("Chart 2",
            style = "color: hotpink;
                     font-size: 20px;
                     font-family: Geneva, Sans-Serif")),
  fluidPage(
    style = "margin-left: 80px;
             margin-right: 80px;
             background-color: #f5f5f5",
    titlePanel(strong("Graduation Rates of Student Groups in Washington
                      Over Time",
                      style = "color: #5800a6")),
    hr(),
    p("This bar chart represents the trend of graduation rates amoung different
        student groups in Washington. By being able to visualize the graduation rates of different 
        race and poverty groups, users are able to conclude patterns they see as they interact 
        with the bar chart."),
    br(),
    sidebarLayout(
      sidebarPanel(
        year_select_box
      ),
      mainPanel(
        style = "margin-bottom: 240px",
        plotlyOutput(outputId = "plot_bar_chart")
      )
    )
  )
)

# #SERVER
# server <- function(input, output) {
#   chart_data <- reactive({
#     graduation <- grad_data %>%
#     output$value <- renderPrint({
#       input$slider1
#     })
#     output$range <- renderPrint({
#       input$slider2
#     })
#     graduation
#   })
#   
#   
#   output$plot_bar_chart <-
#     renderPlotly(
#       plot <- ggplotly(data = df) +
#         geom_col(
#           mapping = aes(
#             x = StudentGroup,
#             y = GraduationRate
#           )
#         ) +
#         scale_x_discrete(
#           guide = guide_axis(angle = 45)
#         ) +
#         labs(
#           x = "Racial Group",
#           y = "Number of Graduating Students",
#         )
#     )
# }
# 
# 
