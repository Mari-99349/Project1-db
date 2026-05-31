# Project1-db
OVERVIEW 

This project presents the design and implementation of a Medicine Inventory Management
System using a relational database structure. The system is developed to efficiently manage and
organize healthcare-related data in a structured and reliable way.
The database includes multiple interconnected entities such as medicines, diseases, doctors,
prescriptions, prescription details, and billing records.
These entities are linked through welldefined relationships to ensure data consistency, reduce redundancy, and maintain integrity across
the system.
The system supports a many-to-many relationship between medicines and diseases,
implemented using a junction table. and includes relationships between doctors and
prescriptions, as well as prescriptions and billing while  implementing SQL triggers to automate important operations such as
updating billing totals whenever prescription details are modified.
A set of testing and analytical queries is also included to verify the correctness of data insertion,
relationships, and system functionality.




--- Repository structure ----

You will find all the files needed in the main under the repository name “project1-db”

The repository includes the following :

Readme for project explaination and how to import the database and run the code 

Report_ .pdf —> Full detailed project report with ER diagram the old version that should be deleted is Report.pdf without underscore, it didnt contain ER diagram  

SQL ——> includes the full project code 

Create tables ——> all the create commands DDL 

Load_data ——> all insert commands DML

Triggers ——> the triggers we added for the code insert into

Queries ——> the queries that answers the project’s questions 

ppt -----> Power point explaination for the project 

Youtube Videolink----> video explaination for project 

Contribution Form ----> each member's contribution 

You will also find Final_medicine inventory management system.SQL it should have been deleted, you can ignore it's just a copy from the code.






----- How to run the code through mysql workbench ----

 1) First you will open the connections in MySQL Workbenck to enter the main dashboard

2) Click on  server in the top menu bar, select Data import and then choose import from Self-contained file 

3) click the three dots and select your SQL file from the computer

