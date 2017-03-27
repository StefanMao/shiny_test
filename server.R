library(shiny)

shinyServer(
  function(input,output){
    output$myname<-renderText(input$name)
    output$myage<-renderText(input$age)
    output$mygender<-renderText(input$Gender)
    output$outvalue<-renderText(paste("Your Select value is :",input$slide))
    output$outstate<-renderText(paste("Your statename is :",input$statename))
  
  }
  
)