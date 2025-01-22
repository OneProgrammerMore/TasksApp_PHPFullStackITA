# ✅ Tasks App - Developers

## 🚀 About

This project is the third sprint of the bootcamp "PHP Full Stack Web Development" at IT Academy, Barcelona.

The goal was to program a web application to use it as a task list.

The main structure of the project as well as some functions were given and the student had to use them for the task.

For the purpose of learning there were 3 levels of this project, depending on the type of persistency used.
1. First level - JSON Persistency
2. Second level - MySQL Persistency
3. Third Level - MongoDB Persistency


## 📈   Installation

In order to install the project you may use docker.
Run the following command in the root folder of your project:
```
docker-compose up
```

The web will be accessible on the following URL:
  - localhost:80
  - 127.0.0.1:80

  Or the next URLs
  - http://127.0.0.1:80
  - http://localhost:80

## Tools

In order to run tailwind:

Examples:

```
# Start a watcher
/home/tailwind/tailwind -i input.css -o output.css --watch

# Compile and minify your CSS for production
/home/tailwind/tailwind -i indexStylesheetIn.css -o indexStylesheet.css  --minify

# Compile and minify your CSS for production with configuration file
/home/tailwind/tailwind -c tailwind-config-example.js -i indexStylesheetIn.css -o indexStylesheet.css  --minify
```


## 🎯 Testing

No testing was carried on for this project but just personal testing on the Firefox browser.


## 🎨 Standardization/Formatting

In order to lint, style and format the project several plugins in VSCode have been used as:
- Prettier
- Stylelint
- ESLint
- PHP Intelephense
- Laravel Intelisense

## 🔝 Main Achievements
- Understand the MVC pattern and the router from the given project "empty" code.
- Create a tasks list web application using the MVC pattern with the PHP, JS, CSS and HTML programming languages,
- Create 3 different persistencies for the application:
	+ JSON
	+ MySQL
	+ MongoDB
- Create a development environment using Docker and Docker-Compose.


## 🎓 Technologies
- PHP
- JavaScript
- HTML
- CSS
- TailWind
- Visual Studio Code (with several plugins)
- Docker
- Linux
- Apache2

## ❗ Notes
1. Notice that actually it is possible to carry on SQL Injection Attacks to the application.
This is done on purpose in order to learn how SQL Injection Attacks work.
In order to avoid SQL Injection attack in the whole application several possibilities can be carried on.
As:  
	1. Using Function mysql_real_escape_string()
	2. Using Prepared Statements (with Parameterised Queries)
	3. Etc.
	
2. It is possible that de docker-compose up command does not work while building the project as the version of the MongoDB driver contained in the  composer.json file does not match the actual version contained in the system.
If that happens the version must be changed in the composer.json file in order to fit the library version installed in the container. While doing so it may be necessary to delete the composer.lock file.

## 📝  ToDo

- [ ] Improve the search capabilities to add search terms and filters at the same time.
 