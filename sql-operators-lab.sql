```sql
-- SQL Operators Lab
-- Database: world
-- Table: country

USE world;

-- 1. COUNT()
SELECT COUNT(*) AS NumberOfCountries
FROM country;

-- 2. GROUP BY
SELECT Continent, COUNT(*) AS NumberOfCountries
FROM country
GROUP BY Continent;

-- 3. WHERE with AND
SELECT Name, Capital, Region, SurfaceArea, Population
FROM country
WHERE Population >= 50000000
  AND Population <= 100000000;

-- 4. WHERE with OR
SELECT Name, Continent, Population
FROM country
WHERE Continent = 'Africa'
   OR Continent = 'Asia';

-- 5. BETWEEN
SELECT Name, Capital, Region, SurfaceArea, Population
FROM country
WHERE Population BETWEEN 50000000 AND 100000000;

-- 6. LIKE
SELECT Name, Region
FROM country
WHERE Region LIKE "%Europe%";

-- 7. LIKE with single-character wildcard
SELECT Name
FROM country
WHERE Name LIKE "Ke_ya";

-- 8. IN
SELECT Name, Continent
FROM country
WHERE Continent IN ('Africa', 'Asia');

-- 9. NOT IN
SELECT Name, Continent
FROM country
WHERE Continent NOT IN ('Africa', 'Asia');

-- 10. IS NULL
SELECT Name, Capital, Continent
FROM country
WHERE Capital IS NULL;

-- 11. IS NOT NULL
SELECT Name, Capital, Continent
FROM country
WHERE Capital IS NOT NULL;

-- 12. SUM() and AS
SELECT SUM(Population) AS "Europe Population Total"
FROM country
WHERE Region LIKE "%Europe%";

-- 13. Arithmetic operators
SELECT Name, Population, SurfaceArea,
       Population / SurfaceArea AS PopulationDensity
FROM country;

-- 14. Modulus operator
SELECT Population % 2 AS Remainder
FROM country;

-- 15. LOWER()
SELECT Name, Capital, Region
FROM country
WHERE LOWER(Region) LIKE "%central%";

-- 16. ORDER BY DESC
SELECT Name, Population
FROM country
ORDER BY Population DESC;

-- 17. ORDER BY ASC
SELECT Name, Population
FROM country
ORDER BY Population ASC;

-- 18. HAVING
SELECT Continent, COUNT(*) AS NumberOfCountries
FROM country
GROUP BY Continent
HAVING COUNT(*) > 10;

-- 19. GROUP BY with SUM()
SELECT Region, SUM(GNP) AS TotalGNP
FROM country
WHERE Continent = 'Africa'
GROUP BY Region;

-- 20. DISTINCT
SELECT DISTINCT Region
FROM country;

-- 21. Operator precedence
SELECT Name, Continent, Population
FROM country
WHERE Continent = 'Africa'
   OR Continent = 'Asia'
   AND Population > 50000000;

-- 22. Operator precedence with parentheses
SELECT Name, Continent, Population
FROM country
WHERE (Continent = 'Africa' OR Continent = 'Asia')
  AND Population > 50000000;

-- 23. Practical Challenge: North America
SELECT
    SUM(SurfaceArea) AS "North America Surface Area Total",
    SUM(Population) AS "North America Population Total"
FROM country
WHERE Region LIKE "%North America%";
```
