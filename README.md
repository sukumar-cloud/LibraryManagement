# 📚 Library Management System

## 📌 Overview
The **Library Management System** is a **Java Swing-based application** that allows users to **add, search, delete, and view books** in a MySQL database. It follows the **MVC (Model-View-Controller) architecture** for better modularity and maintainability.

---

## 📂 Project Structure  
📂 src/main/java/org/example

│── 📂 dao
│   ├── BookDAO.java    
│   ├── DataBaseConnection.java


│── 📂 model
│   ├── Book.java      


│── 📂 gui
│   ├── MainMenu.java        
│   ├── AddBookGUI.java      
│   ├── ViewBooksGUI.java    
│   ├── SearchBookGUI.java  
│   ├── DeleteBookGUI.java  

│   Main.java

│   TestDB.java   
#
## 🛠️ Technologies Used
- **Java** (JDK 11 or later)
- **Swing** (GUI)
- **MySQL** (Database)
- **JDBC** (Database connectivity)
- **Maven** (Dependency Management)

#after this add the sql 
CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE books (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
author VARCHAR(255) NOT NULL,
isbn VARCHAR(50) NOT NULL UNIQUE
);
## run this query to create a database in the mysql
## mvn clean install
## mvn exec:java -Dexec.mainClass="org.example.model.Main"
### mvn test 
for the unit testing or u can run manually the testdb file.

