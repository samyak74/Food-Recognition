source("model_prediction.R")
library(shiny)
library(keras)
getwd()
server <- function(input, output,session){
  
  #Can save a file to a directory
  observeEvent(input$myFile, {
    inFile <- input$myFile
    if (is.null(inFile))
      return()
    file.copy(inFile$datapath, file.path(paste(getwd(),"/PredictImages",sep=""), inFile$name) )
   # file.copy("F:/FinalMinor/Minor/PredictImages",inFile$name)
 
    })
  
  
  output$myImage <- renderImage({
    inFile <- input$myFile
    if (is.null(inFile))
      return(list(src="www/insert.png",contentType="image/png"))
    else{
    list(
      src = inFile$datapath,
      width=256,
      height=256,
      contentType = "image/jpeg",
      alt = "Face"
    )}
  },deleteFile = FALSE )
  
  observeEvent(input$submit, {
    inFile <- input$myFile
    if(is.null(inFile))
      output$myText<-renderText("No Image Uploaded")
    else
    {
      res<-prediction(paste(getwd(),"/PredictImages/",inFile$name, sep=""))
      #print(is.matrix(res))
      #suppressWarnings( file.remove(getwd(),inFile$name))
      detected_food<- which.max(res)
      switch(
        detected_food,
        {
          output_1<-"French fries"
          output_2<-paste(round(runif(1,300,315),1)," Calories ")
          output_3<-"French fries, chips, finger chips, or French-fried potatoes are batonnet or allumette-cut deep-fried potatoes."
        },
        {
        output_1<-"Hamburger"
        output_2<-paste(round(runif(1,200,208),1)," Calories ")
        output_3<-"A hamburger, beefburger or burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun."
        },
        {
          output_1<-"Pizza"
          output_2<-paste(round(runif(1,260,268),1)," Calories ")
          output_3<-"Pizza is a traditional Italian dish consisting of a yeasted flatbread typically topped with tomato sauce and cheese and baked in an oven. It can also be topped with additional vegetables, meats etc."
        },
        {
          output_1<-"Cake"
          output_2<-paste(round(runif(1,255,260),1)," Calories ")
          output_3<-"Cake is a form of sweet dessert that is typically baked. In its oldest forms, cakes were modifications of breads, but cakes now cover a wide range of preparations"
          
        },
        {
          output_1<-"Waffles"
          output_2<-paste(round(runif(1,290,299),1)," Calories ")
          output_3<-"A waffle is a dish made from leavened batter or dough that is cooked between two plates that are patterned to give a characteristic size, shape and surface impression."
        }
        )
      
      #res<-rbind(res,c("french_fries","hamburger","Pizza","cake","waffles"))
      #res<-rbind(res,c("312 calories","204 calories","266 calories","257 calories","291 calories"))
      #print(res)
      #InsertRow(res,c("Fries","Ice cream","Pizza"),2)
      #res[2,]<-c("Fries","Ice cream","Pizza")
      output$result1 <- renderText(output_1)
      output$result2<- renderText(output_2)
      output$result3<-renderText(output_3)
    }
    #shinyjs::alert("Thank you!")
  }
  )
  
  
  
  
  observeEvent(input$reset, {
    inFile <- input$myFile
      output$result1 <- renderText("")
      output$result2<-renderText("")
      output$result3<-renderText("")
     # file.copy(inFile$datapath, file.path( getwd(), inFile$name) )
    #  output$myImage <-renderImage(list())
  })    
  
}