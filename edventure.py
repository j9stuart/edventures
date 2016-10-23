from flask import Flask, render_template, flash, request, session, redirect
# from flask_debugtoolbar import DebugToolbarExtension
from flask.ext.sqlalchemy import SQLAlchemy
from sqlalchemy import create_engine

app = Flask(__name__)
app.secret_key = "\xd02\xda6\x16\x91\x1dX\xd6\x89\x1d\x02\x97{\xba\xcc+F%0K\xac\xe5\x11"
db = SQLAlchemy()


def connect_to_db(app):
    """Connect the database to our Flask app."""

    app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql:///edventure'
    db.app = app
    db.init_app(app)


def populate_people_table():

    QUERY = """INSERT INTO people (people_id, first_name, last_name, gender, org_id, title) VALUES (:people_id, :first_name, :last_name, :gender, :org_id, :title)"""

    for line in open("data_reduced_txts/people.txt"):
        line = line.strip().split("\t")

        db_cursor = db.session.execute(QUERY, {"people_id": line[1],
                                            "first_name":line[2],
                                            "last_name": line[3],
                                            "gender": line[4],
                                            "org_id": line[5],
                                            "title": line[6]})
        db.session.commit()

def populate_organizations_table():

    QUERY = """INSERT INTO organizations(org_id, company_name, homepage_URL,
        country_code, state_code, region, city, zipcode, description, category_list)
        VALUES (:org_id, :company_name, :homepage_URL, :country_code,
        :state_code, :region, :city, :zipcode, :description, :category_list)"""

    for line in open("data_reduced_txts/organizations.txt"):
        line = line.strip().split("\t")

        db_cursor = db.session.execute(QUERY, {"org_id": line[1], 
                                            "company_name":line[2],
                                            "homepage_URL": line[3],
                                            "country_code": line[4],
                                            "state_code": line[5],
                                            "region": line[6],
                                            "city": line[7],
                                            "zipcode": line[8],
                                            "description": line[9],
                                            "category_list": line[10],
                                            })
        db.session.commit()

def populate_investors_table():

    QUERY = """INSERT INTO investors(inv_id, name, domain, country_code, state_code,
        region, city, inv_type, inv_count, total_funding, logo_url)
               VALUES (:inv_id, :name, :domain, :country_code, :state_code, :region, :city,
                :inv_type, :inv_count, :total_funding, :logo_url)"""

    for line in open("data_reduced_txts/investors.txt"):
        line = line.strip().split("\t")

        db_cursor = db.session.execute(QUERY, {"inv_id": line[1],
                                                "name": line[2],
                                                "domain":line[3],
                                                "country_code": line[4],
                                                "state_code": line[5],
                                                "region": line[6],
                                                "city": line[7],
                                                "inv_type": line[8],
                                                "inv_count": line[9],
                                                "total_funding": line[10],
                                                "logo_url": line[11]
                                                })
        db.session.commit()


def populate_funding_rounds_table():

    QUERY = """INSERT INTO funding_rounds(funding_id, inv_count, inv_list, org_id)
               VALUES (:funding_id, :inv_count, :inv_list, :org_id)"""

    for line in open("data_reduced_txts/funding_rounds.txt"):
        line = line.strip().split("\t")

        db_cursor = db.session.execute(QUERY, {"org_id": line[1],
                                                "funding_id": line[2],
                                                "inv_list": line[3],
                                                "inv_count":line[4]
                                                })
        db.session.commit()




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


# ---------------------------- FOR RUNNING APP + DB ----------------------------
if __name__ == "__main__":
    connect_to_db(app)

    handle_input()

    db.session.close()
