-- Active: 1776332007246@@127.0.0.1@3306@edusync
CREATE DATABASE edusync ;
USE edusync ;

CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR(20)
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(20) NOT NULL,
    lastname VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(256) NOT NULL,
    roles_id INT UNIQUE ,
    FOREIGN KEY (roles_id) REFERENCES roles(id)
);

CREATE TABLE classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    classrom_number INT NOT NULL
);

CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    description VARCHAR(50) NOT NULL,
    total_hours INT NOT NULL
);

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_of_birth DATE NOT NULL,
    student_number INT NOT NULL,
    classes_id INT,
    FOREIGN KEY (classes_id) REFERENCES classes(id),
    users_id INT,
    FOREIGN KEY (users_id) REFERENCES users(id)
);


CREATE TABLE enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    enrolled_at DATE NOT NULL,
    status 
)




