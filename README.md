## Crowdfunding Database Project ##

This project involved extracting and transforming Excel data into CSV files to create a PostgreSQL database for crowdfunding data.

### Data Cleaning and Transformation ###

The crowdfunding.xlsx Excel file contained raw data from a crowdfunding website. This data needed to be cleaned and transformed into four CSV files:

- category.csv - Contains category ID and name columns. The category ID column contains values like "cat1", "cat2", etc.

- subcategory.csv - Contains subcategory ID and name columns. The subcategory ID column contains values like "subcat1", "subcat2", etc.

- contacts.csv - Contains contact ID, first name, last name, and email columns.

- campaign.csv - Contains campaign data including ID, contact ID, description, goal amount, pledged amount, status, backer count, launch date, end date, country, currency, category ID, and subcategory ID.

Cleaning Campaign Launch and End Dates:

The raw launch_date and deadline columns contained UTC timestamps. These were converted to a datetime datatype in pandas using .to_datetime() and re-named to launch_date and end_date:

Splitting Contact Name into First and Last:

The name column contained the full name. This was split into first_name and last_name columns using regex

The raw Excel data was loaded into Pandas DataFrames and cleaned using methods like .str.split(), .astype(),  and .to_datetime(). The cleaned DataFrames were exported into the four CSV files.

## Database Schema ##

An ERD diagram was created using QuickDBD to plan out the database schema based on the relationships between the CSV files.

![image](https://github.com/ashejaz/Crowdfunding_ETL/assets/127614970/bf59a336-ee93-4ee5-9987-865427129f38)

The ERD was used to create a Postgres database schema SQL file crowdfunding_db_schema.sql that contains CREATE TABLE statements for each of the four tables, along with primary keys, foreign keys, and other constraints.

## Creating the Database ##

The Postgres database crowdfunding_db was created and the tables were generated by running the SQL statements from the crowdfunding_db_schema.sql file.

Finally, each of the four CSV files was imported into its corresponding database table as below:

Contacts:

![image](https://github.com/ashejaz/Crowdfunding_ETL/assets/127614970/9877f93a-a187-460d-a203-9d7ec28f68a5)

Category:

![image](https://github.com/ashejaz/Crowdfunding_ETL/assets/127614970/80ad5c62-aad9-4c29-bd1a-671be1cb6689)

Subcategory:

![image](https://github.com/ashejaz/Crowdfunding_ETL/assets/127614970/730c4005-1476-4899-828f-f3465e97d6bc)

Campaign:

![image](https://github.com/ashejaz/Crowdfunding_ETL/assets/127614970/c730f568-0628-456b-b668-90278ce25957)


The database is now ready to be queried and analyzed!

## Files ##

Resources folder:

crowdfunding.xlsx - Raw crowdfunding Excel data

contacts.xlsx - Raw contacts Excel data

category.csv - Cleaned category data

subcategory.csv - Cleaned subcategory data

contacts.csv - Cleaned contact data

campaign.csv - Cleaned campaign data


SQL_DB folder:

crowdfunding_db_schema.sql - Database schema SQL file

crowdfunding_ERD.png - Entity relationship diagram for all 4 tables

contacts.png - Result of SELECT * query for contacts table

category.png - Result of SELECT * query for category table

subcategory.png - Result of SELECT * query for subcategory table

campaign.png - Result of SELECT * query for campaign table
