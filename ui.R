#install.packages('devtools')
#devtools::install_github("rstudio/keras")
#install.packages('reticulate')
#library(keras)
#install_keras()
#install.packages('shinyjs')
#install.packages('shinythemes')
#install.packages('shinydashboard')
library(shiny)
library(shinyjs)
library(shinythemes)

#to do -> upload it on shiny.io
fluidPage(
  shinyjs::useShinyjs(),
  theme = shinytheme("slate"),
  titlePanel("Food Recognition and Calorie Estimation"),
  sidebarLayout(
    sidebarPanel(
      fluidPage(h4("Hey! Want to calculate calories of the food you're eating?"),br()),
      fluidRow( 
        fileInput("myFile", "Choose a file", accept = c('image/png', 'image/jpeg'))
      ),
      actionButton("submit","Recognize")
      ,
      actionButton("reset", "Reset"),
      fluidPage(br()),
      imageOutput("myImage"),
      shinythemes::themeSelector()
    ),  mainPanel(
      
      # Output: Data file ----
      #img(src="food.png"),
      includeHTML("slideshow.html"),
      h2(textOutput("result1")),
      h4(textOutput("result3")),
      h4(textOutput("result2"))
      
      
      
      
    )
  )
)