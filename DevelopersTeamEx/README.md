# Developers

This project is the third sprint of the bootcamp "PHP Full Stack Web Development" at IT Academy, Barcelona.

The goal was to program a web application to use it as a task list.

The main structure of the project as well as some functions were given and the student had to use them for the task.

For the purpose of learning there were 3 levels of this project, depending on the type of persistency used.
1. First level - JSON Persistency
2. Second level - MySQL Persistency
3. Third Level - MongoDB Persistency

# Notes
1. Notice that actually it is possible to carry on SQL Injection Attacks to the application.
This is done on purpose in order to learn how SQL Injection Attacks work.
In order to avoid SQL Injection attack in the whole application several possibilities can be carried on.
As:  
	1. Using Function mysql_real_escape_string()
	2. Using Prepared Statements (with Parameterised Queries)
	3. Etc.
	
2. It is possible that de docker-compose up command does not work while building the project as the version of the MongoDB driver contained in the  composer.json file does not match the actual version contained in the system.
If that happens the version must be changes in the composer.json file in order to fit the library version installed in the container. While doing so it may be necessary to delete the composer.lock file.