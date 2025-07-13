# University Database 💾

This repository contains a series of SQL scripts for creating, populating, and querying a university database. [Visio ERD (100%)](/.github/docs/GroupS11221203_A2_ERD.vsdx)

## Authors

- [Anav Chand](https://github.com/anav5704)
- [Vishant Kumar](https://github.com/v-i-s-h-a-n-t)
- [Rohan Nandan](https://github.com/SRVSRR)
- [Justin Chen](https://github.com/PermanentBrainDamage)

## Description

The SQL scripts in this repository are designed to manage a university's student and course data. The main components are:

- **`GroupS11221203_A2_CreateStructures.sql`**: This script contains the `CREATE TABLE` statements to build the database schema.
- **`GroupS11221203_A2_InsertData.sql`**: This script contains the `INSERT` statements to populate the database with initial data.
- **`GroupS11221203_A2_Queries.sql`**: This script contains a series of queries to retrieve information from the database. These queries cover a range of topics, including:
    - Listing candidates and their qualifications.
    - Identifying companies that have hired students.
    - Finding candidates who require further education.
    - Checking for outstanding student fees.
    - Reporting on job openings and candidate suitability.

## How to Run

To use these scripts, you will need to have MySQL installed and running. You can execute the scripts from the MySQL command line interface.

1.  **Create the database structure:**
    ```bash
    mysql -u your_username -p your_database_name < GroupS11221203_A2_CreateStructures.sql
    ```

2.  **Insert the data:**
    ```bash
    mysql -u your_username -p your_database_name < GroupS11221203_A2_InsertData.sql
    ```

3.  **Run the queries:**
    ```bash
    mysql -u your_username -p your_database_name < GroupS11221203_A2_Queries.sql
    ```

    You will be prompted to enter your MySQL password after running each command. Replace `your_username` and `your_database_name` with your MySQL username and the name of the database you want to use.

## Learning Resources

- [MySQL commands & examples](https://www.bytebase.com/reference/mysql/how-to/top-mysql-commands-with-examples)
- [MySQL tutorial](https://www.w3schools.com/MySQL/default.asp)
- [Download XAMPP](https://www.apachefriends.org/download.html)
