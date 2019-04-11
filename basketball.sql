CREATE DATABASE IF NOT EXISTS basketball_db;
USE basketball_db;

DROP TABLE IF EXISTS salary;
CREATE TABLE salary (
  id INT PRIMARY KEY,
  Name TEXT,
  Season TEXT, 
  RK INT,
  Team TEXT,
  Salary DECIMAL(13,2),
  namekey VARCHAR(64),
  FOREIGN KEY fk_cat(namekey)
  REFERENCES players(namekey)
);

DROP TABLE IF EXISTS players;
CREATE TABLE players (
  namekey VARCHAR(64) PRIMARY KEY,
  Player TEXT, 
  Height_cm DECIMAL(3,2), 
  Weight_kg DECIMAL(3,2), 
  College TEXT,
  Birth_City TEXT, 
  Birth_State TEXT
);
