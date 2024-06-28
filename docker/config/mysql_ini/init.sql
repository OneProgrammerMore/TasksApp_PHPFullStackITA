CREATE DATABASE IF NOT EXISTS tasks_database;
use tasks_database; 
CREATE TABLE IF NOT EXISTS  Tasks (
	task_id int AUTO_INCREMENT, 
	user varchar(128), 
	task_type ENUM('Pending', 'Ongoing', 'Finished'),
	description varchar(1500), 
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
	finalization_date TIMESTAMP, 
	UNIQUE(task_id) 
);
CREATE USER IF NOT EXISTS 'tasker'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'tasker'@'%' WITH GRANT OPTION;
#FLUSH PRIVILEGES;
