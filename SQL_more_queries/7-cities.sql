-- Cities Table

-- Create database
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Create the table
CREATE TABLE IF NOT EXISTS cities (
    id INT PRIMARY KEY NOT NULL UNIQUE,
    state_id INT NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(id)
);
