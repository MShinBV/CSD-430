-- Miles Shinsato, 11/20/2026, CSD430-306J, Assignment 5.2 & 6.2
-- SQL to create miles_movies_data table

-- Creating the CSD430 database if not already established
CREATE DATABASE IF NOT EXISTS CSD430;

-- Select the CSD430 database
USE CSD430;

-- Create user: student1 with password: pass
CREATE USER IF NOT EXISTS 'student1'@'localhost' IDENTIFIED BY 'pass';

-- Grant user privileges to everything in CSD430 database and applying the changes
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
FLUSH PRIVILEGES;


-- Create the miles_movies_data table
CREATE TABLE IF NOT EXISTS miles_movies_data (
    -- auto_increment to create the primary key for the table as an ID#
    id INT AUTO_INCREMENT PRIMARY KEY,
    -- VARCHAR up to 100 to allow for movie titles of all types
    movie_title VARCHAR(100) NOT NULL,
    -- INT to have the release year as a number
    release_year INT,
    -- VARCHAR up to 50 for movie genre names
    genre VARCHAR(50),
    -- DECIMAL(3,1) Also adding a check to keep it a 1.0 - 10.0 rating with one decimal point for half ratings like 9.5
    rating DECIMAL(3,1) CHECK (rating >=1.0 AND rating <=10.0)
);
