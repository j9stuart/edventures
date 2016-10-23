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

file = open("orgs.sql", "w")
file.write(orgs_reduced.to_sql("organizations", engine))
file.write(people_reduced.to_sql("people", engine))
file.write(investors_reduced.to_sql("investors", engine))
file.write(funding_rounds.to_sql("funding_round", engine))
file.close()
