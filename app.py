from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Hello World'

app.run(port=80, host="0.0.0.0")
