from flask import Flask, render_template, flash, request, session, redirect
from flask_debugtoolbar import DebugToolbarExtension
from flask.ext.sqlalchemy import SQLAlchemy

app = Flask (__name__)
app.secret_key = "\xd02\xda6\x16\x91\x1dX\xd6\x89\x1d\x02\x97{\xba\xcc+F%0K\xac\xe5\x11"

db = SQLAlchemy()

def create_db():
   """ """
   app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql:///hackbright'
    db.app = app
    db.init_app(app)



@app.route("/")
def index_page():
   """Shows home page"""

   return render_template("template name.html")

@app.route("/<vc_name>")
def show_vc(vc_name):
   """Shows VC profile"""

   return render_template("template name.html")

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
