import socket
import os
from flask import Flask, render_template
from redis import Redis

app = Flask(__name__)
redis_host = os.getenv('REDIS_HOST', 'redis')
redis_port = int(os.getenv('REDIS_PORT', 6379))
redis_client = Redis(host=redis_host, port=redis_port)

@app.route('/')
def greeting():
    return render_template('index.html')

@app.route('/about')
def about():
    return render_template('about.html')

#Use @app.route('/count') to register the endpoint.
@app.route('/count')
def get_count():
    count = redis_client.incr('count')
    container_id = socket.gethostname()

    return render_template(
        'count.html',
        count=count,
        container_id=container_id
    )
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)

