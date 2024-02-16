-- Create a new table
CREATE TABLE category (
    category_id VARCHAR NOT NULL PRIMARY KEY,
    category_name VARCHAR NOT NULL
);

-- Check to ensure table was created successfully
Select *
From category

-- Import category.csv using the "Import/Export Data..." option on the Table.

-- Check to ensure data imported
Select *
From category


-- Create a new table
CREATE TABLE subcategory (
    subcategory_id VARCHAR NOT NULL PRIMARY KEY,
    subcategory_name VARCHAR NOT NULL
);

-- Check to ensure table was created successfully
Select *
From subcategory

-- Import subcategory.csv by using the "Import/Export Data..." option on the Table.

-- Check to ensure data imported
Select *
From subcategory


-- Create a new table
CREATE TABLE contacts (
    contact_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);

-- Check to ensure table was created successfully
Select *
From contacts

-- Import contacts.csv by using the "Import/Export Data..." option on the Table.

-- Check to ensure data imported
Select *
From contacts


-- Create a new table
CREATE TABLE campaign (
    cf_id INT NOT NULL PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR NOT NULL,
    description TEXT NOT NULL,
    goal INT NOT NULL,
    pledged INT NOT NULL,
    outcome VARCHAR NOT NULL,
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

-- Check to ensure table was created successfully
Select *
From campaign

-- Import campaign.csv by using the "Import/Export Data..." option on the Table.

ALTER TABLE campaign 
ALTER COLUMN goal TYPE numeric;

-- Attempt #2 to import campaign.csv by using the "Import/Export Data..." option on the Table.

ALTER TABLE campaign 
ALTER COLUMN pledged TYPE numeric;

-- Attempt #3 to import campaign.csv by using the "Import/Export Data..." option on the Table.

-- Check to ensure data imported
Select *
From campaign