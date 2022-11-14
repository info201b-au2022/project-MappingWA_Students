# After Hours - How Financial Security Affects Student Success at School : Project Proposal 

## **Basic Information**

**Code Name:** Mapping_WAStudents

**Project Title:** After Hours - How Financial Security Affects Student Success at School

**Authors:**

> Adora Thienthanh Pham (apham25@uw.edu)  
> Anika Indurkar (anikai2@uw.edu)  
> Ella Gabrielle Uchtmann (ellau@uw.edu)  
> Richard Tran (rtran04@uw.edu)

**Affiliation:** INFO-201: Technical Foundations of Informatics - The Information School - University of Washington

**Date:** Autumn 2022

## **Abstract:**

Our main question is, ““How has poverty impacted Washington K-12 students’ performance in academic settings?”
This question is important because while equality in public education is a commendable goal, schools should also accommodate students based on their unique personal circumstances, especially when it comes to family financial health.
To address the question, we shall carefully consider how race and income are tied to education, as well as whether or not these metrics affect graduation statistics.

## **Keywords:**

* racial inequity
* income
* youth poverty
* education
* food insecurity

## **Introduction:**
Every year, the Washington State Office of Superintendent of Public Instruction (OSPI) administers standardized tests to school districts across the state with the aim of measuring student progress. Yet, what exactly defines “student progress?” To quote, “The goal of Washington's K–12 education system is to prepare every student for postsecondary pathways, careers, and civic engagement” ("About OSPI", n.d.). Under this definition, it is implied that the state determines students’ career preparedness based on their exam scores alone. If, for instance, a student ranks lower on standardized tests, then the OSPI may conclude that inadequacies in the current curriculum were to blame for that student’s underperformance.

However, the problem with this metric lies precisely in this methodology: rather than addressing the unique circumstances behind students’ academic struggles, the OSPI can only effect change at the state-level, which is not always sufficient in fostering student learning.
In this project, we examine how one such facet of students’ personal life, financial security, may impact their ability to learn at school. We will also analyze how youth poverty may be linked to other forms of identity, particularly race, and how historical data may suggest that students of color require more support outside of the classroom. To close, we will propose solutions that both educators and communities could take to guarantee equal footing for all students.

## **Problem Domain:**

### **Stakeholders**

### _Direct Stakeholders:_
- Policymakers and government officials who wish to improve student success act as direct stakeholders to this research. These individuals have the power to distribute state resources to ensure that the needs of all students are properly met, resolving any deficiencies thereof.
- Researchers and nonprofit organizations concerned with the correlation between race and socioeconomic status may find this analysis useful in pinpointing the root causes of educational inequity in Washington–and, by extension, the greater U.S.
- Administors involved in the processes of creating district wide curriculums can use this data to cater to students who are struggling based on the needs represented in the data as well as what is suggested through analysis. 

### _Indirect Stakeholders:_
- Students from backgrounds of lower economic status and peoples of color will be indirectly affected by this data the most. They are the people whose well-being are most susceptible to possible poor decisions made by policymakers and officials (Gaines et al., 2021).
Parents and guardians of students who need more access to help and a greater academic support system outside of school will be indirectly affected by this data. These guardians are the ways these children will be able to get access to greater help and support.
- Educators and administrators will be indirectly affected by this data. Even if they are not interacting with the data directly, they are at the front lines of children’s education and are direct sources of information for children and responsible for children's learning inside the classroom.

### **Human Values**

### _Trust_
One of the goals of this research is to develop trust between students, their families, and the OSPI, the latter of which is responsible for overseeing the education of all K-12 students in Washington state.
### _Universal Access_
Every student encounters challenges over the course of their education. Sometimes, these challenges aren’t rooted within their ability to learn so much as it is the situation that they face back at home (Coxe, 1923).
### _Data Transparency_
In exploring this problem domain, we are making publicly available our research on how race and income are perhaps interconnected when it comes to inequity in Washington education. Much of this information was not yet available when we began our research, and so our hope is that those who review our work might find our analysis useful in improving education for Washington students.
Potential Benefits and Harms

### **Harms**
* Stakeholders may have a hard time adjusting to new changes implemented within the education system.
* Our selected dataset is particularly sensitive to those that are already susceptible to struggling in schools. Therefore, if a group is misrepresented or not represented that could have an even harder time as the data and our analysis would not exclude them (Sullivan, 2016).

### **Benefits**	
* Improving the Washington State educational system to be more equitable and just for students that need help. 
* Improvements of test scores due to better support given to students through their academic careers.

## **Research Questions:**

1) _How might food insecurity be related to students’ socioeconomic status?_

   * We hope to use a dataset in order to set the scene of poverty rates based on food insecurity thresholds in different counties in Washington state. Of course, food insecurity is but one possible issue faced by impoverished families, but we chose to focus on this facet of students’ lives because no student should have to worry about hunger while attending school.

<br>

