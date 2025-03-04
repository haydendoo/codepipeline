from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Hello World v2'

@app.route('/secret')
def secret():
    return 'Super secret route'

app.run(port=80, host="0.0.0.0")
