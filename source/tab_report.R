# File containing the report tab for this project app.

report_tab <- tabPanel(
  title = p(strong("Report",
                   style = "color: white;
                     font-size: 20px;
                     font-family: Trebuchet MS, Sans-Serif")),
  includeCSS("www/styles.css"),
  fluidPage(
    style = "margin-left: 80px;
             margin-right: 80px;
             background-color: #f5f5f5",
    sidebarLayout(
      sidebarPanel(
        id = "report_sidebar",
        width = 3,
        fluid = TRUE,
        strong("Quick Navigation", style = "font-size: 22px;
                                            color: #5800a6"),
        hr(),
        h4(a("Abstract", href = "#abstract")),
        h4(a("Introduction", href = "#intro")),
        h4("Problem Domain", style = "color: #5800a6"),
        HTML("<ul>
               <li><a href = \"#stakes\", style = \"font-size: 14px\">
                   Stakeholders</a></li>
               <li><a href = \"#values\", style = \"font-size: 14px\">Human 
                   Values</a></li>
               <li><a href = \"#pothb\", style = \"font-size: 14px\">Potential
                   Harms and Benefits</a></li>
             </ul>"),
        h4(a("Research Questions", href = "#reqqs")),
        h4(a("Dataset", href = "#dataset")),
        h4(a("Expected Implications", href = "#impls")),
        h4(a("Limitations", href = "#limits")),
        h4(a("Findings", href = "#finds")),
        h4(a("Discussion", href = "#discuss")),
        h4(a("Conclusion", href = "#concl")),
        h4(a("Acknowledgements", href = "#acknow")),
        h4(a("References", href = "#refs"))
      ),
      mainPanel(
        id = "report_main",
        style = "margin-left: 50px",
        titlePanel(strong("After Hours - How Financial Security Affects Student
                          Success at School",
                          style = "color: #5800a6")),
        hr(),
        
        strong("Authors:"),
        HTML("<ul>
                <li>Adora Thienthanh Pham (apham25@uw.edu)</li>
                <li>Ella Gabrielle Uchtmann (ellau@uw.edu)</li>
                <li>Richard Tran (rtran04@uw.edu)</li>
             </ul>"),
        
        strong("Affiliation:"),
        br(),
        HTML("INFO-201: Technical Foundations of Informatics <br>
          The Information School <br>
          University of Washington <br>
          Autumn 2022"),
        
        h3(strong("Abstract"), id = "abstract"),
        hr(),
        p("The motivation for this project is the relation between poverty, economic
          status, and racial identity on students??? graduation rates in Washington
          state. While equality in public education is a commendable goal, schools
          must find ways to provide for students on an equitable basis. That is,
          Washington educators must recognize the unique struggles that children
          face at different points in their lives, especially those that relate to
          family financial health. To address this issue, this project considers how
          race and income are tied to education on the grounds of poverty and child
          food insecurity, as well as whether or not these factors connect to high
          school graduation rates."),
        p(strong("Keywords: "), "racial inequity, income, youth poverty, education,
          food insecurity"),
        br(),
        
        h3(strong("Introduction"), id = "intro"),
        hr(),
        p("Every year, the Washington State Office of Superintendent of Public
          Instruction (OSPI) releases an annual survey of student academic progress
          in Washington state in the form of its ", em("Report Card"), ", a
          collection of data ranging from standardized test scores to enrollemnt
          statistics. Yet, how exactly does the OSPI define ???student progress????
          To quote, ???The goal of Washington's K???12 education system is to prepare
          every student for postsecondary pathways, careers, and civic engagement???
          (\"About OSPI\", n.d.). By this definition, it is implied that the state determines
          students??? career preparedness based on their academic performance alone.
          If, for instance, a student ranks lower on standardized tests, then the
          OSPI may conclude that inadequacies in the current curriculum were to
          blame for that particular student???s underperformance."),
        p("However, the problem with this system lies precisely in this methodology:
          rather than addressing the unique circumstances behind students??? academic
          struggles, the OSPI can only effect change at the state-level. In focusing
          on the difficulties of curriculum materials, educators often overlook the
          interpersonal nature of the problems afflicting students and are thus
          unable to imagine solutions which might better foster student learning.
          This project examines how one such facet of students??? personal life, their
          financial security, may impact student graduation rates. In
          addition, We will also analyze how youth poverty may be linked to other
          forms of identity, particularly race, and how historical data may suggest
          that students of color require more support outside of the classroom.
          To close, we will propose solutions that both educators and communities
          could take to ensure equal footing for all students."),
        br(),
        
        h3(strong("Stakeholders"), id = "stakes"),
        hr(),
        p(em(strong("Direct Stakeholders: ")), "Policymakers and government officials who
          wish to increase student graduation rates???and in effect promote student
          success???act as direct stakeholders of this research. In a literal sense,
          higher graduation rates equate to higher levels of education and a more
          qualified workforce. These political leaders possess the power to distribute
          state resources in such a way as to ensure that the needs of all students
          are properly met, resolving any deficiencies thereof. Researchers concerned
          with the correlation between race and socioeconomic status may also find
          this analysis useful in pinpointing the root causes of educational inequity
          in Washington state."),
        br(),
        p(em(strong("Indirect Stakeholders: ")), "Students from backgrounds of lower
          economic status and peoples of color stand at the forefront of this data.
          This is because these individuals are the most susceptible to any poor
          decisions made by policymakers and officials (Gaines, 2021). Parents and
          guardians of students who need more access to help and a greater academic
          support system outside of school will similarly be indirectly affected by
          this data; these guardians can direct these students to greater help and
          support should the need arise. While not as indirectly affected by the data,
          educators and administrators are responsible for their students' learning
          both inside and outside of the classroom, so their role is not to be
          underestimated."),
        br(),
        
        
        h3(strong("Human Values"), id = "values"),
        hr(),
        p(em(strong("Trust: ")), "One of the primary goals of this research is to
          develop trust between students, their families, and the OSPI, the latter
          of which is responsible for overseeing the education of all K-12 students
          in Washington state."),
        p(em(strong("Universal Access: ")), "Every student encounters challenges
          during the course of their education. Sometimes, these challenges aren???t
          rooted within their ability to learn so much as it is the situation that
          they face back at home (Coxe, 1923)"),
        p(em(strong("Data Transparency: ")), "In exploring this problem domain, we
          are making publicly available our research on how race and income are
          interconnected when it comes to Washington educational inequity. Much of
          this information was not yet available when we began our research, so
          our hope is that those who review our work might find our analysis
          helpful in discovering ways to support Washington students' education."),
        br(),
        
        h3(strong("Potential Benefits and Harms"), id = "pothb"),
        hr(),
        strong("Benefits: "),
        HTML("<ul>
               <li>This project aims to highlight areas for improvement in the
               Washington education to be more equitable for students that require
               help</li>
               <li>Securing higher graduation rates promises students with
               higher success in and motivates them to continue their academic
               careers</li>
             </ul>"),
        strong("Harms: "),
        HTML("<ul>
               <li>Stakeholders may have a hard time adjusting to new changes
               implemented within the education system depending on the scale
               or expensiveness of proposed changes</li>
               <li>The data examined in this project is particularly sensitive to
               students who are already susceptible to struggling in schools.
               Therefore, groups of people who are misrepresented or
               underrepresented may see little benefit from this analysis, for the
               data may not properly represent them (Sullivan, 2016)</li>
             </ul>"),
        br(),
        
        h3(strong("Research Questions"), id = "reqqs"),
        hr(),
        p("This project seeks to answer the following questions as a guideline for
          addressing the overarching issues of race, income, and student
          graduation rates:"),
        HTML("<ol>
               <li><em>How might food insecurity be related to students'
               socioeconomic status?</em></li>
               <li><em>How are race and poverty related?</em></li>
               <li><em>Is there a correlation between students who graduate and their
               racial identity?</em></li>
             </ol>"),
        p("Although food insecurity is one of many possible issues faced by
          impoverished students, we chose to focus on this facet of students??? lives
          because no student should have to worry about hunger while attending
          school. Further, we explore the correlation between race and poverty
          to determine if students of particular racial backgrounds are
          disproportionately affected by high school graduation rates. Examining
          intersectionality in race and socioeconomic status allows for better
          comprehension of how graduation rates may differ between groups of people,
          particularly those who have been historically disadvantaged. This
          identifies which equitable resources should go to which demographic
          groups and presents an avenue by which Washington educators can more
          intimately engage with students to address their needs."),
        br(),
        
        h3(strong("Dataset"), id = "dataset"),
        hr(),
        p("All of the data used in this project was sourced from either nonprofit
          organizations or government agencies, including Feeding America,
          the US Census Bureau, DataUSA, and OSPI. Each dataset was compiled
          during the range of years from 2016-2020, which means that the data is, to
          an extent, recent. While each dataset was produced for a different
          purpose, such as for tracking population trends in the case of the US
          Census Bureau and monitoring food insecurity in the case of Feeding
          America, we extracted the most pertinent information from each set to
          use for our analysis of Washington graduation rates. As mentioned,
          these dataset were derived from official, credible organization and
          government data systems, which means that they can be considered as
          credible, trustworthy sources of information."),
        br(),
        
        h3(strong("Expected Implications"), id = "impls"),
        hr(),
        p("We hope that policymakers can observe our data and formnew policies that
          might make education more equitable and accessible to all socioeconomic
          backgrounds. By having more education accessibility policies in place, it
          would protect the education of those who hardly have access in the first
          place. We also hope that school administrators and school districts can
          learn from our data, shedding light on the in disparities in low-income
          households and inspire them to take action to provide students with the
          resources and education they need. The more people in power that know
          about this lack of accessibility, the greater potential for change to help
          students from all socioeconomic backgrounds. This could mean widening the
          school zone to low-income communities so they can have access to better
          schools or helping low-income students already attending school get the
          resources that they need."),
        br(),
        
        h3(strong("Limitations"), id = "limits"),
        hr(),
        p("Although the data we obtained is sufficient in answering our research
          questions, there is no larger data set that might address the bigger
          picture. Through our analysis of individual datasets, we are setting up
          links between race, geographical location, poverty, and education.
          However, there exists no singular dataset that provides a comprehensive
          overview of the issue surrounding our project. We acknowledge this lack
          of publically available summary data and thus use the data that we do have
          to the best of our ability (without making false assertions). Although all
          of our datasets have been vetted for authenticity, the data from these
          sources was prepared by individuals with different, perhaps conflicting
          purposes in mind. The goals of collecting data may differ between
          government agencies and nonprofit organizations, depending on how they
          wish for it to be used. As an example, US Census Bureau data on poverty
          across Washington counties focuses more on an estimate of the population
          below poverty thresholds, while the OSPI???s data on student assessment
          scores focuses more on student demographics and not so much students???
          financial security. Even so, we are still able to apply the information
          gained from these datasets to formulate our own consensus on the relation
          between race, economic status, and gradution rates in Washington."),
        br(),
        
        h3(strong("Findings"), id = "finds"),
        hr(),
        strong(em("How might food insecurity be related to students'
        socioeconomic status?")),
        p("Generally, child food insecurity rates were highest in Washington
          counties with lower average median household incomes and lower in
          counties with higher median incomes. This finding was consistent
          across multiple years, which suggests that child food insecurity
          rates are inversely proportional to median household income across
          counties."),
        br(),
        strong(em("How are race and poverty related?")),
        p("The correlation between race and poverty is clear and mostly
          consistent in recent years. The racial group with the highest average
          percentage of people below the poverty line were monoracial Black or
          African Americans, the group with the consistent lowest percentage
          below the poverty line were monoracial white people. This tells us
          that white people hold an advantage over all people of color,
          especially Black and African American peoples, and most recently,
          Native American and Alaskan peoples."),
        br(),
        strong(em("Is there a correlation between students who graduate and
        their racial identity?")),
        p("In 2020, white students had proportionally higher graduation rates
          compared to Native American and Pacific Islander Students who had the
          lowest graduation rate. This is a common trend throughout the years of
          2015 to 2020, exemplifying how there needs to be more resources given
          to underprivileged and minority student groups in order to close the
          gap between graduation rates."),
        br(),
        
        h3(strong("Discussion"), id = "discuss"),
        hr(),
        p("There is reasonable evidence to suggest that students from lower
          socioeconomic backgrounds or who might otherwise suffer from financial
          hardship may struggle in classroom settings. Students may experience
          mental stress outside of the classroom or social pressure from their
          peers as a result of food insecurity; these social impacts cannot
          easily be overcome through existing lunch programs which can, at
          best, aid students during school hours. Students??? identities may also
          affect how likely they are to succeed in school, in the sense that
          students from particular backgrounds have been more
          disproportionately affected by education inequity than others. For
          instance, white students have the highest graduation rates compared
          to every other student group. Recognizing this disparity would allow
          policymakers and educators to allocate resources to different student
          racial groups in an equitable manner. Furthermore, our data has proven
          that poverty status is linked to racial identity as well. By
          understanding which racial groups are most vulnerable to facing
          poverty, we can determine which groups are more likely to experience
          lower graduation rates, allowing policymakers to focus their efforts
          accordingly."),
        p("One of the main limitations of our findings lies in the fact that
          the time period for our data is limited to the narrow range of years
          from 2016-2020. Thus, we must acknowledge that inequalities involving
          race are deeply rooted in historical education policies and that our
          data visualizations do not capture the full scale of this issue.
          Regardless, we can still apply the information produced by our
          analysis to leverage further investigation of this issue for other
          forms of student identity or over different time periods."),
        br(),
        
        h3(strong("Conclusion"), id = "concl"),
        hr(),
        p("The issue of student graduation rates in Washington extends well
          beyond curriculum design and academic programs; rather, it is
          fundamentally a social issue that relates to how well students are
          supported both in and outside of the classroom. By understanding this
          gap between graduation rates of student groups, we can learn better
          ways to allocate resources for students, like adding more
          representation in the classroom and faculty and recognizing first
          generation and low income students in order to support them as well.
          Food insecurity, though one of many factors that could contribute to
          a student???s struggle to learn, illustrates how financial hardship can
          impact students??? performance in school. In particular, students from
          counties with lower average median incomes are at greater risk of
          suffering from food insecurity, which demonstrates how action must be
          taken on the part of educators so that students receive the support
          that they need outside of the classroom. The relationship between
          race and poverty status has not improved in the sense that there are
          not equal low numbers between the races nor does there appear to be
          a trend that suggests that."),
        p("The only way there will be progress
          towards equity is for those in power to take action to promote equity
          of resources for people of color in Washington State. Although it is
          easy to assume that the failure of schools to maintain high graduation
          rates is the result of difficulties in student learning or the
          effectiveness of teaching, educators and policymakers must consider
          students??? personal lives and how their individual circumstances may
          play a role in their academic growth."),
        br(),
        
        h3(strong("Acknowledgements"), id = "acknow"),
        hr(),
        p("We would like to thank our TA, Raina Scherer, for supporting us
          throughout the project development process! Thank you for your
          patience and understanding!"),
        br(),
        
        h3(strong("References"), id = "refs"),
        hr(),
        HTML("<ul>
                <li>Coxe, W. W. (1923). <em>Home Conditions as a Cause of
                Failure in High School</em>. Educational Research Bulletin,
                2(13), 200-202. <a href = \"http://www.jstor.org/stable/1470942\">
                http://www.jstor.org/stable/1470942</a></li>
                <li>Data.WA.gov (2020). <em>Report Card Graduation 2015-16</em>
                [Data file]. Retrieved October 31, 2022, from <a href =
                \"https://data.wa.gov/Education/Report-Card-Graduation-2015-16/fdkr-wxze\">
                https://data.wa.gov/Education/Report-Card-Graduation-2015-16/fdkr-wxze.</a></li>
                <li>Data.WA.gov (2020). <em>Report Card Graduation 2016-17</em>
                [Data file]. Retrieved October 31, 2022, from <a href =
                \"https://data.wa.gov/Education/Report-Card-Graduation-2016-17/ef3e-qpb8\">
                https://data.wa.gov/Education/Report-Card-Graduation-2016-17/ef3e-qpb8.</a></li>
                <li>Data.WA.gov (2020). <em>Report Card Graduation 2017-18</em>
                [Data file]. Retrieved October 31, 2022, from <a href =
                \"https://data.wa.gov/Education/Report-Card-Graduation-2017-18/384s-ygbu\">
                https://data.wa.gov/Education/Report-Card-Graduation-2017-18/384s-ygbu.</a></li>
                <li>Data.WA.gov (2020). <em>Report Card Graduation 2018-19</em>
                [Data file]. Retrieved October 31, 2022, from <a href =
                \"https://data.wa.gov/Education/Report-Card-Graduation-2018-19/6iji-4nux\">
                https://data.wa.gov/Education/Report-Card-Graduation-2018-19/6iji-4nux.</a></li>
                <li>Data.WA.gov (2020). <em>Report Card Graduation 2019-20</em>
                [Data file]. Retrieved October 31, 2022, from <a href =
                \"https://data.wa.gov/Education/Report-Card-Graduation-2019-20/gges-4vcv\">
                https://data.wa.gov/Education/Report-Card-Graduation-2019-20/gges-4vcv.</a></li>
                <li>DataUSA (n.d.). <em>Income by Location</em> [Data file].
                Retrieved October 31, 2022, from <a href =
                \"https://datausa.io/api/data?Geography=04000US53:children&measure=Household%20Income%20by%20Race,Household%20Income%20by%20Race%20Moe&drilldowns=Race\">
                https://datausa.io/api/data?Geography=04000US53:children&measure=Household%20Income%20by%20Race,Household%20Income%20by%20Race%20Moe&drilldowns=Race.</a></li>
                <li>Gundersen, C., A. Dewey, A. Crumbaugh, M. Kato & E.
                Engelhard (2018). <em>Map the Meal Gap 2018: A Report on County
                and Congressional District Food Insecurity and County Food Cost
                in the United States in 2016</em> [Data file].
                Feeding America.</li>
                <li>Gundersen, C., A. Dewey, M. Kato, A. Crumbaugh & M. Strayer
                (2019). <em>Map the Meal Gap 2019: A Report on County and
                Congressional District Food Insecurity and County Food Cost in
                the United States in 2017</em> [Data file].
                Feeding America.</li>
                <li>Gundersen, C., A. Dewey, E. Engelhard, M. Strayer & L.
                Lapinski (2020). <em>Map the Meal Gap 2020: A Report on County
                and Congressional District Food Insecurity and County Food Cost
                in the United States in 2018</em> [Data file].
                Feeding America.</li>
                <li>Gundersen, C., Strayer, M., Dewey, A., Hake, M., &
                Engelhard, E. (2021). <em>Map the Meal Gap 2021: An Analysis of
                County and Congressional District Food Insecurity and County
                Food Cost in the United States in 2019</em> [Data file].
                Feeding America.</li>
                <li>Gundersen, C., Strayer, M., Dewey, A., Hake, M., &
                Engelhard, E. (2022). <em>Map the Meal Gap 2022: An Analysis of
                County and Congressional District Food Insecurity and County
                Food Cost in the United States in 2020</em> [Data file].
                Feeding America.</li>
                <li>Gaines et al. (2022, April 21). <em>How weak safety net
                policies exacerbate regional and racial inequality</em>. Center
                for American Progress. Retrieved October 31, 2022, from <a href =
                \"https://www.americanprogress.org/article/weak-safety-net-policies-exacerbate-regional-racial-inequality/\">
                https://www.americanprogress.org/article/weak-safety-net-policies-exacerbate-regional-racial-inequality/.</a></li>
                <li>Sullivan, T. (2017, August 30). <em>Media misrepresentation
                has lasting effects</em>. Truman Media Network. Retrieved
                October 31, 2022, from <a href =
                \"https://tmn.truman.edu/blog/editorial/media-misrepresentation-has-lasting-effects/\">
                https://tmn.truman.edu/blog/editorial/media-misrepresentation-has-lasting-effects/.
                </a></li>
                <li>U.S. Census Bureau (2016-2020). <em>Poverty Status in the
                Past 12 Months, ACS 5-Year Estimates</em> [Data file].
                Retrieved October 31, 2022, from <a href =
                \"https://data.census.gov/cedsci/table?q=poverty%20washington%20counties%20range%20of%20years&tid=ACSST5Y2020.S1701\">
                https://data.census.gov/cedsci/table?q=poverty%20washington%20counties%20range%20of%20years&tid=ACSST5Y2020.S1701</a></li>
                <li>Washington Office of Superintendent of Public Instruction.
                (n.d.). <em>About OSPI</em>. OSPI. Retrieved October 31, 2022,
                from <a href = \"https://www.k12.wa.us/about-ospi\">
                https://www.k12.wa.us/about-ospi.</a></li>
              </ul>"),
        
        br()
      )
    )
  )
)