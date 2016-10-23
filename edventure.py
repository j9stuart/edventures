from flask import Flask, render_template, flash, request, session, redirect
# from flask_debugtoolbar import DebugToolbarExtension
from flask.ext.sqlalchemy import SQLAlchemy
import search_functions

app = Flask(__name__)
app.secret_key = "\xd02\xda6\x16\x91\x1dX\xd6\x89\x1d\x02\x97{\xba\xcc+F%0K\xac\xe5\x11"


@app.route("/")
def index_page():
    """Shows home page"""

    categories = search_functions.get_all_industries()
    return render_template("template name.html", categories=categories)


@app.route("/<vc_name>")
def show_vc(vc_name):
    """Shows VC profile"""

    investor_info = search_functions.get_vc(vc_name)

    return render_template("template name.html", investor_info=investor_info)


@app.route("/results")
def find_vcs():
    """Shows search results"""

    name = request.args.get("vc_name")
    gender = request.args.get("gender")
    ethnicity = request.args.get("ethnicity")




    return render_template("template name.html",
        name=name,
        gender=gender,
        ethnicity=ethnicity)


# ---------------------------- FOR RUNNING APP + DB ----------------------------
if __name__ == "__main__":
    search_functions.connect_to_db(app)
    app.run(debug=True)

    # handle_input()

    db.session.close()
