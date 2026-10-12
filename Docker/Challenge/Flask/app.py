from flask import Flask
from redis import Redis

app = Flask(__name__)
redis_client = Redis(host='redis', port=6379)

@app.route('/')
def greeting():
    return 'Ravi CoderCo Containers Session!'


#Use @app.route('/count') to register the endpoint.
@app.route('/count')

def get_count():
    count = redis_client.incr('count')
    return f'You have visited the website: {count} times'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)

