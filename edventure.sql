--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: funding_rounds; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE funding_rounds (
    funding_id character varying(40) NOT NULL,
    inv_count integer,
    inv_list text,
    org_id character varying(40),
    category_list text
);


ALTER TABLE funding_rounds OWNER TO vagrant;

--
-- Name: investors; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE investors (
    inv_id character varying(40) NOT NULL,
    name character varying(40),
    domain character varying(40),
    country_code character varying(10),
    state_code character varying(10),
    region character varying(20),
    city character varying(20),
    zipcode character varying(10),
    inv_count integer,
    inv_type character varying(30),
    total_funding real,
    logo_url text
);


ALTER TABLE investors OWNER TO vagrant;

--
-- Name: organizations; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE organizations (
    org_id character varying(40) NOT NULL,
    company_name character varying(30),
    homepage_url character varying(40),
    country_code character varying(10),
    state_code character varying(10),
    region character varying(20),
    city character varying(20),
    zipcode character varying(10),
    description text,
    category_list text,
    logo_url text
);


ALTER TABLE organizations OWNER TO vagrant;

--
-- Name: people; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE people (
    people_id character varying(40),
    first_name character varying(20),
    last_name character varying(20),
    gender character varying(10),
    ethnicity character varying(30),
    title text,
    org_id character varying(40)
);


ALTER TABLE people OWNER TO vagrant;

