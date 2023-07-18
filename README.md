# Crowdfunding_ETL
ETL Mini Project
This ETL mini project focuses on building an ETL pipeline using Python, Pandas, and data extraction from Excel files. The project involves transforming the data, creating CSV files, designing a database schema, and importing the data into a PostgreSQL database.

Project Overview
The goal of this project is to extract data from crowdfunding Excel files, transform it using Python and Pandas, and load it into a PostgreSQL database. The project consists of several steps:

Creating Category and Subcategory DataFrames by extracting and transforming the category and subcategory data from the crowdfunding Excel file.

Creating a Campaign DataFrame by extracting and transforming campaign-related data from the Excel file.

Creating a Contacts DataFrame by extracting and transforming contact information from another Excel file, using either Python dictionary methods or regular expressions.

Designing a database schema based on the extracted data and creating the required tables in a PostgreSQL database.

Importing the CSV files into their corresponding SQL tables in the PostgreSQL database.

Project Structure
The project is organized into the following directories and files:

data/: Contains the input Excel files (crowdfunding.xlsx and contacts.xlsx).
scripts/: Contains the Python scripts for data extraction, transformation, and CSV file creation.
database/: Contains the PostgreSQL database schema file (crowdfunding_db_schema.sql).
output/: Contains the exported CSV files (category.csv, subcategory.csv, campaign.csv, and contacts.csv).
