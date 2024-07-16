-- Create a new database (if not already created via environment variables)
CREATE DATABASE IF NOT EXISTS my_database;

-- Use the new database
USE my_database;

-- Create a new table
CREATE TABLE IF NOT EXISTS my_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);