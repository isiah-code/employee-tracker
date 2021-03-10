DROP DATABASE IF EXISTS employeeDB;
CREATE DATABASE employeeDB;

USE employeeDB;

CREATE TABLE department (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL 
)

CREATE TABLE role (
    department_id INT NOT NULL UNSIGNED,
    INDEX dep_id (deparment_id)
    --foreign key references cascade (ties the roles to the employees)
    title
    salary INT NOT NULL UNSIGNED 

)

CREATE TABLE employee (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL UNSIGNED,
    INDEX role_id (role_id),
    --foreign key references cascade (ties the roles to the employees)
    manager_id INT UNSIGNED,
    INDEX man_id (manager_id)
    --foreign key references cascade (ties the roles to the employees)
)

