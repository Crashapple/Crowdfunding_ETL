-- We just created the database crowdfunding_db in pgAdmin and loaded the csv files into the tables there 

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR NOT NULL
);

CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR NOT NULL
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR,
    backers_count INT NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

select * from contacts

select * from subcategory 

select * from category 

select * from campaign 

