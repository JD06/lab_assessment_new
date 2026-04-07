from flask import Flask, request, jsonify
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def get_info():
    # Use request.remote_addr to get the visitor's IP
    # Note: If behind a proxy, you might need request.headers.get('X-Forwarded-For')
    data = {
        "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
        "ip": request.remote_addr
    }
    return jsonify(data)

if __name__ == '__main__':
    # We host on 0.0.0.0 so it's accessible outside the container
    app.run(host='0.0.0.0', port=5000)