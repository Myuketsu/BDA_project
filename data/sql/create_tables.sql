CREATE TABLE region (
    code VARCHAR(8) CONSTRAINT region_key PRIMARY KEY,
    nom VARCHAR(200) NOT NULL
);

CREATE TABLE departement (
    code VARCHAR(8) CONSTRAINT departement_key PRIMARY KEY,
    nom VARCHAR(200) NOT NULL,

    code_region VARCHAR(8) REFERENCES region(code)
);

CREATE TABLE commune (
    code VARCHAR(8) CONSTRAINT commune_key PRIMARY KEY,
    nom VARCHAR(200) NOT NULL,

    code_departement VARCHAR(8) REFERENCES departement(code)
);

CREATE TABLE cheflieuRegion (
    code VARCHAR(8) CONSTRAINT chef_lieu_region_key PRIMARY KEY,

    code_region VARCHAR(8) REFERENCES region(code)
);

CREATE TABLE cheflieuDepartement (
    code VARCHAR(8) CONSTRAINT chef_lieu_departement_key PRIMARY KEY,

    code_departement VARCHAR(8) REFERENCES departement(code)
);

-- D1
CREATE TABLE mariage (
    id SERIAL PRIMARY KEY,
    type_de_mariage VARCHAR(5),
    region_departement VARCHAR(5),
    groupe_age VARCHAR(5),
    nombre_de_maries INT
);

-- D2 – État matrimonial antérieur des époux selon le département et la région de mariage. Année 2021

CREATE TABLE etat_matrimonial_anterieur_mariage (
    id SERIAL PRIMARY KEY,
    type_de_mariage VARCHAR(5),
    region_departement VARCHAR(5),
    sexe VARCHAR(5),
    etat_matrimonial VARCHAR(1),
    nombre_de_maries INT
);


-- D3
CREATE TABLE premier_mariage (
    id SERIAL PRIMARY KEY,
    type_de_mariage VARCHAR(5),
    region_departement VARCHAR(5),
    groupe_age VARCHAR(5),
    nombre_de_maries INT
);

-- D4 Nationalité des époux selon le département et la région de domicile conjugal. Année 2021

CREATE TABLE nationalite_epoux (
    id SERIAL PRIMARY KEY,
    type_de_mariage VARCHAR(5),
    region_departement VARCHAR(5),
    nationalite_combinee VARCHAR(7),
    nombre_de_maries INT
);

-- D5
CREATE TABLE pays_mariage (
    id SERIAL PRIMARY KEY,
    type_de_mariage VARCHAR(2),
    region_departement VARCHAR(5),
    pays_naissance VARCHAR(7),
    nombre_de_maries INT
);

-- D6 Répartition mensuelle des mariages selon le département et la région de mariage. Année 2021

CREATE TABLE repartition_mensuelle_mariage (
    id SERIAL PRIMARY KEY,
    type_de_mariage VARCHAR(5),
    region_departement VARCHAR(5),
    mois_mariage VARCHAR(2),
    nombre_de_maries INT
);

CREATE TABLE population (
    id SERIAL PRIMARY KEY,
    code_commune VARCHAR(10),
    superficie FLOAT,
    nombre_logement_2020 FLOAT,
    nombre_logement_2014 FLOAT,
    nombre_logement_2009 FLOAT,
    nombre_logement_1999 INT,
    nombre_logement_1990 INT,
    nombre_logements_vacants_2020 FLOAT,
    nombre_logements_vacants_2014 FLOAT,
    nombre_logements_vacants_2009 FLOAT,
    nombre_logements_vacants_1999 INT,
    nombre_logements_vacants_1990 INT,
    nombre_deces_1420 INT,
    nombre_deces_0914 INT,
    nombre_deces_9909 INT,
    nombre_naissance_1420 INT,
    nombre_naissance_0914 INT,
    nombre_naissance_9909 INT,
    population_2020 FLOAT,
    population_2014 FLOAT,
    population_2009 FLOAT,
    population_2099 INT,
    population_2090 INT,
    population_2082 INT,
    residence_principale_2020 FLOAT,
    residence_principale_2014 FLOAT,
    residence_principale_2009 FLOAT,
    residence_principale_1999 INT,
    residence_principale_1990 INT,
    residence_secondaire_2020 FLOAT,
    residence_secondaire_2014 FLOAT,
    residence_secondaire_2009 FLOAT,
    residence_secondaire_1999 INT,
    residence_secondaire_1990 INT
);