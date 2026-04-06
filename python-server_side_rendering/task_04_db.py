from flask import Flask, render_template, request
import json
from csv import DictReader
import sqlite3

app = Flask(__name__)

# helper functions


# read json files
def read_json():
    with open("products.json") as f:
        data = json.load(f)
    return data


# read csv files
def read_csv():
    with open("products.csv") as f:
        reader = DictReader(f)
        print(f"reading after parsing csv {reader}")
        data = list(reader)
    return data


# read sql database
def read_sql():
    try:
        conn = sqlite3.connect("products.db")
        cur = conn.cursor()
        cur.execute(""" SELECT * FROM Produc """)
        rows = cur.fetchall()
        print(f"printing rows after fetching {rows}")
        data = []
        for row in rows:
            data.append(
                {"id": row[0], "name": row[1], "category": row[2], "price": row[3]}
            )
        conn.close()
    except Exception:
        return None
    return data


@app.route("/")
def home():
    return render_template("index.html")


@app.route("/about")
def about():
    return render_template("about.html")


@app.route("/contact")
def contact():
    return render_template("contact.html")


@app.route("/items")
def items():
    try:
        with open("items.json") as f:
            data = json.load(f)
    except json.JSONDecodeError:
        data = {}

    items = data.get("items", [])
    return render_template("items.html", items=items)


@app.route("/products")
def products():
    source = request.args.get("source")
    id = request.args.get("id")

    # check what type of data is requested
    if source == "json":
        data = read_json()
    elif source == "csv":
        data = read_csv()
    elif source == "sql":
        data = read_sql()
        if not data:
            return render_template("product_display.html", error="Database error")
    else:
        return render_template("product_display.html", error="Wrong source")

    if id:
        filtered = [item for item in data if str(item["id"]) == id]
        if not filtered:
            return render_template("product_display.html", error="Product not found")
        else:
            data = filtered

    return render_template("product_display.html", data=data)


if __name__ == "__main__":
    app.run(debug=True, port=5000)
