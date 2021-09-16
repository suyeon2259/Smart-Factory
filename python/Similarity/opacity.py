# 두 이미지를 페이드 인/아웃 시켜 외관상 차이를 비교
# 두 이미지의 유사도를 백분율로 표시

import cv2 as cv
from skimage.metrics import structural_similarity

a = 0.0

while(a <= 1.0):

    img1 = cv.imread('(이미지 경로 입력)img/result.png') # 이미지 1
    img2 = cv.imread('(이미지 경로 입력)img/result2.png') # 이미지 2

    # 블렌딩하는 두 이미지의 크기가 같아야함
    width = img1.shape[1]
    height = img1.shape[0]
    img2 = cv.resize(img2, (width, height))

    # img1 사진은 점점 투명해지고 img2 사진은 점점 불투명해짐
    b = 1.0 - a
    dst = cv.addWeighted(img1, a, img2, b, 0)
    cv.imshow('dst',dst)
    cv.waitKey(0)

    # print( a, " ", b)
    a = a + 0.2

# 유사도 측정
(score, diff) = structural_similarity(img1, img2, full=True, multichannel=True)
score *= 100

# 유사도 결과 (100 이상이면 100을 대입)
if score >= 100:
    score = 100;

print(f"결과 : {score:.2f}%")
cv.destroyAllWindows()