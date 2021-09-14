import cv2
import label_image

def load_image(image):
    text= label_image.main(image)
    image = cv2.imread(image)
    return img,text
img,text=load_image('./test/t1.jpg')
cv2.putText(img,'predicted food is:' +text,(40,20),cv2.FONT_HERSHEY_SIMPLEX)  
cv2.imshow('prediction',img)
cv2.waitkey(0)
