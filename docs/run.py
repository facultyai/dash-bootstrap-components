from flask import Flask, render_template

from app import App

server = Flask(__name__, static_folder="assets")


@server.route("/")
def index():
    return render_template("index.html")


App.from_server(server, "/l/")

if __name__ == "__main__":
    server.run(debug=True, port=8888)
