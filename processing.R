library(keras)
library(reticulate)
func <- function(x){
  m<-image_load(x,grayscale = FALSE,target_size = c(64,64))
  
  source("model_prediction.R")
  
                                                                                       source_python("model_prediction.py")
  s<-prediction(m)
  return(s)
}
