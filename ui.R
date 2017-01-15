#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#

library(shiny)
shinyUI(fluidPage(
  titlePanel("JHU Data Science Specialization"),
  h3("Developing Data Product: Final Project"),
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("variable","Model Input Variables (Change it !) :",
                         c("cyl","disp","hp","drat","wt","qsec","vs","am","gear","carb"),
                         selected=c("cyl","disp","hp","drat","wt","qsec","vs","am","gear","carb"))
    ),
    mainPanel(
      h4("The following plot shows the resulting Tree for predicting the 'mpg' variable from the 'mtcars' Database."),
      h4("The variables used for building the model are the ones you choose from the checkbos list on the left."),
      plotOutput("plot_out")
    )
  )
))
