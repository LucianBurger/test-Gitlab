import os

SECRET_KEY = "fdsafasd"
UPLOAD_FOLDER = "image_pool"
MAX_CONTENT_LENGTH = 16 * 1024 * 1024
SQLALCHEMY_DATABASE_URI = os.getenv('DATABASE_URL', 'sqlite:///dev.db')
DATABASE_URL = os.getenv('DATABASE_URL', 'sqlite:///myapp.db')

