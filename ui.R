#install.packages("shiny")

library(shiny)
shinyUI(fluidPage(

    titlePanel("Demo"),
    sidebarLayout(
      
      sidebarPanel(("Enter the personal information"),
               textInput("name","Enter your name",""),
               textInput("age","Enter your age",""),
               radioButtons("Gender","Select the gender",list("male","female"),""),
               sliderInput("slide","Select the value from Slider",min=0,max = 5,value=2,step = 0.2,animate = TRUE),
               selectInput("statename","Select the state",c("a","z","cv","f"),selected = "f")
               ),
        
      mainPanel(
                ("Personal information"),
                textOutput("myname"),
                textOutput("myage"),
                textOutput("mygender"),
                textOutput("outvalue"),
                textOutput("outstate")
                )
    )
    
  
))
