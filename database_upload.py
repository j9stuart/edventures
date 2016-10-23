from flask import Flask
from flask.ext.sqlalchemy import SQLAlchemy

from edventure import connect_to_db, app, db


def populate_people_table():

    QUERY = """INSERT INTO people(people_id, first_name, last_name, gender, org_id, title)
               VALUES (:people_id, :first_name, :last_name, :gender, :org_id, :title)"""

    for line in open("data_reduced_txts/people.txt"):
        line = line.strip().split(",")
        # people_id, first_name, last_name, gender, org_id, title = line[1], line[2], line[3], line[4], line[5], line[6]

        db_cursor = db.session.execute(QUERY, {"people_id": line[1], "first_name":line[2], "last_name": line[3], "gender": line[4], "ord_id": line[5], "title": line[6]})
        db.session.commit()

populate_people_table()


if __name__ == "__main__":
    connect_to_db(app)

    db.session.close()
