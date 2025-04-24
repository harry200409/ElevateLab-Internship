-- 1. Countries with population greater than 100 million
SELECT Name, Population
FROM Country
WHERE Population > 100000000
ORDER BY Population DESC;

-- 2. Number of cities per country
SELECT CountryCode, COUNT(*) AS CityCount
FROM City
GROUP BY CountryCode
ORDER BY CityCount DESC;

-- 3. INNER JOIN: Cities with their country names
SELECT City.CityName, Country.Name AS Country
FROM City
INNER JOIN Country ON City.CountryCode = Country.Code;

-- 4. LEFT JOIN: All countries with cities (show NULL if no city exists)
SELECT Country.Name, City.CityName
FROM Country
LEFT JOIN City ON Country.Code = City.CountryCode;

-- 5. RIGHT JOIN: All cities and their countries (countries might be NULL)
SELECT City.CityName, Country.Name AS Country
FROM City
RIGHT JOIN Country ON City.CountryCode = Country.Code;

-- 6. Countries with population greater than the average
SELECT Name, Population
FROM Country
WHERE Population > (SELECT AVG(Population) FROM Country);

-- 7. Cities in the most populous country
SELECT CityName
FROM City
WHERE CountryCode = (
  SELECT Code
  FROM Country
  ORDER BY Population DESC
  LIMIT 1
);

-- 8. Total population per continent
SELECT Continent, SUM(Population) AS TotalPopulation
FROM Country
GROUP BY Continent;

-- 9. Average population of cities in each country
SELECT CountryCode, AVG(Population) AS AvgCityPop
FROM City
GROUP BY CountryCode;

-- 10. Add indexes for optimization
CREATE INDEX idx_country_code ON Country(Code);
CREATE INDEX idx_city_countrycode ON City(CountryCode);
CREATE INDEX idx_countrylanguage_countrycode ON CountryLanguage(CountryCode);
CREATE INDEX idx_city_population ON City(Population);
