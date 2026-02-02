import os
import pymysql
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from AWS DevOps Final Project"

@app.route("/db")
def db_check():
    try:
        conn = pymysql.connect(
            host=os.environ.get("DB_HOST"),
            port=int(os.environ.get("DB_PORT", 3306)),
            user=os.environ.get("DB_USER"),
            password=os.environ.get("DB_PASSWORD"),
            database=os.environ.get("DB_NAME"),
            connect_timeout=3,
        )
        with conn.cursor() as cur:
            cur.execute("SELECT 1;")
            result = cur.fetchone()
        conn.close()
        return jsonify({"status": "success", "db_response": result[0]})
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(host="0.0.0.0", port=port)