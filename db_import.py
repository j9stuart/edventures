import pandas as pd
import numpy as np
from sqlalchemy import create_engine

# import matplotlib.pyplot as plt

pd.set_option('display.max_columns', None)

engine = create_engine('postgresql:///edventure')


# Import of relevant dataframes
investors_df = pd.read_csv("csv_export_sample/investors.csv")
orgs_df = pd.read_csv("csv_export_sample/organizations.csv")
funding_rounds_df = pd.read_csv("csv_export_sample/funding_rounds.csv")
people_df = pd.read_csv("csv_export_sample/people.csv")


# Reduces tables to only relevant columns
orgs_reduced = orgs_df[["uuid", "company_name", "homepage_url", "country_code", "state_code", "region", "city", "zipcode", "short_description", "category_group_list"]]
people_reduced = people_df[["uuid", "first_name", "last_name", "gender", "primary_organization_uuid", "primary_affiliation_title"]]
investors_reduced = investors_df[[ "uuid", "investor_name", "domain", "country_code", "state_code", "region", "city", "investor_type", "investment_count", "total_funding_usd", "logo_url"]]
funding_rounds_reduced = funding_rounds_df[["company_uuid", "funding_round_uuid", "investor_names", "investor_count"]]


# Writing to SQL

orgs_reduced.to_csv("organizations.txt", sep='\t', na_rep="None")
people_reduced.to_csv("people.txt", sep='\t', na_rep="None")
investors_reduced.to_csv("investors.txt", sep='\t', na_rep="None")
funding_rounds_reduced.to_csv("funding_rounds.txt", sep='\t', na_rep="None")



# ---- Run the following in our edventure.py file if need to repopulate db -----

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
