from flask import Flask
import MySQLdb

app = Flask(__name__)

@app.route('/')
def hello():
    # Connect to MySQL database
    db = MySQLdb.connect(
        host="mydb",
        user="root",
        passwd="password",
        db="mysql"
    )
    cursor = db.cursor()
    cursor.execute("SELECT VERSION()")
    version = cursor.fetchone()
    return f"Hello, World! MySQL version: {version[0]}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)