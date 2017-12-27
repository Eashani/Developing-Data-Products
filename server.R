#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  x <- read.csv("titanictrain.csv")
  x <- x[complete.cases(x),]
  x$Pclass <- as.factor(x$Pclass)
  complete.cases(x)
  output$op1 <- renderPrint ({
   if(input$nos =="Age")
      x <- lm(Survived~Age,data=x)
   else if(input$nos=="Pclass")
      x <- lm(Survived~Pclass,data=x)
   else if(input$nos=="Sex")
     x <- lm(Survived~Sex,data=x)
   else if(input$nos=="Sibsp")
     x <- lm(Survived~SibSp,data=x)
   else if(input$nos=="Embarked")
     x <- lm(Survived~Embarked,data=x) 
   summary(x)
  })
  
  })
    

  