--
-- Data for Name: funding_rounds; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY funding_rounds (funding_id, inv_count, inv_list, org_id, category_list) FROM stdin;
a6dd0dd6-b0bb-1be9-adf7-50abc6317d92	7	Lead - Real Ventures, Lead - Structure Capital, Lead - Plaza Ventures, Good People Ventures, Caerus Ventures, Fonds de solidarité FTQ, Jesse Kaplan	418fff3d-b1a2-99f6-ce46-a55dd0385ea6	\N
1637e281-e23d-cca8-0552-1c5588360bf2	6	Lead - Two Sigma Ventures, Sigma Partners, CRV, Highland Capital Partners, Bezos Expeditions, Draper Fisher Jurvetson (DFJ)	4ba8a5f0-1a4b-1e40-810e-d42eec040ddd	\N
62f440bd-6ec1-9b9b-8451-83c2f0703077	6	Shervin Pishevar, Tom McInerney, Floyd Mayweather, Omar Epps, NALA Investments, Justin Bieber	0bbaf6fc-50a2-cdfa-87a3-6a897ce6e258	\N
47a5abd8-2400-ab57-1ed6-ff343f6d923b	5	Lance White, Draper Associates, Promus Ventures, VTF Capital (fka VegasTechFund), Lemnos Labs	e4802411-d477-c162-1c42-5a935608a284	\N
2943f4f0-bf23-f7f4-e3f0-c8c76d08a61a	6	Pontifax, Commercial Capital LLC, Perceptive Advisors, Soros Fund Management, Sabby Capital, Bellco Capital	cb9d3558-bfc2-b5a3-f10c-b074ffe7eb21	\N
4767016c-d943-00ac-624a-7c7a53cd2a8c	6	Lead - The Column Group, Topspin Partners, ProQuest Investments, Osage University Partners, Alta Partners, Versant Ventures	c8154f47-124b-e875-28f7-49d3674999d4	\N
0bf1d137-adf3-6ecb-5d40-f134998ae681	7	Atsany Capital, Nathaniel Stevens, Igor Matsanyuk, Andrew Moroz, Gene Alston, Kartik Hosanagar, AltaIR Capital	f6f79aa5-e5b1-9541-ea56-1b9cb5f8840c	\N
3bc9cc8b-a7f9-247f-edbd-8ca91eecf6a9	5	Lead - Charterhouse Capital Partners, Torteval Investments, Cambridge Angels group, Cambridge Capital Group, Sud Investments	91dc98c7-db47-7d9a-566f-f054abe17e2f	\N
c28750eb-05ca-7113-1986-98e242c69063	11	Stefano Miccinelli, Mariano Carozzi, Digital Magics, Luigi Lanari, Giordano Martinelli, Dario Levi, Johan Bode, Lodovico Rosnati, Luca Fabio Giacometti, Marco Valerio Bellini, Pietro Boroli	84187fea-df20-a4e4-5179-93b43731f636	\N
6d0881ed-3aff-b85f-50d1-1bf530004868	7	Lead - Accel Partners, Pelion Venture Partners, Battery Ventures, Cedar Fund, Lightspeed Venture Partners, Wing Capital Group, Wing Venture Capital	f0dbb4c7-6416-3b38-aee3-deceba88f839	\N
b02ec57b-c87a-6a60-5475-f2536e6ca9cc	6	Lead - Sierra Ventures, Resolute.vc, 500 Startups, Issac Roth, Hiten Shah, AngelPad	84b26696-733f-5ab4-8777-c12b7e93c73d	\N
ff4435b0-a127-38e0-bb1e-d326fc37abb9	10	SVG Partners, Kevin Abosch, ACT Venture Capital, Mangrove Capital Partners, Notion Capital, Wayra, Shane Naughton, Enterprise Ireland, David Coallier, Greycroft Partners	52926acd-2f75-3751-449d-03c2a17ad4c6	\N
eb9a74e2-1fc7-3cde-97b8-627b9e573b75	11	SV Angel, Susa Ventures, Index Ventures, Michael Arrington, Michael Birch, Garry Tan, Charlie Cheever, Harjeet Taggar, Fuel Capital, Alexis Ohanian, Lerer Hippeau Ventures	9027cafa-bbd6-965b-bf1f-4f129a71f384	\N
0358cc19-f00e-9849-d3fb-8c4687bcd4e8	5	Lead - Mousse Partners, Life Sciences Partners, Founder Collective, Entree Capital, MassVentures	9315ebb2-704d-cd38-64cb-d787a2fc8508	\N
5838e093-02e0-5828-ed3c-295e31b420e6	9	SV Angel, Fuel Capital, Data Collective, Promus Ventures, Greycroft Partners, AME Cloud Ventures, e.ventures, Ashvin Patel, CrunchFund	b9a0b0fb-2e8f-2763-e180-21e25a101284	\N
23bcbf18-5663-d0fc-12c7-f247c72e3646	5	Lead - SanDisk Ventures, Lead - Qualcomm Ventures, Magma Venture Partners, Horizons Ventures, Mail.Ru Group	6972b9ad-e311-b16a-a63f-d4c88fd7d53a	\N
9623b3b2-9e62-7366-59e3-ed5943fbd69f	7	Lead - Tiger Global Management, Lead - Kleiner Perkins Caufield & Byers, Greylock Partners, Benchmark, Comcast Ventures, Slow Ventures, Shasta Ventures	5f6772ef-a9f2-d059-9cd5-7af6bbeb85d2	\N
7a544230-d962-3d4c-b92e-b2b476d82921	7	Lead - Peters & Co., Lead - RBC Capital Markets, Scotia Capital, CIBC World Markets, TD Securities, BMO Capital Markets Corp., FirstEnergy Capital	65613230-673b-51b5-1d83-2332d91c3e88	\N
bbd4662d-fdeb-fd3c-830d-4e8686174c0d	7	Mark Gorenberg, InstantScale Ventures, Ariel Poler, XSeed Capital, Richard Boyle, Frontier Tech Ventures, Andreessen Horowitz	5eb8e851-5a5e-379c-773d-eeddf3d50be7	\N
40bbe7f8-0155-25a6-22a1-3ba50c44c5a2	6	Lead - Kleiner Perkins Caufield & Byers, Silver Lake Partners, OPENAIR Equity Partners, RRE Ventures, NGEN Partners, SJF Ventures	0884ea7f-d7f2-0932-c6ed-1d8419057267	\N
edcf4a14-5472-f71a-1410-e73e8ec2d8af	5	High-Tech Gruenderfonds, Seventure Partners, Edwards Lifesciences, Wellington Partners, BioMedPartners	292f92d1-46ef-3ed9-f74a-a548d7a7113f	\N
c90eb8d3-27cf-6ddf-912d-0e85a86c9c2d	7	Lead - StarVest Partners, Harbert Growth Partners, Noro-Moseley Partners, Intersouth Partners, Morgenthaler Ventures, Scale Venture Partners, C&B Capital	1dd1b6e0-1d0b-ffe4-7a85-b66547e98eea	\N
91b2418e-24fa-0f8b-da5e-6c6b9e1b7183	5	Lead - Connecticut Innovations, Enhanced Capital Partners, Ironwood Capital, Kuzari Group, Eli Whitney Fund	b08a408b-a465-9fcc-ab94-95664465cc4a	\N
a4e8a324-09f2-98e2-f8da-551560e3cd96	5	Advancit Capital, Lightspeed Venture Partners, Lerer Hippeau Ventures, Red Swan Ventures, BDMI	de8c7764-22d7-c700-27e2-6cc191afe82d	\N
3bd31a24-06b9-39b1-0e35-902edefacff7	5	Lead - Sand Hill Angels, Lead - Flywheel Ventures, Motorola Solutions Venture Capital, The eCoast Angel Network, Don Dodge	62b50320-ca2d-d89a-c82e-680af9f5c8b7	\N
a626ccad-f7ee-e44f-6cda-f279ea055a8d	5	Lead - Andreessen Horowitz, CrunchFund, Spark Capital, Chicago Ventures, Mucker Capital	92260e0a-b9b0-80ac-e729-83f5c960664c	\N
53188c94-f936-cca0-0576-a09b643e0be6	6	Lead - DFJ Growth, Pitango Venture Capital, Acequia Capital (Acecap), Innovation Endeavors, Eyal Gura, SOSV	4557ecd0-4857-c69b-c419-d75c3e7044f3	\N
b09bead9-54e3-cd0f-2ab8-2cd4b7fdb159	6	Andreessen Horowitz, Drew Houston, Marc Benioff, General Catalyst Partners, Aaron Levie, GV	05473630-c195-7d14-232e-d890d5ef998b	\N
57584691-1913-5e00-da5a-eaac78718406	6	Lead - Jungle Ventures, Rebright Partners, Fenox Venture Capital, Vogel Ventures, ECONA AG, 500 Startups	c0759a0c-bc1a-175b-67c7-93ecc95efb3b	\N
8ab7b879-4915-1536-e5b3-aa9ea62fbbf1	8	HR Ventures, Morten Lund, German Startups Group, Mountain Partners, High-Tech Gruenderfonds, WestTech Ventures, Rouven Dresselhaus, Rheingau Founders	9ee487b2-a270-3d35-5e76-50c5c8c59603	\N
3b68168b-df5c-0711-31f8-386dabdedfe2	5	Draper Fisher Jurvetson (DFJ), Norwest Venture Partners - NVP, Nexus Venture Partners, Helion Venture Partners, Peepul Capital LLC	1c0635a6-0944-77a6-9184-3f3c298bba76	\N
4835d0ba-5816-205f-31d6-ddb5ee0da0e1	6	Lead - Origin Ventures, Hyde Park Angels, Hyde Park Venture Partners, Techra Investments, Illinois Ventures, OCA Ventures	05b8c014-2091-e180-f6d8-15ebaee74887	\N
fa3fa2f3-1c54-5c96-fc1b-4562dd7fe884	8	Lead - Mesirow Financial, Lead - InterWest Partners, Comerica Bank, Silver Creek Ventures, Wilson Sonsini Goodrich & Rosati, Lightspeed Venture Partners, Focus Ventures, Northleaf Capital Partners	c33875ec-72a5-5518-09d8-ad3e9ae5480b	\N
d6d2b387-77cd-16cc-7d81-485aa76befcf	7	Lead - True Ventures, Great Oaks Venture Capital, Vayner/RSE, Jeff Fluhr, Raj Sandhu, m8 Capital, Athena Technology Investors	b0463e1a-05fe-1676-fdf2-d57cf01c36d9	\N
cf2808da-b1bc-79a4-9320-39eda0db303c	5	Lead - Meritech Capital Partners, Ignition Partners, Andreessen Horowitz, Intel Capital, Highland Capital Partners	329f3c17-e907-88a9-1ed6-5faa37ad1a56	\N
543867af-5f88-bc69-76f9-ea4e0eb90c4f	5	Lead - Milestone Venture Partners, Lead - Cardinal Partners, The Partnership for New York City, JMI Equity, Carl Byers	75fa60d4-1230-9e59-e19e-904583a9a31e	\N
55ca06ac-f8ae-67ae-ada8-bc4829ca6315	11	Jason Seats, Amplify Partners, Loren Siebert, Rincon Venture Partners, Drummond Road Capital, 500 Startups, Pelion Venture Partners, George Karidis, Morris Wheeler, Sam Choi, XG Ventures	eac4a68e-03ff-e3ac-8cfb-afba249d4f0f	\N
26bb295b-60dd-5e50-104c-d80119dc1647	5	Lead - Intel Capital, Finnish Industry Investment Ltd (Suomen Teollisuussijoitus), California Technology Ventures, Spintop Ventures, OpenOcean	6c0475be-37d7-1353-4cf1-c527fc6beff9	\N
7292462d-ce7d-cb2a-ae07-1e2c7a7fdcb7	6	Lead - Fidelity Investments, Valiant Capital Partners, FirstMark Capital, Bessemer Venture Partners, blisce/, Andreessen Horowitz	8f83e283-e00b-8101-d79b-bf2dd6914d6e	\N
8adff042-05d6-5297-0881-3d7b9f2ad447	5	InnoSpring Seed Fund, FOUNDER.org, Imagine K12, Sinovation Ventures, ZhenFund	e7fa5e5b-61fe-5cff-3203-b0041ccfd5f4	\N
a87096ad-5b09-5a61-eb2a-33ee291e931d	8	Lead - HarbourVest Partners, Index Ventures, Vintage Investment Partners, Gemini Israel Ventures, GlenRock Israel, Carmel Ventures, Rhodium, Lightspeed Venture Partners	d009376f-1c2c-c996-1caf-218c4140ec8c	\N
714bb6b7-08d4-6977-efc4-9dbec3af59b1	5	Lead - Intel Capital, Expa, Triangle Peak Partners, Data Collective, QueensBridge Venture Partners	be669a7d-7467-6862-060d-efeca09260ab	\N
4a5c5a85-f9ff-5efd-1480-e14faed088c5	5	High-Tech Gruenderfonds, Vogel Ventures, Heissam Hartmann, K - Invest Beteiligungsgesellschaft GmbH & Co. KG, MCB Salt	a36e6f39-3a77-0f58-2c68-8e84f9e582c0	\N
d21097d9-a325-3a5f-588a-9d2c561f4d17	22	Startup:Education, SoftTech VC, SV Angel, Mark Zuckerberg, Alexis Ohanian, Osama Bedier, Maynard Webb, Webb Investment Network, Ashton Kutcher, Paul Buchheit, YEI Innovation Fund, GV, Sam Altman, Jeff Clavier, Joe Green, A-Grade Investments, Eric Ries, Geoff Ralston, Dalton Caldwell, Farzad (Zod) Nazem, Nick Ducoff, Garry Tan	3dd712f8-0f6d-2a6e-a007-4f503cc823b0	\N
9b793063-f97f-be27-eafd-c60bba8c078d	9	Lead - Resolute.vc, Blaine Vess, Lee Linden, Innovation Endeavors, Roger Dickey, Ilan Abehassera, Kapor Capital, 500 Startups, Max Burger	c11bc1d9-0d42-f304-d42d-cd04acba6901	\N
25c2a253-dc94-b270-a2e6-b4ab362af931	6	Lead - New Horizon Capital, Creaturk, GGV Capital, Sequoia Capital, Northern Light Venture Capital, Steamboat Ventures	abf5249d-30e6-7806-2fa6-3df8d7db552f	\N
f3e6ad1c-1f5e-07d9-01db-2b974ac41947	7	Lori Greiner, Structure Capital, Dillon Hill Capital, Robert Herjavec, Mark Cuban, Kevin O'Leary, Daymond John	e75621a0-856d-ec8d-eb67-8caac904b565	\N
77b4dd4f-5831-2197-1d16-7cc03d1d6e6b	5	Andreessen Horowitz, Anand Rajaraman, Social Capital, Ronald Conway, Formation 8	7a30950b-3e92-47d0-20e5-400aafc4fa1e	\N
c9d161d2-8b5e-2cf5-e4b2-3dcc294d0b7f	8	Expansion Venture Capital, Ulu Ventures, Felix W Ortiz III, CNF Investments, LLC, Elba Ortiz, Comcast Ventures, Dauk/Wagner Investments, Blue Ridge Foundation	53e52555-f0c9-345b-1a45-77c3c1c25ad3	\N
6cbe794b-9ce3-b49e-a228-1e6cfcafa694	7	Lead - Vintage Investment Partners, Lead - Jerusalem Global Ventures, Tallwood Venture Capital, Benchmark, Atheros Communications, Marvell Technology, Sequoia Capital	46e2257b-99cb-2a45-9ab0-f2fbf1deeba3	\N
\.


