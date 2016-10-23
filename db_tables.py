#     CREATE TABLE people(
#         people_id   varchar(40) PRIMARY KEY,
#         first_name  varchar(20),
#         last_name   varchar(20),
#         gender      varchar(10),
#         ethnicity   varchar(30),
#         title       text,
#         org_id      varchar(40)
#             references organizations)

#     CREATE TABLE organizations (
#         org_id          varchar(40) PRIMARY KEY,
#         company_name    varchar(30),
#         homepage_URL    varchar(40),
#         country_code    varchar(10),
#         state_code      varchar(10),
#         region          varchar(20),
#         city            varchar(20),
#         zipcode         varchar(10),
#         description     text,
#         category_list   text,
#         logo_url        text)


#     CREATE TABLE investors (
#         inv_id              varchar(40) PRIMARY KEY,
#         domain              varchar(30),
#         country_code        varchar(10),
#         state_code          varchar(10),
#         region              varchar(20),
#         city                varchar(20),
#         zipcode             varchar(10),
#         inv_count           integer,
#         inv_type            varchar(30),
#         total_funding       integer,
#         logo_url            text)


#     CREATE TABLE funding_rounds (
#         funding_id          varchar(40) PRIMARY KEY,
#         inv_count           integer,
#         inv_list            text,
#         org_id              varchar(40)
#             references organizations,
#         category_list       text
#         )