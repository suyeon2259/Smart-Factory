import cv2 as cv
from skimage.metrics import structural_similarity

img1 = cv.imread('../img/result1.jpg')
img2 = cv.imread('../img/result2.jpg')

(score, diff) = structural_similarity(img1, img2, full=True, multichannel=True)
score *= 100

print(score)