-- Read User

-- Create the database
CREATE IF NOT EXISTS DATABASE 'hbtn_0d_2';

-- Create the user
CREATE USER IF NOT EXISTS 'user_0d_2' IDENTIFIED BY 'user_0d_2_pwd';

-- Grant access
GRANT SELECT PRIVILEGES ON 'hbtn_0d_2' TO 'user_0d)2'@'localhost';
