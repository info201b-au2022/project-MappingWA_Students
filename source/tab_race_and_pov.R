# working page for shiny web app for race and poverty pie chart 

# to access data wrangling
source("../source/race_and_poverty.R")

# Go to UI
year <- c("2016", "2017", "2018", "2019", "2020")
year_select_box <- selectInput(
  "year", 
  label = "Select Year of Interest", 
  choices = year, 
  selected = "2016"
)


race_and_pov_tab <- tabPanel("Chart 3", 
         sidebarLayout(
           sidebarPanel(
             year_select_box
           ),
           mainPanel(plotlyOutput("pieChart"),
                     h3("Race and Poverty Pie Chart"),
                     h4("The Data"),
                     p("This chart represents the proportions of the average percentages 
                       of the different racial groups below the poverty line. From the original 
                       dataset sourced from the Census Bureau, the categories of Some other race alone, 
                       Hispanic or Latino origin (of any race), White alone, not Hispanic or Latino, 
                       were excluded as to strictly focus on racial groups, and not ethnicities, that 
                       may hold influence on our analysis of the correlation between poverty and race.
                       The measure at focus is the estimated percent of peoples below the poverty line within
                       each racial group. The poverty line or threshold, is determined by a number
                       of factors according to the Census Bureau. These factors include, but are not limted to, 
                       family size, age of family members, total family income, child support, and rent. This 
                       threshold updates every year due to inflation so it is important to understand that 
                       when looking at data from different years, where the poverty theshold lies will vary."),
                     h4("The Chart"),
                     p("The proportions, or sections, of the chart are based on calculating the average percentage 
                       of the race below the poverty line through different counties in Washington within a 
                       specific year. Users have the ablity to see how the chart varies by year by selecting one of 
                       the year options between 2016 and 2020 using the year selector."), 
                     h4("The Takeaway"), 
                     p("Add something here when the charts render. Talk about what is says about poverty and race in 
                       Washington. Maybe search if white people are the largest racial group in Washington. How does
                       it relate to overall question? and how does it bring us closer to an analysis."))
         )
)

