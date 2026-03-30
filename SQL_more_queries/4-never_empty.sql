-- ID cant be null

-- Create a table with an id that cant be null
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT NOT NULL DEFAULT 1,
    name VARCHAR(256)
);