--
-- Data for Name: investors; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY investors (inv_id, name, domain, country_code, state_code, region, city, zipcode, inv_count, inv_type, total_funding, logo_url) FROM stdin;
0c867fde-2b9a-df10-fdb9-66b74f355f91	Sequoia Capital	sequoiacap.com	USA	CA	SF Bay Area	Menlo Park	\N	1257	venture_capital	3.41829837e+10	https://www.crunchbase.com/organization/sequoia-capital/primary-image/raw
56e40f50-97c7-2a77-255d-1d97d5f30646	500 Startups	500.co	USA	CA	SF Bay Area	Mountain View	\N	1232	accelerator	1.69650854e+09	https://www.crunchbase.com/organization/500-startups/primary-image/raw
47b84763-9727-7cdf-b194-2742e3963147	New Enterprise Associates	nea.com	USA	CA	SF Bay Area	Menlo Park	\N	1151	venture_capital	2.87247462e+10	https://www.crunchbase.com/organization/new-enterprise-associates/primary-image/raw
73633ee4-ea65-2967-6c5d-9b5fec7d2d5e	Y Combinator	ycombinator.com	USA	CA	SF Bay Area	Mountain View	\N	1091	accelerator	1.2082249e+09	https://www.crunchbase.com/organization/y-combinator/primary-image/raw
f3716725-552d-b9b5-59ad-de4ec64b1751	Intel Capital	intelcapital.com	USA	CA	SF Bay Area	Santa Clara	\N	1065	corporate_venture_capital	2.40191631e+10	https://www.crunchbase.com/organization/intel-capital/primary-image/raw
b08efc27-da40-505a-6f9d-c9e14247bf36	Accel Partners	accel.com	USA	CA	SF Bay Area	Palo Alto	\N	963	venture_capital	2.24060846e+10	https://www.crunchbase.com/organization/accel-partners/primary-image/raw
ac41030f-c20d-0060-3f0a-37f0eee13779	Wayra	wayra.co	ESP	None	Madrid	Madrid	\N	933	accelerator	172736800	https://www.crunchbase.com/organization/wayra/primary-image/raw
2d0a5bf0-e53e-9a07-2243-9bcd561421ec	Kleiner Perkins Caufield & Byers	kpcb.com	USA	CA	SF Bay Area	Menlo Park	\N	860	venture_capital	2.75318252e+10	https://www.crunchbase.com/organization/kleiner-perkins-caufield-byers/primary-image/raw
e26b98e6-3997-577d-eb5b-a195e31d03e3	Start-Up Chile	startupchile.org	CHL	None	Santiago	Santiago	\N	738	accelerator	48409188	https://www.crunchbase.com/organization/start-up-chile/primary-image/raw
ac53f2c3-4fd6-45c3-3a21-966c4d950f8f	Draper Fisher Jurvetson (DFJ)	dfj.com	USA	CA	SF Bay Area	Menlo Park	\N	712	venture_capital	1.12229222e+10	https://www.crunchbase.com/organization/draper-fisher-jurvetson/primary-image/raw
39041e62-6b24-ae8d-1347-4cea947e832c	SOSV	sosv.com	USA	NJ	Newark	Princeton	\N	694	accelerator	260774992	https://www.crunchbase.com/organization/sosventures/primary-image/raw
902deab4-ec41-68ce-d9df-c0c959578176	SV Angel	svangel.com	USA	CA	SF Bay Area	San Francisco	\N	691	micro_vc	4.31556147e+09	https://www.crunchbase.com/organization/sv-angel/primary-image/raw
3718597a-dd39-6661-3630-09cdd43bcac2	Techstars	techstars.com	USA	CO	Denver	Boulder	\N	641	accelerator	423724480	https://www.crunchbase.com/organization/techstars/primary-image/raw
beadb218-e5fa-2686-bc95-4dfaa9acc2e8	Bessemer Venture Partners	bvp.com	USA	CA	SF Bay Area	Menlo Park	\N	606	venture_capital	1.31387494e+10	https://www.crunchbase.com/organization/bessemer-venture-partners/primary-image/raw
3ee29c77-685f-38d4-09dd-f31be5bcd8c1	Brand Capital	brandcapital.co.in	IND	None	Mumbai	Mumbai	\N	548	venture_capital	2.86107494e+09	https://www.crunchbase.com/organization/brandcapital/primary-image/raw
043d9e52-dcc0-0dd8-6074-206e42e20e13	First Round	firstround.com	USA	CA	SF Bay Area	San Francisco	\N	541	venture_capital	5.33897984e+09	https://www.crunchbase.com/organization/first-round-capital/primary-image/raw
60b5dade-24ed-84b0-99e2-1ecda554a1ab	Index Ventures	indexventures.com	CHE	None	Geneva	Geneva	\N	527	venture_capital	1.04729672e+10	https://www.crunchbase.com/organization/index-ventures/primary-image/raw
e2006571-6b7a-e477-002a-f7014f48a7e3	Greylock Partners	greylock.com	USA	CA	SF Bay Area	Menlo Park	\N	512	venture_capital	1.07361843e+10	https://www.crunchbase.com/organization/greylock/primary-image/raw
30b3efdf-6024-804d-ea55-c4d1a8dfc86c	Goldman Sachs	goldmansachs.com	USA	NY	New York City	New York	\N	507	investment_bank	3.43648952e+10	https://www.crunchbase.com/organization/goldman-sachs/primary-image/raw
d5df3873-7871-c608-0284-c74d0b555ccd	Lightspeed Venture Partners	lsvp.com	USA	CA	SF Bay Area	Menlo Park	\N	499	venture_capital	1.10226903e+10	https://www.crunchbase.com/organization/lightspeed-venture-partners/primary-image/raw
7a42b564-4bb6-5864-6cdb-a0100008f3b3	Battery Ventures	battery.com	USA	MA	Boston	Boston	\N	487	venture_capital	1.00005816e+10	https://www.crunchbase.com/organization/battery-ventures/primary-image/raw
fe2d1e8b-f607-3c9f-fad7-98fb8412f77e	Benchmark	benchmark.com	USA	CA	SF Bay Area	San Francisco	\N	483	venture_capital	1.11505592e+10	https://www.crunchbase.com/organization/benchmark/primary-image/raw
ed24f9ce-2313-cb8c-8ff2-9de6899ea992	Venrock	venrock.com	USA	CA	SF Bay Area	Palo Alto	\N	480	venture_capital	1.11291781e+10	https://www.crunchbase.com/organization/venrock/primary-image/raw
2ca323e0-fbcc-f738-a7a1-86b6322788bd	High-Tech Gruenderfonds	high-tech-gruenderfonds.de	DEU	None	Bonn	Bonn	\N	475	micro_vc	703175040	https://www.crunchbase.com/organization/high-tech-gruenderfonds/primary-image/raw
ce91bad7-b6d8-e56e-0f45-4763c6c5ca29	Andreessen Horowitz	a16z.com	USA	CA	SF Bay Area	Menlo Park	\N	472	venture_capital	1.3883564e+10	https://www.crunchbase.com/organization/andreessen-horowitz/primary-image/raw
3bfb69a8-61b6-ec30-1512-73bd1ca35bc5	Right Side Capital Management	rightsidecapital.com	USA	CA	SF Bay Area	San Francisco	\N	464	micro_vc	132867800	https://www.crunchbase.com/organization/right-side-capital-management/primary-image/raw
4ab1b039-d9ce-f96a-06e7-f737e37eee08	Norwest Venture Partners - NVP	nvp.com	USA	CA	SF Bay Area	Palo Alto	\N	458	venture_capital	9.47044045e+09	https://www.crunchbase.com/organization/norwest-venture-partners/primary-image/raw
d29973c3-95ec-691d-defd-6a6ba713c72a	Redpoint	redpoint.com	USA	CA	SF Bay Area	Menlo Park	\N	458	venture_capital	9.61481318e+09	https://www.crunchbase.com/organization/redpoint-ventures/primary-image/raw
6f2acf2a-5cbf-adb1-cbb4-5829ab0b08cd	Atlas Venture	atlasventure.com	USA	MA	Boston	Cambridge	\N	457	venture_capital	6.19760128e+09	https://www.crunchbase.com/organization/atlas-venture/primary-image/raw
34a9bb66-0984-8de0-e7fb-13e976b4a135	General Catalyst Partners	generalcatalyst.com	USA	MA	Boston	Cambridge	\N	450	venture_capital	8.21748685e+09	https://www.crunchbase.com/organization/general-catalyst-partners/primary-image/raw
fe5a4983-a46a-2fc2-5633-e35e0a86b694	Khosla Ventures	khoslaventures.com	USA	CA	SF Bay Area	Menlo Park	\N	450	venture_capital	1.01901025e+10	https://www.crunchbase.com/organization/khosla-ventures/primary-image/raw
ec66c602-011e-63bb-cd78-3a79a59cebfd	Northstar Ventures	northstarventures.co.uk	GBR	None	Newcastle	Newcastle Upon Tyne	\N	448	venture_capital	283921984	https://www.crunchbase.com/organization/northstar-ventures/primary-image/raw
3c62db15-4db8-016a-145e-dd1a06d168e2	GV	gv.com	USA	CA	SF Bay Area	Mountain View	\N	444	venture_capital	9.11725363e+09	https://www.crunchbase.com/organization/google-ventures/primary-image/raw
a34c63f0-c277-3e4b-bbfc-1868ca81596d	Menlo Ventures	menlovc.com	USA	CA	SF Bay Area	Menlo Park	\N	440	venture_capital	8.71280333e+09	https://www.crunchbase.com/organization/menlo-ventures/primary-image/raw
01a2a666-577c-1673-eba6-74c02aaf2e80	Crowdcube	crowdcube.com	GBR	None	Exeter	Exeter	\N	432	funding_platform	282322368	https://www.crunchbase.com/organization/crowdcube/primary-image/raw
26bcf130-4aa8-a3b3-3571-1b8f13143370	Canaan Partners	canaan.com	USA	CA	SF Bay Area	Menlo Park	\N	417	venture_capital	6.94976154e+09	https://www.crunchbase.com/organization/canaan-partners/primary-image/raw
a2b35e8b-e3e9-883b-8a07-38e6ef57d726	U.S. Venture Partners (USVP)	usvp.com	USA	CA	SF Bay Area	Menlo Park	\N	414	venture_capital	8.43571046e+09	https://www.crunchbase.com/organization/us-venture-partners/primary-image/raw
93c87ab7-7cee-5c54-9941-104693dbbdba	Plug and Play	plugandplaytechcenter.com	USA	CA	SF Bay Area	Sunnyvale	\N	413	accelerator	338939424	https://www.crunchbase.com/organization/plug-and-play-ventures/primary-image/raw
add1bcfe-41e3-7828-253b-d7c8694ed4ca	Polaris Partners	polarispartners.com	USA	MA	Boston	Boston	\N	402	venture_capital	6.49412915e+09	https://www.crunchbase.com/organization/polaris-partners/primary-image/raw
d1bc5ab8-adde-56aa-5dfc-d69d0377430d	Kima Ventures	kimaventures.com	FRA	None	Paris	Paris	\N	396	micro_vc	346064992	https://www.crunchbase.com/organization/kima-ventures/primary-image/raw
4eee5e60-3b06-6fe8-cc2c-29119a96051d	Silicon Valley Bank	svb.com	USA	CA	SF Bay Area	Santa Clara	\N	392	investment_bank	7.62076621e+09	https://www.crunchbase.com/organization/silicon-valley-bank/primary-image/raw
0e09f1a3-ab17-d2d6-80a4-4425f38e4078	Matrix Partners	matrixpartners.com	USA	CA	SF Bay Area	San Francisco	\N	389	venture_capital	6.40484454e+09	https://www.crunchbase.com/organization/matrix-partners/primary-image/raw
3213cd7d-06e0-3ecb-3359-29aa8deddfa6	Mayfield Fund	mayfield.com	USA	CA	SF Bay Area	Menlo Park	\N	388	venture_capital	6.89980723e+09	https://www.crunchbase.com/organization/mayfield-fund/primary-image/raw
f5315b3c-bb4c-1828-9b81-2f2103cdb761	RRE Ventures	rre.com	USA	NY	New York City	New York	\N	375	venture_capital	4.97960602e+09	https://www.crunchbase.com/organization/rre-ventures/primary-image/raw
4e0cf914-3a8e-c3c2-4ef8-ee6f5e8fdb47	CRV	crv.com	USA	MA	Boston	Cambridge	\N	374	venture_capital	5.27609139e+09	https://www.crunchbase.com/organization/charles-river-ventures/primary-image/raw
c06fab5e-2646-a238-a280-1ce83e63f507	Tech Coast Angels	techcoastangels.com	USA	CA	Anaheim	Newport Beach	\N	374	angel_group	355840736	https://www.crunchbase.com/organization/tech-coast-angels/primary-image/raw
704baa25-5337-ecb0-71f7-f28c18ad3faa	Foundation Capital	foundationcapital.com	USA	CA	SF Bay Area	Menlo Park	\N	373	venture_capital	7.05822362e+09	https://www.crunchbase.com/organization/foundation-capital/primary-image/raw
310d858d-653e-90d4-2527-dc9a555326e7	Startupbootcamp	startupbootcamp.org	GBR	None	London	London	\N	371	accelerator	15779514	https://www.crunchbase.com/organization/startupbootcamp/primary-image/raw
343a0c91-d3b9-80fa-2330-cfde495decf1	IDG Capital Partners	idgvc.com	CHN	None	Beijing	Beijing	\N	365	corporate_venture_capital	5.84975514e+09	https://www.crunchbase.com/organization/idg-capital-partners/primary-image/raw
b51ff078-c9d9-9f51-681d-4f9ac888e070	Highland Capital Partners	hcp.com	USA	MA	Boston	Cambridge	\N	363	venture_capital	6.87621274e+09	https://www.crunchbase.com/organization/highland-capital-partners/primary-image/raw
\.


