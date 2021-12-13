import cv2
import numpy as np
from skimage.metrics import structural_similarity
import pymysql

# 도면 이미지 전처리
def planImgPreprocess(imgPath):
    # 이미지 불러오기
    img = cv2.imread(imgPath)

    # 이미지 속성 가져오기(높이, 너비, 채널)
    height, width, channel = img.shape

    # 원본 이미지와 똑같은 크기의 빈 이미지 생성
    mask = np.zeros((height, width), dtype=np.uint8)
    result = np.zeros((height, width), dtype=np.uint8)

    # 이미지 그레이스케일로 변환(흑백)
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

    # 이미지 이진화
    ret, img_binary = cv2.threshold(gray, 0, 255, cv2.THRESH_BINARY_INV + cv2.THRESH_OTSU)

    # labeling
    cnt, labels, stats, centroids = cv2.connectedComponentsWithStats(img_binary)

    for i in range(1, cnt):
        (x, y, w, h, area) = stats[i]

        if area > 100:
            continue

        cv2.rectangle(mask, (x, y, w, h), (255, 255, 255), -1)

    result = img_binary - mask

    return result

    # 이미지 저장
    # imgName = imgPath.split('.')
    # cv2.imwrite(imgName[0]+'_result.'+imgName[1], result)

# 제품 이미지 전처리
def productImgBinary(imgPath):
    blk_size = 9  # 블럭 사이즈
    C = 5  # 차감 상수

    # 이미지 불러오기
    img = cv2.imread(imgPath)

    # 이미지 그레이스케일로 변환(흑백)
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

    # 이미지 이진화
    img_binary = cv2.adaptiveThreshold(gray, 255, cv2.ADAPTIVE_THRESH_MEAN_C, cv2.THRESH_BINARY, blk_size, C)

    dst = cv2.bitwise_not(img_binary)

    return dst

# db 연결
connect = pymysql.connect(host='localhost', user='root', password='1234', db='pathdb', charset='utf8')
cur = connect.cursor()

# db에서 이미지 경로 가져오기
query = "select id,planImg,productImg from file"
cur.execute(query)

# 쿼리 실행결과 저장
datas = cur.fetchall()

id = datas[0][0]
planPath = datas[0][1]
productPath = datas[0][2]

# print("id", id)
# print("도면 경로 ",planPath)
# print("제품 경로",productPath)

# db에 저장된 이미지 경로로 이미지 불러오기
img1 = planImgPreprocess(planPath)
img2 = productImgBinary(productPath)

# 유사도 비교
(score, diff) = structural_similarity(img1, img2, full=True, multichannel=True)
score *= 100
result = str(round(score, 2))

# 유사도 비교 결과 db에 저장
query = "update file set similarity=%s where id=%s"
cur.execute(query,(result, id))

# db commit
connect.commit()

# db 연결 종료
connect.close()

# 유사도 비교 수행 완료
print("end")