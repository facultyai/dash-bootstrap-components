from flask import Flask, redirect, request

application = Flask(__name__)


# Redirect all routes using wildcard
@application.route("/", defaults={"path": ""})
@application.route("/<path:path>")
def catch_all(path):
    target_domain = "https://www.dash-bootstrap-components.com"
    # Reconstruct the full path and query string
    full_path = request.full_path
    # Remove trailing '?' if there's no query string
    if full_path.endswith("?"):
        full_path = full_path[:-1]
    return redirect(
        f"{target_domain}/{path}?{request.query_string.decode()}"
        if request.query_string
        else f"{target_domain}/{path}",
        code=302,
    )


if __name__ == "__main__":
    application.run(host="localhost", debug=True, port=8888)
