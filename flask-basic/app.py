from flask import Flask
app = Flask(__name__)

@app.route('/test')
def test_flask():
    return "Test succeed"


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
