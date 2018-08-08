# Food-Recognition
CNN based food recognition using Keras in Python and Shiny package in R.

Working Project on https://samyakjain.shinyapps.io/FoodRecog/

Project in collabration with https://github.com/uday97

### ABSTRACT

In this project , we made a food recognition and calorie estimation system that uses the images of the food, given by the user, to recognize food item and then estimates the calorie present in same food item. Food image recognition is one of the promising applications of visual object recognition in computer vision. 
The system uses image processing and computational intelligence for food item recognition. 
We trained a large, deep convolutional neural network to classify the 1000 high-resolution images of each category.

### CONVOLUTIONAL NEURAL NETWORKS

The Convolutional Neural Network (CNN) oﬀers a technique for many general image classiﬁcation problems. It has been applied in food classiﬁcation and resulted in a high accuracy.CNN is widely used in food recognition and provides better performance than the conventional methods.
Over the last few years, due to the advancements in the deep learning, especially in the convolutional neural networks, the accuracy in identifying and recognizing images has been increased drastically. This is not only because larger datasets but also new algorithms and improved deep architectures. Convolutional Neural Network (CNN) is also known as LeNet due to its inventor.CNN mainly comprises convolutional layers, pooling layers and sub-sampling layers followed by fully-connected layers. The very ﬁrst architecture of CNN takes an input image and applies convolution followed by sub-sampling. After two such computations, the data is fed into the fully connected neural network,where it performs the classiﬁcation task. The main advantage of CNN is the ability to learn the high-level eﬃcient features and in addition to that, it is robust against small rotations and shifts.


#### FOOD 101 DATASET

The dataset contains a number of different subsets of the full food-101 data. For this reason the data includes massively downscaled versions of the images to enable quick tests. The data has been reformatted as HDF5 and specifically Keras HDF5Matrix which allows them to be easily read in. The file names indicate the contents of the file.There are 101 categories represented, with 1000 images, and most have a resolution of around 512x512x3 (RGB, uint8).
We have used 15 categories in our project. They are Apple Pie, Club Sandwich, Grilled Cheese Sandwich, Tacos, Hamburger, Samosa, French Fries, Pizza, Ravioli, Cake, Spring Rolls, donuts, waffles, sushi, nachos.

### PACKAGES  USED

(i) KERAS
(ii) SHINY
(iii) SHINYJS
(iv)  DEVTOOLS

### MODEL ARCHITECTURE

The first layer is the Convolutional 2D layer which consists of 32 kernels of size 3x3 taking an input of size 100x100x3 where 100x100 is the rescaled size of our images and 3 denotes the color aspect (RGB) of the image.
The next layer is the max pooling layer with a pool size of 2x2.
The above two layers are again repeated to get better filtered convolved images and better feature extraction by the max pooling layer.
The above layers have been repeated one last time where the kernels have been increased from 32 to 64 to get more filtered images for the fully connected layers.
Two fully connected layers are used next with 128 and 90 neurons respectively and Dropouts have been added of 0.01 in between the dense layers to prevent overfitting by making the weights of some random neurons to zero so as to prevent overfitting on some particular neurons.
All the convolutional 2D layers and the fully connected layers have an activation function of ReLu (Rectified Linear Unit).
The last layer is the output layer consisting of 15 neurons equivalent to the number of categories and each neuron has an output of a probability corresponding to that particular neuron. The CNN predicts the category to be the one with the highest probability.

### RESULT

By the application of various machine learning algorithms (Support Vector Machines, K-Nearest Neighbour, Random Forest Classification) and deep learning algorithm(Convolutional Neural Networks) on the image classification problem, it is concluded that CNN is the most viable method for the image classification on our dataset in terms of both speed and accuracy and that CNN performs best in the cases of large datasets.
The accuracy obtained on training set is 86% and on the test set is 80%

## ScreenShots

#### Before Uploading
![alt text](https://github.com/samyak74/Food-Recognition/blob/master/Before%20Uploading.png)
#### After Uploading
![alt text](https://github.com/samyak74/Food-Recognition/blob/master/After%20uploading.png)
#### Predict Image
![alt text](https://github.com/samyak74/Food-Recognition/blob/master/Predict%20Image.png)


### FUTURE  WORK  SCOPE

(i) More categories can be added into the model and make the classifier predict on a wider variety of different food items.

(ii) Can recognize multiple count food items in the same meal, such as hamburgers and cakes on the same dish, to estimate the calories of the meal in a more efficient manner.

(iii) Can make the platform more custom based for different users, by learning from different users their preferred food categories and making suggestions for different restaurants or any eating place for the same.


### REFRENCES
https://www.kaggle.com/kmader/food41/data

https://www.researchgate.net/publication/310823982_FoodNon-food_Image_Classification_and_Food_Categorization_using_Pre-Trained_GoogLeNet_Model

https://www.researchgate.net/publication/319070943_Mobile_Multi-Food_Recognition_Using_Deep_Learning

https://www.researchgate.net/publication/319770183_Imagenet_classification_with_deep_convolutional_neural_networks 

https://keras.rstudio.com

https://ieeexplore.ieee.org/document/7550778/

https://www.vision.ee.ethz.ch/datasets_extra/food-101/

http://visiir.univ-lr.fr/images/publication/CEA_ICME2015.pdf

https://www.jstatsoft.org/article/view/v015i09

https://arxiv.org/ftp/arxiv/papers/0802/0802.2411.pdf

https://ieeexplore.ieee.org/document/6123373/?reload=true

https://medium.com/@Synced/deep-learning-based-food-calorie-estimation-method-in-dietary-assessment-1e76a2acee7

https://shiny.rstudio.com

https://www.researchgate.net/publication/311370165_Food_Image_Recognition_by_Using_Convolutional_Neural_Networks_CNNs

