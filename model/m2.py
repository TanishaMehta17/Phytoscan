import os
import requests
from flask import Flask, request, jsonify
import tensorflow as tf
from tensorflow.keras.models import load_model
import numpy as np
from PIL import Image
from collections import Counter
from io import BytesIO
from flask_cors import CORS

app = Flask(__name__)

model = load_model("KS.h5")
Classes = ['Aloevera', 'Amla', 'Amruthaballi', 'Arali', 'Astma_weed', 'Badipala', 'Balloon_Vine', 'Bamboo', 'Beans', 'Betel', 'Bhrami', 'Bringaraja', 'Caricature', 'Castor', 'Catharanthus', 'Chakte', 'Chilly', 'Citron lime (herelikai)', 'Coffee', 'Common rue(naagdalli)', 'Coriender', 'Curry', 'Doddpathre', 'Drumstick', 'Ekka', 'Eucalyptus', 'Ganigale', 'Ganike', 'Gasagase', 'Ginger', 'Globe Amarnath', 'Guava', 'Henna', 'Hibiscus', 'Honge', 'Insulin', 'Insulin', 'Jackfruit', 'Jasmine', 'Kambajala', 'Kasambruga', 'Kohlrabi', 'Lantana', 'Lemon', 'Lemongrass', 'Malabar_Nut', 'Malabar_Spinach', 'Mango', 'Marigold', 'Mint', 'Neem', 'Nelavembu', 'Nerale', 'Nooni', 'Onion', 'Padri', 'Palak(Spinach)', 'Papaya', 'Parijatha', 'Pea', 'Pepper', 'Pomoegranate', 'Pumpkin', 'Raddish', 'Rose', 'Sampige', 'Sapota', 'Seethaashoka', 'Seethapala', 'Spinach1', 'Tamarind', 'Taro', 'Tecoma', 'Thumbe', 'Tomato', 'Tulsi', 'Turmeric', 'ashoka', 'camphor', 'kamakasturi', 'kepala']
img_width = 224
img_height = 224


def download_image_from_url(image_url):
    response = requests.get(image_url)
    return response.content

def prepare_image(image_data):
    img = Image.open(BytesIO(image_data))
    img = img.convert('RGB')  # Convert to RGB
    img = img.resize((img_width, img_height))
    x = np.array(img) / 255
    x = np.expand_dims(x, axis=0)  # Add batch dimension
    return x


def predict_image(image_data):
    predictions = []
    result = model.predict([prepare_image(image_data)])
    predicted_class = np.argmax(result)
    predictions.append(predicted_class)
    most_common_prediction = Counter(predictions).most_common(1)[0][0]
    return Classes[most_common_prediction]

@app.route('/predict/', methods=['POST'])
def predict():
    if 'url' not in request.form:
        return jsonify({'error': 'No URL provided'}), 400
    image_url = request.form['url']
    image_data = download_image_from_url(image_url)
    prediction = predict_image(image_data)
    return jsonify({'class': prediction})

if __name__ == "__main__":
    app.run()