2) _How are race and poverty related?_
   * It is important to analyze the relationship between race and poverty in order to examine ways in which a students’ identity may affect their performance in school aside from their socioeconomic status. This way we can understand if there is intersectionality in race and socioeconomic status to properly understand the full picture of academic success leading to poor or high graduation rates among different groups of people in reference to our overall question. 

<br>

3) _How are racial identity and academic performance in school related?_
   * Cross-examining the relationship of race/socioeconomic status linked with performance of students in Washington is crucial in understanding the bigger picture of how poverty may affect and student’s performance in school. 

<br>

4) _Is there a correlation between students who graduate and their racial identity?_
   * Analyzing the possible correlation between graduation rates at Washington schools–be it colleges or highschools–and students’ racial identity is important in determining what equitable resources can go to different demographic groups. This presents an avenue by which Washington educators can more intimately engage with students to fully address their needs.

## **The Dataset:**

## _A. How is the dataset related to the problem domain? How will it help us answer our research questions?_

- The dataset contains statistics relating to income, poverty, and food insecurity across Washington counties. This information will allow us to understand racial disparities in socioeconomic status across Washington counties, allowing us to study their impact on state education.

**Table 1**: All data files and their numbers of rows and columns  
**Note**: see [references](#references) for data file citations
| File Name | Number of Observations | Number of Variables |
| --- | --- | --- |
| us_census_bureau_2016.csv | 68 | 235 |
| us_census_bureau_2017.csv | 68 | 235 |
| us_census_bureau_2018.csv | 68 | 235 |
| us_census_bureau_2019.csv | 68 | 235 |
| us_census_bureau_2020.csv | 68 | 235 |
| wa_county_median_incomes.csv | 2593 | 9 |
| Report_Card_Graduation_2015-16.csv | 80641 | 31 |
| Report_Card_Graduation_2016-17.csv | 80641 | 31 |
| Report_Card_Graduation_2017-18.csv | 80641 | 31 |
| Report_Card_Graduation_2018-19.csv | 80641 | 31 |
| Report_Card_Graduation_2019-20.csv | 80641 | 31 |
| meal_gap_2016.xlsx | 3143 | 18 |
| meal_gap_2017.xlsx | 3143 | 18 |
| meal_gap_2018.xlsx | 3143 | 18 |
| meal_gap_2019.xlsx | 3143 | 18 |
| meal_gap_2020.xlsx | 3143 | 18 |

## _B) Who collected the data? When? For what purpose?_

**US Census Bureau Data on Poverty Across Washington Counties**
* **Who:** United States Census Bureau
* **When:** 2016 - 2020
* **Purpose:** For the government to understand where to put funding. 

**Washington Counties Median Income Data**
* **Who:** Data USA
* **When:** 2016 - 2020
* **Purpose:** Their purpose is to share data that represents the many narratives of the nation. 

**OSPI Report Card for Graduation Statistics in Washington**
* **Who:** Washington Office of Superintendent of Public Instruction(OSPI)
* **When:** 2016 - 2020
* **Purpose:** To make sure they allocate funding and resources to ensure a high quality education.

**Data on Nationwide Food Insecurity**
* **Who:** Feeding America
* **When:** 2016 - 2020
* **Purpose:** Working to address the root causes of hunger in neighborhoods in order to create an America where no one goes hungry.

## _C) How was the data collection effort funded? Who is likely to benefit from the data or make money?_
* **OSPI:** Washington State funding for research for data about schools and the students within them in order for Washington state schools to benefit from better allocated funding. 
* **USCB:** Government funding for research for data about demographics and groups of people that would benefit the government. 
* **DataUSA:** Deloitte Touche Tohmatsu Limited, in partnership with Datawheel; Deloitte Touche Tohmatsu Limited benefits as an overseas auditing and risk advisory firm, and Datawheel’s partners benefit from knowing the demographics of the US consumer population.
* **Feeding America:** Nonprofit with funding possibly through partnerships so there would be no one in particular besides the organization that would be making use of the money to further enhance their research or efforts. 

## _D) How was the data validated and held secure? Is it credible and trustworthy?_
* These dataset are collected from official, credible organization and government data systems. Therefore, they can be considered credible and trustworthy sources of information. 

## _E) How did you obtain the data? Do you credit the source of the data?_
* We obtained the data through researching proposed topics of interest. We credit the sources and provide appropriate citations (_see above_). 

## **Expected Implications:**  

With our project, we hope that policymakers can observe our data and help make new policies that would make education more equitable and accessible to all socioeconomic backgrounds. By having more education accessibility policies in place, it would protect the education of those who barely have access in the first place. We also hope that school administrators and school districts can learn from our data, shedding light on the disparities of accessibility in low-income households and inspire them to take action to help students get the resources and education they need. The more people in power in school districts that know about this lack of accessibility, the more change that can be done to help students from all socioeconomic backgrounds. This could mean widening the school zone to low-income communities so they can have access to better schools or helping low-income students who are attending the school and helping them get the resources they need.  

## **Limitations:**
Correlating Datasets
Although the dataset we have found is great at answering individual research questions we have generated, there is a lack of a larger data set that would address the bigger picture. Through individual datasets, we are setting up links between race, geographical location, poverty, and education through analysis and our understanding of the issues at hand. But there is a lack of a dataset that sets the entire scene for our project. 
Data credibility
Although all of our datasets have been vetted for authenticity, the data from these sources was prepared by individuals with different, perhaps conflicting purposes in mind. The goals of collecting data may differ between government agencies and nonprofit organizations, depending on how they wish for it to be used. As an example, US Census Bureau data on poverty across Washington counties focuses more on an estimate of the population below poverty thresholds, while the OSPI’s data on student assessment scores focuses more on student demographics and not so much students’ financial security.

## **Findings:**
N/A
## **Discussion:** 
N/A
## **Conclusion:**
N/A
## **Acknowledgments:**
N/A
## **References:**
* Coxe, W. W. (1923). _Home Conditions as a Cause of Failure in High School_. Educational Research Bulletin, 2(13), 200–202. http://www.jstor.org/stable/1470942
* Data.WA.gov (2020). _Report Card Graduation 2015-16_ [Data file]. Retrieved October 31, 2022, from https://data.wa.gov/Education/Report-Card-Graduation-2015-16/fdkr-wxze.
* Data.WA.gov (2020). _Report Card Graduation 2016-17_ [Data file]. Retrieved October 31, 2022, from https://data.wa.gov/Education/Report-Card-Graduation-2016-17/ef3e-qpb8. 
* Data.WA.gov (2020). _Report Card Graduation 2017-18_ [Data file]. Retrieved October 31, 2022, from https://data.wa.gov/Education/Report-Card-Graduation-2017-18/384s-ygbu. 
* Data.WA.gov (2020). _Report Card Graduation 2018-19_ [Data file]. Retrieved October 31, 2022, from https://data.wa.gov/Education/Report-Card-Graduation-2018-19/6iji-4nux. 
* Data.WA.gov (2020). _Report Card Graduation 2019-20_ [Data file]. Retrieved October 31, 2022, from https://data.wa.gov/Education/Report-Card-Graduation-2019-20/gges-4vcv.
* DataUSA (n.d.). _Income by Location_ [Data file]. Retrieved October 31, 2022, from https://datausa.io/api/data?Geography=04000US53:children&measure=Household%20Income%20by%20Race,Household%20Income%20by%20Race%20Moe&drilldowns=Race.
* Gundersen, C., A. Dewey, A. Crumbaugh, M. Kato & E. Engelhard (2018). _Map the Meal Gap 2018: A Report on County and Congressional District Food Insecurity and County Food Cost in the United States in 2016_ [Data file]. Feeding America.
* Gundersen, C., A. Dewey, M. Kato, A. Crumbaugh & M. Strayer (2019). _Map the Meal Gap 2019: A Report on County and Congressional District Food Insecurity and County Food Cost in the United States in 2017_ [Data file]. Feeding America.
* Gundersen, C., A. Dewey, E. Engelhard, M. Strayer & L. Lapinski (2020). _Map the Meal Gap 2020: A Report on County and Congressional District Food Insecurity and County Food Cost in the United States in 2018_ [Data file]. Feeding America.
* Gundersen, C., Strayer, M., Dewey, A., Hake, M., & Engelhard, E. (2021). _Map the Meal Gap 2021: An Analysis of County and Congressional District Food Insecurity and County Food Cost in the United States in 2019_ [Data file]. Feeding America. 
* Gundersen, C., Strayer, M., Dewey, A., Hake, M., & Engelhard, E. (2022). _Map the Meal Gap 2022: An Analysis of County and Congressional District Food Insecurity and County Food Cost in the United States in 2020_ [Data file]. Feeding America. 
* Gaines et al. (2022, April 21). _How weak safety net policies exacerbate regional and racial inequality_. Center for American Progress. Retrieved October 31, 2022, from https://www.americanprogress.org/article/weak-safety-net-policies-exacerbate-regional-racial-inequality/.
* Sullivan, T. (2017, August 30). _Media misrepresentation has lasting effects_. Truman Media Network. Retrieved October 31, 2022, from https://tmn.truman.edu/blog/editorial/media-misrepresentation-has-lasting-effects/.
* U.S. Census Bureau (2016-2020). _Poverty Status in the Past 12 Months, ACS 5-Year Estimates_ [Data file]. Retrieved October 31, 2022, from https://data.census.gov/cedsci/table?q=poverty%20washington%20counties%20range%20of%20years&tid=ACSST5Y2020.S1701.
* Washington Office of Superintendent of Public Instruction. (n.d.). _About OSPI._ OSPI. Retrieved October 31, 2022, from https://www.k12.wa.us/about-ospi.
## **Appendix A: Questions:**
* For the data file citations, is it necessary to have several different citations for a group of files that all come from the same source/data collection (_as an example, the several files from the Data.WA.gov sources above_)?
* One source of data files in particular, Feeding America, required that we send a request to access the data by email. What might we put for the retrieval link in this case, or is the above sufficient (follow the link in citation)?