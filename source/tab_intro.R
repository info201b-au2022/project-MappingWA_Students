# A file containing the introductory tab for this project app.

intro_tab <- tabPanel(
  title = p(strong("Introduction",
            style = "color: hotpink;
                     font-size: 20px;
                     font-family: Geneva, Sans-Serif")),
  fluidPage(
    style = "margin-left: 80px;
             margin-right: 80px;
             background-color: #f5f5f5",
    titlePanel(strong("Introduction", style = "color: #5800a6")),
    hr(),
    p("The ", strong("Mapping WA Project"), "was designed for the purpose of
      exploring the correlation between youth poverty, racial identity, and
      education in Washington state. As such, we explore the following questions
      in our research:"),
    HTML("<ol>
             <li><em>How might food insecurity be related to students'
             socioeconomic status?</em></li>
             <li><em>How are race and poverty related?</em></li>
             <li><em>How are racial identity and academic performance in school
             related?</em></li>
             <li><em>Is there a correlation between students who graduate and their
             racial identity?</em></li>
         </ol>"),
    p("To address this problem, we explore how median income was distributed
      across Washington counties from 2016-2020. We analyze how race and poverty
      are connected to one another, relating this to our previous examination of
      income. Appealing to the notion of intersectionality, we shall then
      correlate this information to past measures of student academic progress,
      notably high school graduation rates. In doing so, we carefully consider
      how race and income are tied to education, as well as whether or not these
      metrics unknowingly encode oppression. To supplement our analysis of
      student socioeconomic status, we determine how food insecurity resulting
      from low household median incomes status might impact young student
      graduation rates.")
  )
)