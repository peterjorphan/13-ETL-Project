CREATE DATABASE IF NOT EXISTS basketball_db;
USE basketball_db;

DROP TABLE IF EXISTS salary;
CREATE TABLE salary (
  id INT NOT NULL PRIMARY KEY,
  Name TEXT,
  Season TEXT, 
  RK INT,
  Team TEXT,
  Salary DECIMAL(12,0),
  namekey VARCHAR(64) 
  -- FOREIGN KEY fk_cat(namekey)
  -- REFERENCES players(namekey)
);

DROP TABLE IF EXISTS players;
CREATE TABLE players (
  namekey VARCHAR(64) NOT NULL PRIMARY KEY,
  Player TEXT, 
  height DECIMAL(5,2), 
  weight DECIMAL(5,2), 
  college TEXT,
  birth_city TEXT, 
  birth_state TEXT
);

DROP TABLE IF EXISTS player_data;
CREATE TABLE player_data (
  id INT NOT NULL PRIMARY KEY,
  name TEXT, 
  year_start INT, 
  year_end INT, 
  position TEXT, 
  birth_date DATE, 
  namekey VARCHAR(64)
);

/* 
ALTER TABLE salary 
ADD FOREIGN KEY (namekey) REFERENCES players(namekey);
ALTER TABLE player_data 
ADD FOREIGN KEY (namekey) REFERENCES players(namekey);
*/

SELECT * FROM basketball_db.players;
SELECT * FROM basketball_db.player_data;
SELECT * FROM basketball_db.salary;
