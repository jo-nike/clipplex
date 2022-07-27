from os import environ

from app import app


if __name__ == "__main__":
    app.run(debug=bool(environ.get("FLASK_DEBUG", True)))
