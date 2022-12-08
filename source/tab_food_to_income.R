# A file containing the UI tab panel element for the food insecurity to
# county median income chart in the project app.

# The sidebarPanel element for the sidebarLayout
food_options <- sidebarPanel(
  selectInput(
    inputId = "food_year",
    label = "Year to Display",
    choices = c(2016, 2017, 2018, 2019, 2020),
    selected = 2016,
    selectize = FALSE
  )
)


# The mainPanel element for the chart tab sidebarLayout
food_chart <- mainPanel(
  style = "margin-bottom: 40px;",
  plotlyOutput(
    outputId = "food_plot"
  ),
  h3(strong("Observations", style = "color: #5800a6")),
  p("Unsurprisingly, exists a rather strong correlation between child food
      insecurity rates and median income across Washington counties. That is,
      the percentage of children living with food insecurity in a given county
      is inversely proportional to the average household median income for that
      county. This suggests that youths living in counties with the lower
      average median incomes are at higher risk of food insecurity than those
      residing in counties where the household median income is significantly
      higher. Therefore, there is substantial reason to believe that students
      of from backgrounds of lower socioeconomic status or who are otherwise
      struggling financially may perform worse in school as a result of
      their inability to readily access food. Note that while school programs
      exist to aid children from families struggling with financial hardship,
      these programs may not always provide children with enough nutrition
      to sustain themselves outside of school. Additionally, the stigma
      of eating \"free and reduced school lunches\" could impact childrens'
      mental health, which in turn might affect their academics.")
)

# The main tabPanel element for this chart tab
food_to_income_tab <- tabPanel(
  title = p(strong("Chart 1",
            style = "color: white;
                     font-size: 20px;
                     font-family: Trebuchet MS, Sans-Serif")),
  fluidPage(
    style = "margin-left: 80px;
             margin-right: 80px;
             background-color: #f5f5f5",
    titlePanel(strong("Comparison of Child Food Insecurity Rates to
               Median Income in Washington", style = "color: #5800a6")),
    hr(),
    p("The following interactive visualizer illustrates how child food
      insecurity rates compare to median income across Washington counties.
      The dataset spans the range of years from 2016-2020 and was produced
      from the combination of data provided on county median incomes
      provided by DataUSA and of food insecurity rates from Feeding America.
      Users may select a year from the available options to view the ratio
      of median incomes to the percentage of children facing food security
      across various counties for the given year."),
    br(),
    sidebarLayout(
      food_options,
      food_chart
    )
  )
)