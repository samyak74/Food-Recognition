library(keras)

model <- keras_model_sequential() 

layer_conv_2d(model,32,3,3,input_shape = c(64,64,3),activation='relu')

layer_max_pooling_2d(model,pool_size=c(2,2))

layer_conv_2d(model,32,3,3,activation='relu')

layer_max_pooling_2d(model,pool_size=c(2,2))

layer_flatten(model)

layer_dense(model,units = 128,activation = 'relu')
layer_dropout(model,rate=0.2)
layer_dense(model,units = 128,activation = 'relu')
layer_dropout(model,rate=0.2)
layer_dense(model,units = 1,activation = 'softmax')

model %>% compile(
  loss = 'binary_crossentropy',
  optimizer = 'adam',
  metrics = c('accuracy')
)

train_datagen=image_data_generator(rescale = 1./255, shear_range = 0.2, zoom_range = 0.2, horizontal_flip = TRUE)
test_datagen=image_data_generator(rescale = 1./255)

training_set=flow_images_from_directory('dataset/training_set',generator = train_datagen, target_size = c(64,64),batch_size = 12, class_mode = 'categorical')
test_set=flow_images_from_directory('dataset/test_set',generator = test_datagen, target_size = c(64,64),batch_size = 12, class_mode = 'categorical')

final=fit_generator(model,training_set,steps_per_epoch = 179,epochs=12,validation_data = test_set)


