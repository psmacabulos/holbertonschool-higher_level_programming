-- Read User

-- Create the database
CREATE DATABASE IF NOT EXISTS hbtn_0d_2;

-- Create the user
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';

-- Grant access
GRANT SELECT ON hbtn_0d_2.* TO 'user_0d_2'@'localhost';
