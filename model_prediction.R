prediction<-function(x){
  k=load_model_hdf5("my_model3.h5", custom_objects = NULL, compile = TRUE)  
  img=image_load(x,target_size = c(100,100))
  data=image_to_array(img)
  dim(data) <- c(1, 100, 100, 3)
  ans=predict(k,data)
    return (ans)
    }
    
    
