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
  summarize("Average Graduation Rate" = mean(GraduationRate, na.rm = TRUE))

grad_rates_2016 <- df_2016 %>%
  select(County, StudentGroup, GraduationRate, SchoolYear) %>%
  group_by(StudentGroup) %>%
  summarize("Average Graduation Rate" = mean(GraduationRate, na.rm = TRUE))

grad_rates_2017 <- df_2017 %>%
  select(County, StudentGroup, GraduationRate, SchoolYear) %>%
  group_by(StudentGroup) %>%
  summarize("Average Graduation Rate" = mean(GraduationRate, na.rm = TRUE))

grad_rates_2018 <- df_2018 %>%
  select(County, StudentGroup, GraduationRate, SchoolYear) %>%
  group_by(StudentGroup) %>%
  summarize("Average Graduation Rate" = mean(GraduationRate, na.rm = TRUE))

grad_rates_2019 <- df_2019 %>%
  select(County, StudentGroup, GraduationRate, SchoolYear) %>%
  group_by(StudentGroup) %>%
  summarize("Average Graduation Rate" = mean(GraduationRate, na.rm = TRUE))

grad_data <- rbind(grad_rates_2015, grad_rates_2016, grad_rates_2017, grad_rates_2018, grad_rates_2019)

#UI

year <- c("2015", "2016", "2017", "2018", "2019", "2020")
year_select_box <- selectInput(
  "year", 
  label = "Select A Year", 
  choices = year, 
  selected = "2019"
)

tabPanel(
  "Graduation Rates Bar Chart",
  titlePanel("Graduation Rates of Student Groups in Washington Over Time"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "x_var",
        label = "Select A Year",
        choices = grad_data$SchoolYear,
        selected = "2019",
      ),
    ),
    mainPanel(
      plotlyOutput("plot_bar_chart"),
      p("This bar chart represents the trend of graduation rates amoung different
        student groups in Washington. By being able to visualize the graduation rates of different 
        race and poverty groups, users are able to conclude patterns they see as they interact 
        with the bar chart.")
    )
  ),
)

#SERVER
server <- function(input, output) {
  chart_data <- reactive({
    graduation <- grad_data %>%
    output$value <- renderPrint({
      input$slider1
    })
    output$range <- renderPrint({
      input$slider2
    })
    graduation
  })
  
  
  output$plot_bar_chart <-
    renderPlotly(
      plot <- ggplotly(data = df) +
        geom_col(
          mapping = aes(
            x = StudentGroup,
            y = GraduationRate
          )
        ) +
        scale_x_discrete(
          guide = guide_axis(angle = 45)
        ) +
        labs(
          x = "Racial Group",
          y = "Number of Graduating Students",
        )
    )
}


