from flask import Flask, render_template, flash, request, session, redirect
from flask.ext.sqlalchemy import SQLAlchemy

db = SQLAlchemy()

def connect_to_db(app):
    """Connect the database to our Flask app."""

    app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql:///edventure'
    db.app = app
    db.init_app(app)


def get_all_industries():
    """Returns sorted list of all categories."""

    QUERY = """SELECT category_list FROM organizations GROUP BY category_list;"""

    db_cursor = db.session.execute(QUERY)
    rows = db_cursor.fetchall()

    categories = set()

    for row in rows:
        row = str(row).split('|')
        for category in row:
            category = "".join([letter for letter in category if (letter.isalpha() or letter.isspace())])
            if category.startswith('u') is False:
                categories.add(category)

    return sorted(categories)


def get_vc(name):
    """Returns all info about a VC based on vc name."""

    QUERY = """SELECT * FROM investors WHERE name = :name"""

    db_cursor = db.session.execute(QUERY, {'name': name})
    row = db_cursor.fetchone()

    investor_info = []
    for item in row:
        item = str(item)
        investor_info.append(item)

    return investor_info


def get_company(name):
    """Returns all info about a company based on company name. """

    QUERY = """SELECT * FROM organizations WHERE company_name = :name"""

    db_cursor = db.session.execute(QUERY, {'name': name})
    row = db_cursor.fetchone()

    company_info = []
    for item in row:
        item = str(item)
        company_info.append(item)

    return company_info


def get_person(people_id):
    """Returns all info about a person based on person unique ID. """

    QUERY = """SELECT * FROM people WHERE people_id = :people_id"""

    db_cursor = db.session.execute(QUERY, {'people_id': people_id})
    row = db_cursor.fetchone()

    person_info = []
    for item in row:
        item = str(item)
        person_info.append(item)

    return person_info

def convert_inv_string_to_list(name, inv_list):
    """Takes inv_list string from funding rounds table and breaks into list."""

    QUERY = """SELECT inv_list FROM funding_rounds WHERE name = :name"""

    db_cursor = db.session.execute(QUERY, {'inv_list': inv_list})
    row = db_cursor.fetchone()



def get_funding_round_by_vc(name):
    """ Returns all funding rounds where investor name has invested"""

    QUERY = """SELECT * FROM funding_rounds WHERE :name IN :list"""

    db_cursor = db.session.execute(QUERY, {'name': name})
    row = db_cursor.fetchall()
    print rows




# ---------------------------- FOR RUNNING APP + DB ----------------------------
if __name__ == "__main__":
    app = Flask(__name__)
    connect_to_db(app)
    app.run(debug=True)

    db.session.close()

