-- COUNTRY TABLE
CREATE TABLE Country (
    Code CHAR(3) PRIMARY KEY,        
    Name VARCHAR(100) NOT NULL,
    Continent VARCHAR(50),
    Region VARCHAR(50),
    Population INT,
    Capital INT
);

-- CITY TABLE
CREATE TABLE City (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CityName VARCHAR(100) NOT NULL,
    CountryCode CHAR(3),
    District VARCHAR(100),
    Population INT,
    FOREIGN KEY (CountryCode) REFERENCES Country(Code)
);

-- COUNTRY LANGUAGE TABLE
CREATE TABLE CountryLanguage (
    CountryCode CHAR(3),
    Language VARCHAR(50),
    IsOfficial BOOLEAN,
    Percentage FLOAT,
    PRIMARY KEY (CountryCode, Language),
    FOREIGN KEY (CountryCode) REFERENCES Country(Code)
);

-- Sample Countries
INSERT INTO Country (Code, Name, Continent, Region, Population, Capital)
VALUES 
  ('USA', 'United States', 'North America', 'North America', 331000000, NULL),
  ('IND', 'India', 'Asia', 'Southern Asia', 1393409038, NULL),
  ('CHN', 'China', 'Asia', 'Eastern Asia', 1444216107, NULL);

-- Sample Cities
INSERT INTO City (CityName, CountryCode, District, Population)
VALUES 
  ('New York', 'USA', 'New York', 8419000),
  ('Mumbai', 'IND', 'Maharashtra', 12442373),
  ('Beijing', 'CHN', 'Beijing', 21540000);

-- Sample Languages
INSERT INTO CountryLanguage VALUES ('USA', 'English', TRUE, 95.0);
INSERT INTO CountryLanguage VALUES ('IND', 'Hindi', TRUE, 44.0);
INSERT INTO CountryLanguage VALUES ('IND', 'English', FALSE, 12.0);
INSERT INTO CountryLanguage VALUES ('CHN', 'Mandarin', TRUE, 92.0);