--
-- Data for Name: organizations; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY organizations (org_id, company_name, homepage_url, country_code, state_code, region, city, zipcode, description, category_list, logo_url) FROM stdin;
4ca2593a-1e9d-b393-ae3f-b745ee0c670c	360insights	http://www.360incentives.com	CAN	ON	Toronto	Whitby	L1N 8R1	360insightsprovides a SaaS-based platform that enables manufacturers and distributors to manage their incentives programs.	manufacturing|software	\N
e94407ea-d3a5-0f75-f3d0-30ab8a43ac44	4G Clinical	http://4gclinical.com/	USA	MA	MA - Other	Dover	02030	We are equipped to answer the extreme cost and time pressures of clinical trials unlike anyone else.	health care|information technology	\N
2107422d-5877-013e-f7dc-b92d94173b76	Actofit	http://actofit.com/	IND	None	Mumbai	Mumbai	410210	Actofit is a wearable tech startup that allows you to track your workouts in granularity (75+ gym exercises) and make data driven decisions	community and lifestyle|consumer electronics|hardware|health care|software|sports	\N
29aba40e-c037-1937-ed5f-bd84b89ba336	Finrise	https://finrise.com/	USA	CA	SF Bay Area	Burlingame	None	Finrise provides a financing option for treatments and services that are not covered by insurance, directly in the doctor's office.	financial services|health care	\N
4efdc204-5a73-6ffb-f439-21a772173f08	Hubb	http://www.hubb.me/	USA	WA	Seattle	Vancouver	98661	Hubb is a software platform that helps conference and meeting planners manage and market content for their events.	commerce and shopping|events|information technology|media and entertainment	\N
6980f0c9-b6ad-aeaf-2549-e5b7acab5ede	Juice So Good	http://www.juicesogood.com/	USA	MN	Minneapolis	Minneapolis	55414	So Good Brand is a better-for-you food and beverage company	None	\N
bf439965-9b7e-fd12-197f-40924b071fc3	Kayentis	http://www.kayentis.com	FRA	None	FRA - Other	Gif-sur-yvette	91193	Kayentis provides eCOA solutions for pharmaceutical companies and tools to help monitoring efficiently.	software	\N
159bdc91-daa4-b112-98db-cc054020c259	Matahari Mall	http://mataharimall.com	IDN	None	Jakarta	Jakarta	None	Matahari Mall is an Indonesian e-commerce platform that covers the fashion, health and beauty, electronics, home, and many other industries.	commerce and shopping|design	\N
1148cb4f-ca69-8db6-978b-81e6f1d5dcb8	Mio Global	http://www.mioglobal.com/	CAN	BC	Vancouver	Vancouver	None	Mio ALPHA is the first and only sport watch to provide continuous, accurate heart rate monitoring.	consumer electronics|education|hardware|health care	\N
8a2cd511-190e-506a-aee5-96a5582c6f1b	Notion	https://notion.ai/	USA	MI	Detroit	Ann Arbor	48104	Notion is a communications intelligence company out to solve communications overload once and for all.	internet services	\N
45c2d282-c289-0347-5d4d-67a068d7e6a2	SPARK Schools	http://www.sparkschools.co.za	ZAF	None	Johannesburg	Gauteng	2160	SPARK Schools is a network of affordable private schools implementing Africa’s first blended learning model for primary school students.	None	\N
711bdeac-3cb7-c7ba-d4c8-5b9ff4b1b37a	BlackThorn Therapeutics	http://www.blackthornrx.com/	USA	CA	SF Bay Area	South San Francisco	94080	BlackThorn Therapeutics is a clinical-stage biopharmaceutical company	None	\N
f9d73d3b-177c-21ad-1cad-366af1f94df4	Bumpers, Inc.	http://www.bumpers.fm/	USA	NY	New York City	New York	None	Bumpers develops an iOS app that allows users to make apodcast direct from their mobile devices, using the phone's built-in microphones.	None	\N
266be32a-2ae7-87ff-4dcc-5672d4a54641	Capricor Therapeutics	http://www.capricor.com	USA	CA	Los Angeles	Los Angeles	90048	Capricor Therapeutics is a biotechnology company focused on the discovery, development and commercialization.	biotechnology|health care|science and engineering	\N
56ea3d53-bc8c-fec3-c65b-925f4d80db17	Cardiogram	https://cardiogr.am	None	None	None	None	None	Cardiogram organize your mobile health data by making it meaningful, useful, and actionable.	apps|health care|software	\N
6c30ec8c-d283-07ef-4874-634b1dbf86eb	ChatOnGo	http://chatongo.com/	IND	None	Mumbai	Mumbai	400 010	ChatOnGo is a hyper local platform bringing vendors closer to their customers	None	\N
c2ee6373-f9cf-2ee7-3919-7f94c2e34bc0	CityFALCON	http://www.cityfalcon.com	GBR	None	London	London	E14 5AB	Democratising access to financial news	data and analytics|financial services	\N
ebf1b549-40cb-fbe4-b5a8-2c706dee7d59	Contorion	http://www.contorion.de	DEU	None	Berlin	Berlin	10969	Contorion.de is a B2B online marketplace for maintenance, repair and operations (MRO) products	internet services	\N
c5019228-8d89-0c4b-3d5a-16b9e9c379bb	CourseStorm	http://www.coursestorm.com	USA	ME	ME - Other	Orono	04473	Impossibly simple course registration	education	\N
7a551f83-f2a8-1fb9-8758-f4a42671e037	Ejiupi	http://www.yijiupi.com	CHN	None	Shanghai	Shanghai	None	B2B platform in China's alcoholic industry	None	\N
173c5854-80f4-bd91-977d-dd4445cdf0fd	Emulate	http://emulatebio.com	USA	MA	Boston	Cambridge	02139	Emulate, Inc. is a private company focused on commercializing Organs-on-Chips.	biotechnology|health care|science and engineering	\N
dba2c3b4-126a-5aa8-8a43-e80ecea7be68	EnergySavvy	http://www.energysavvy.com	USA	WA	Seattle	Seattle	98104	EnergySavvy provides utilities with cloud solutions to drive customer intelligence, engagement, and action.	energy|hardware|internet services|software|sustainability	\N
69d91137-499e-467f-ec47-c2e972e9e18a	Feedzai	http://www.feedzai.com	USA	CA	SF Bay Area	San Mateo	94402	Feedzai, a data science company, offers software that uses big data analysis and machine-based learning to prevent fraud in commerce.	data and analytics|financial services|information technology	\N
392268c3-8e74-6066-7783-9d19f5e80411	Flat6Labs	http://www.flat6labs.com	EGY	None	Cairo	Gîza	None	Flat6Labs is Sawari Ventures’ dedicated startup accelerator for seed stage investments.	apps|education|financial services|lending and investments|software	\N
9c4dc690-eada-466e-d55f-3db4144fd97e	Hipcask	http://www.hipcask.com/	IND	None	Mumbai	Mumbai	400 053	Hipcask is a smartphone application that enables users to discover wines, whiskies, and beers.	apps|software	\N
3313cf72-8272-187e-c0b2-8de5d55b7897	Hopster TV	http://www.hopster.tv	GBR	None	London	London	EC1M 4EH	The only safe and ad-free TV and learning app, just for kids aged 2-6. http://bit.ly/gethopsternow	apps|education|mobile|platforms|software	\N
b2ad4b5b-1d18-2aae-9276-ae0c3fb75306	Kernel Co.	http://kernel.co/	USA	CA	Los Angeles	Los Angeles	None	Kernel is a human intelligence company developing the world’s first neuroprosthesis to mimic, repair and improve cognition.	None	\N
5e45b25f-858d-9eaf-434c-cff42d1eb589	Nvoicepay	http://www.nvoicepay.com	USA	OR	Portland, Oregon	Beaverton	97008	Nvoicepay delivers strategic payments solutions to automate accounts payable.	financial services|professional services	\N
613faa5f-40f1-2f29-3d86-f1e66eb9159f	NXTP Labs	http://www.nxtplabs.com	ARG	None	Buenos Aires	Buenos Aires	C1414DMJ	NXTP Labs is the most active early stage fund for tech companies in Latin America. Acceleration and growth are part of our DNA.	commerce and shopping|education|financial services|lending and investments|mobile|transportation	\N
e239dcb8-3072-17d2-c8ba-66c2e8a2b6b8	Pick Protection	http://pickprotection.com/	GBR	None	Glasgow	Glasgow	None	Pick Protection is security & investigation company.	None	\N
85dd6bd7-56ca-416a-cf5f-24546cf42036	Propeller Health	http://www.propellerhealth.com	USA	WI	Madison	Madison	53703	Propeller Health is a mobile platform that offers sensors, mobile apps, analytics, and services to support respiratory health management.	data and analytics|health care	\N
e7fa5e5b-61fe-5cff-3203-b0041ccfd5f4	Securly	http://securly.com	USA	CA	SF Bay Area	Santa Clara	95054	Securly is a web filter that enables educators to use instructional tools such as Google, YouTube, and Wikipedia in classrooms.	consumer electronics|education|hardware|software	\N
fc22c939-0f00-89d6-7c04-132e95141d06	Simptek Technologies	https://www.simptekinc.com/	CAN	NB	Fredericton	Fredericton	E3B 1B2	Enabling utility companies to better engage	None	\N
77e6bb07-93af-b43f-8329-b6d852ac2cf9	Starteed	http://www.starteed.com/	ITA	None	Turin	Turin	10122	Starteed is a crowdfunding site that helps all people who have an original idea to make it real thanks to the financial and social support	financial services	\N
8e714711-e8fa-6df4-06cf-2b30af648723	Terra Solar	http://www.terrasolar.ie/	IRL	None	Dublin	Dublin	None	Terra Solar is at the forefront of solar energy development	None	\N
2e4fd3bd-8c6d-ceb2-a48d-a821da8792e3	The Student Hub	http://thestudenthub.co/	ZAF	None	Cape Town	Cape Town	7945	Join The Textbook Evolution	None	\N
bcf5f17b-ae10-4d28-e5d7-4b6a67f7bbb4	TravelBank	http://travelbank.com/	USA	CA	SF Bay Area	San Francisco	None	TravelBank develops a travel and expense system targeting small to medium businesses.	None	\N
fa3b1ad4-d27f-33f0-ccff-5f74c6e9fc1c	Triseum	http://triseum.com/	USA	TX	TX - Other	Bryan	77803	Triseum is a game-based learning company blending cutting edge video game experiences with deep education expertise	education|gaming	\N
f3c446ac-a246-4159-2b38-97af25a69bed	ULU	http://www.ulu.io	NLD	None	Eindhoven	Eindhoven	5656 AE	ULU It is marriage of hardware, software, cloud intelligence and services, that will revolutionize the way we interact with our car.	mobile|transportation	\N
3e8132f9-67b4-7731-f873-7a0624d32175	Undo	http://undo.io/	GBR	None	London	Cambridge	CB5 8LA	Undo's unique recording and reversible debugging technology lets developers know exactly what their software did.	software	\N
0b723098-d24e-f252-11a6-61a67b72531f	USRealty.com	https://usrealty.com/	USA	NY	New York City	New York	10036	USRealty.com is a New York City based innovative online real estate company.	None	\N
b85405f9-8e9e-e862-661b-b9f1c4257d0e	Venbrook Insurance Services	http://www.venbrook.com/	USA	CA	Los Angeles	Woodland Hills	91367	Venbrook Insurance Services is a national leader in insurance broking and risk management solutions.	None	\N
2d9667bc-823f-1e88-ac66-9f5f62f55a64	Verdigris Technologies	http://www.verdigris.co	USA	CA	CA - Other	Moffett Field	94035	Verdigris Technologies is a SaaS-based platform that develops artificial intelligence in order to optimize energy consumption.	data and analytics|energy|internet services|software	\N
f706b85f-2680-f695-a6c9-6e8cb6bc6e72	WeShop	http://www.weshop.com	USA	NY	New York City	New York	None	WeShop was a consumer network in beta that facilitated communication between consumers, merchants and vendors.	internet services	\N
33f309bf-8fb7-f9ac-aa67-ab21ce904dab	Wilderness Safaris	http://www.wilderness-safaris.com	None	None	None	None	None	Wilderness Safaris is a company that protects wilderness areas with the flaura and fauna in their areas.	None	\N
14829078-9288-a615-fbc4-c3f287486196	EverQuote	https://www.everquote.com/	USA	MA	Boston	Cambridge	02139	EverQuote is an independent insurance marketplace and is a free service that helps consumers compare quotes on auto insurance.	internet services	\N
9d7e89a4-a4cf-452c-a36b-c457aafcfc8f	Makerist	http://www.makerist.de	DEU	None	Berlin	Berlin	10969	Makerist is the leading European DIY and handicraft platform.	commerce and shopping	\N
9185a077-c260-ac40-2678-fef9e645591b	Monzo	https://monzo.com/	GBR	None	London	London	None	Building a bank as smart as your phone. Intelligent notifications, instant balance updates and financial management.	financial services|lending and investments	\N
b7504f9f-8397-b921-b847-3f6da3a11f4e	Solutions Infini	http://www.solutionsinfini.com	IND	None	Bangalore	Bangalore	560078	Leading provider in Enterprise Messages	information technology|internet services|messaging and telecommunications|sales and marketing	\N
c331dd1f-f18c-5e80-2105-ede74c824b6c	ZappiStore	https://zappistore.com	GBR	None	London	London	NW1 7JR	ZappiStore is the online research provider that is changing the way that companies are accessing insight.	internet services	\N
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY people (people_id, first_name, last_name, gender, ethnicity, title, org_id) FROM stdin;
4673d1a9-dca0-345c-43bb-35b00ea79c7b	Betty	Kayton	Female	\N	CFO	ac8e670d-9193-bc11-d637-556aee3975f9
ef8f55a2-ef87-9c85-1be8-c8a26bfef6a2	Daniel	Leff	Male	\N	Founder & Managing Partner	cd2b3d96-fccb-b4b8-a216-6c6f9f7cef48
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
6171f0b6-e39f-247f-1290-cfa84781e4c8	John	Donovan	Male	\N	Affiliate, Economics Department	6599f877-7c83-0c47-b05b-dbedd3db7b3a
389ee7c8-6b42-1ed8-70f9-95c10d4d7765	Igor	Shoifot	Male	\N	Investment Partner	9ccdb121-e93c-9a3e-6d11-57920cc82ecb
389ee7c8-6b42-1ed8-70f9-95c10d4d7765	Igor	Shoifot	Male	\N	Investment Partner	9ccdb121-e93c-9a3e-6d11-57920cc82ecb
389ee7c8-6b42-1ed8-70f9-95c10d4d7765	Igor	Shoifot	Male	\N	Investment Partner	9ccdb121-e93c-9a3e-6d11-57920cc82ecb
389ee7c8-6b42-1ed8-70f9-95c10d4d7765	Igor	Shoifot	Male	\N	Investment Partner	9ccdb121-e93c-9a3e-6d11-57920cc82ecb
58df9ab6-4ef6-1673-45ef-830dab6bd601	Amol	Sarva	Male	\N	Co-Founder & CEO	63948a4d-fae9-c690-802f-2435eec683c1
58df9ab6-4ef6-1673-45ef-830dab6bd601	Amol	Sarva	Male	\N	Co-Founder & CEO	63948a4d-fae9-c690-802f-2435eec683c1
58df9ab6-4ef6-1673-45ef-830dab6bd601	Amol	Sarva	Male	\N	Co-Founder & CEO	63948a4d-fae9-c690-802f-2435eec683c1
58df9ab6-4ef6-1673-45ef-830dab6bd601	Amol	Sarva	Male	\N	Co-Founder & CEO	63948a4d-fae9-c690-802f-2435eec683c1
58df9ab6-4ef6-1673-45ef-830dab6bd601	Amol	Sarva	Male	\N	Co-Founder & CEO	63948a4d-fae9-c690-802f-2435eec683c1
3b656132-b996-323e-29a9-ef0a2be0e49e	Andy	Russell	Male	\N	Founder & CEO	adea047a-33f7-1d31-5276-1da087043274
3b656132-b996-323e-29a9-ef0a2be0e49e	Andy	Russell	Male	\N	Founder & CEO	adea047a-33f7-1d31-5276-1da087043274
3b656132-b996-323e-29a9-ef0a2be0e49e	Andy	Russell	Male	\N	Founder & CEO	adea047a-33f7-1d31-5276-1da087043274
3b656132-b996-323e-29a9-ef0a2be0e49e	Andy	Russell	Male	\N	Founder & CEO	adea047a-33f7-1d31-5276-1da087043274
0647bc6e-9da0-9a25-d46b-860fe4a74268	Scott	McGregor	Male	\N	Member of the Board of Director	None
0647bc6e-9da0-9a25-d46b-860fe4a74268	Scott	McGregor	Male	\N	Member of the Board of Director	None
0647bc6e-9da0-9a25-d46b-860fe4a74268	Scott	McGregor	Male	\N	Member of the Board of Director	None
3ddbad07-f1e3-910b-30aa-a15fec4f56f2	John	Wehr	Male	\N	Co-Founder, CTO	3f6e157d-fd29-50fa-6c00-7e0a8d98465e
3ddbad07-f1e3-910b-30aa-a15fec4f56f2	John	Wehr	Male	\N	Co-Founder, CTO	3f6e157d-fd29-50fa-6c00-7e0a8d98465e
3ddbad07-f1e3-910b-30aa-a15fec4f56f2	John	Wehr	Male	\N	Co-Founder, CTO	3f6e157d-fd29-50fa-6c00-7e0a8d98465e
3ddbad07-f1e3-910b-30aa-a15fec4f56f2	John	Wehr	Male	\N	Co-Founder, CTO	3f6e157d-fd29-50fa-6c00-7e0a8d98465e
3ddbad07-f1e3-910b-30aa-a15fec4f56f2	John	Wehr	Male	\N	Co-Founder, CTO	3f6e157d-fd29-50fa-6c00-7e0a8d98465e
39020cd0-0d2f-7789-7937-000b740b98cb	Joseph	Morin	Male	\N	CEO / Co-Founder	2ab6fce2-9f4c-2d13-3c08-0341ea1efdb7
4d860965-b989-7a89-0732-28858bb32118	Basil	Horangic	Male	\N	Member of the Board of Directors	None
4d860965-b989-7a89-0732-28858bb32118	Basil	Horangic	Male	\N	Member of the Board of Directors	None
\.


--
-- Name: funding_rounds_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY funding_rounds
    ADD CONSTRAINT funding_rounds_pkey PRIMARY KEY (funding_id);


--
-- Name: investors_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY investors
    ADD CONSTRAINT investors_pkey PRIMARY KEY (inv_id);


--
-- Name: organizations_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY organizations
    ADD CONSTRAINT organizations_pkey PRIMARY KEY (org_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

