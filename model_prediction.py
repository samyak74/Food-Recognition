
def prediction(img):
    from keras.models import load_model 
    import numpy as np
    from PIL import Image
    classifier = load_model('my_model3.h5')
    img = img.resize((100, 100), Image.ANTIALIAS)
    a = np.array(img)
    a=np.reshape(a,(1,100,100,3))
    res=classifier.predict(a)
    return res 
    '''files = glob.glob('/only 1/*')
    for f in files:
        os.remove(f)'''

'''def delete():
        import os
        for file in os.listdir("/only 1"):
            if file.endswith(".jpg"):
                    os.remove(file)'''
    
