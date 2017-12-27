#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for miles per gallon app ----
pageWithSidebar(
  
  # App title myapp1
  headerPanel("Survival on the titanic"),
  
  # Sidebar panel for inputs ----
  sidebarPanel(
    
    radioButtons("nos","Predictors",choices=c("Pclass","Age","Sex","Sibsp","Embarked")
  )
  ),
  # Main panel for displaying outputs ----
  mainPanel(
    tabsetPanel(type = "tabs",
                tabPanel("Summary", verbatimTextOutput("op1")),
                tabPanel("Help", pre(includeText("p1.txt")))
                         
)))##shinyApp(ui="co2\\ui",server="co2\\server")