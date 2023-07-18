-- Creating contacts table
CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Creating category table
CREATE TABLE category (
    category_id VARCHAR(4) PRIMARY KEY NOT NULL,
    category VARCHAR(255) NOT NULL
);

-- Creating subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(8) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(255) NOT NULL
);

-- Creating campaign table
CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(255) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(255) NOT NULL,
    currency VARCHAR(255) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(4) NOT NULL,
    subcategory_id VARCHAR(8) NOT NULL,
    FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY(category_id) REFERENCES category(category_id),
    FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Check table creation
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;
