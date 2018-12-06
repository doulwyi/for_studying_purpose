from constants import SIZE_FACE, EMOTIONS, CASC_PATH
import cv2
import pandas as pd
import numpy as np
from PIL import Image
import os

root_folder = os.path.dirname(os.path.abspath(__file__))

cascade_classifier = cv2.CascadeClassifier(CASC_PATH)


def format_image(image):
    if len(image.shape) > 2 and image.shape[2] == 3:
        image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    else:
        image = cv2.imdecode(image, cv2.IMREAD_GRAYSCALE)
    gray_border = np.zeros((150, 150), np.uint8)
    gray_border[:, :] = 200
    gray_border[int(((150 / 2) - (SIZE_FACE / 2))):int(((150 / 2) + (SIZE_FACE / 2))),
    int(((150 / 2) - (SIZE_FACE / 2))):int(((150 / 2) + (SIZE_FACE / 2)))] = image
    image = gray_border

    faces = cascade_classifier.detectMultiScale(
        image,
        scaleFactor=1.3,
        minNeighbors=5
    )
    # None is we don't found an image
    if not len(faces) > 0:
        # print "No hay caras"
        return None
    max_area_face = faces[0]
    for face in faces:
        if face[2] * face[3] > max_area_face[2] * max_area_face[3]:
            max_area_face = face
    # Chop image to face
    face = max_area_face
    image = image[face[1]:(face[1] + face[2]), face[0]:(face[0] + face[3])]
    # Resize image to network size

    try:
        image = cv2.resize(image, (SIZE_FACE, SIZE_FACE), interpolation=cv2.INTER_CUBIC) / 255.
    except Exception:
        print("[+] Problem during resize")
        return None
    print(image)
    return image


def emotion_to_vec(x):
    d = np.zeros(len(EMOTIONS))
    d[x] = 1.0
    return d


def flip_image(image):
    return cv2.flip(image, 1)


def data_to_image(data):
    # print data
    data_image = np.fromstring(str(data), dtype=np.uint8, sep=' ').reshape((SIZE_FACE, SIZE_FACE))
    data_image = Image.fromarray(data_image).convert('RGB')
    data_image = np.array(data_image)[:, :, ::-1].copy()
    data_image = format_image(data_image)
    return data_image


FILE_PATH = root_folder + '/../dataset/fer2013/fer2013.csv'
data = pd.read_csv(FILE_PATH)

labels = []
images = []
index = 1
total = data.shape[0]
for index, row in data.iterrows():
    emotion = emotion_to_vec(row['emotion'])
    image = data_to_image(row['pixels'])
    if image is not None:
        labels.append(emotion)
        images.append(image)
        # labels.append(emotion)
        # images.append(flip_image(image))
    else:
        print("Error")
    index += 1
    print("Progreso: {}/{} {:.2f}%".format(index, total, index * 100.0 / total))

print("Total: " + str(len(images)))
np.save('data_kike.npy', images)
np.save('labels_kike.npy', labels)
