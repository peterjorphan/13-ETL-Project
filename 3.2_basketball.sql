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

DROP TABLE IF EXISTS player_stats;
CREATE TABLE player_stats (
  id INT NOT NULL PRIMARY KEY,
  Year INT,
  Player TEXT, 
  Pos TEXT, 
  Age INT, 
  G INT, 
  GS INT, 
  MP INT, 
  PER DECIMAL(4,1), 
  TSprc DECIMAL(4,3), 
  3PAr DECIMAL(4,3), 
  FTr DECIMAL(4,3),
  ORBprc DECIMAL(4,1),
  DRBprc DECIMAL(4,1),
  TRBprc DECIMAL(4,1),
  ASTprc DECIMAL(4,1),
  STLprc DECIMAL(4,1),
  BLKprc DECIMAL(4,1),
  TOVprc DECIMAL(4,1),
  USGprc DECIMAL(4,1),
  OWS DECIMAL(4,1),
  DWS DECIMAL(4,1),
  WS DECIMAL(4,1),
  WS48 DECIMAL(4,3),
  OBPM DECIMAL(4,1),
  DBPM DECIMAL(4,1),
  BPM DECIMAL(4,1),
  VORP DECIMAL(4,1),
  FG INT,
  FGA INT, 
  FGprc DECIMAL(4,3),
  3P INT, 
  3PA INT, 
  3Pprc DECIMAL(5,3),
  2P FLOAT,
  2PA INT, 
  2Pprc DECIMAL(4,1),
  eFGprc DECIMAL(4,1),
  FT INT, 
  FTA INT,
  FTprc DECIMAL(4,1),	
  ORB INT, 
  DRB INT, 
  TRB INT, 
  AST INT, 
  STL INT,
  BLK INT,
  TOV INT,
  PF INT,
  PTS  INT,
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
SELECT * FROM basketball_db.player_stats;
