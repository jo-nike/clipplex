from flask import Flask
import os

folders = ["/app/app/static/media/videos", "/app/app/static/media/images"]
for folder in folders:
    if not os.path.exists(folder):
        os.mkdir(folder)

app = Flask(__name__, static_url_path="/static")
app.config["SECRET_KEY"] = "fdsfsdfasdg34"
from app import routes
