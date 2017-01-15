#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#


library(shiny)
library(rpart)
library(rpart.plot)

shinyServer(function(input,output){
  
 
  
  output$plot_out=renderPlot({
    
    DB = mtcars
    var="mpg ~ "
    var.include=input$variable

    var.include=paste(var.include,collapse="+")
    f=paste(var,var.include)
    f=as.formula(f)
  
    modelTREE= rpart(f, data=DB) 
        
    prp(modelTREE)
    }) 
}) 