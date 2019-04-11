CREATE DATABASE IF NOT EXISTS basketball_db;
USE basketball_db;

DROP TABLE IF EXISTS salary;
CREATE TABLE salary (
  id INT PRIMARY KEY,
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
  namekey VARCHAR(64) PRIMARY KEY,
  Player TEXT, 
  height DECIMAL(5,2), 
  weight DECIMAL(5,2), 
  college TEXT,
  birth_city TEXT, 
  birth_state TEXT
);

DROP TABLE IF EXISTS player_data;
CREATE TABLE player_data (
  id INT PRIMARY KEY,
  namekey VARCHAR(64),
  name TEXT, 
  year_start INT, 
  year_end INT, 
  position TEXT
);


