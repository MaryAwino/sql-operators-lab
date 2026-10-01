# SQL Operators Lab
## Overview

This project documents my hands-on practice with SQL operators, conditional searches, aggregate functions, aliases, arithmetic operations, and grouping using the MySQL/MariaDB `world` database.

The lab was completed in an AWS lab environment using a Command Host instance to query the `world` database.

### Database

- **Database:** `world`
- **Main table:** `country`
- **Database system:** MySQL/MariaDB

## SQL Concepts Practiced

### 1. COUNT()

`COUNT()` is used to count the number of records in a table.

```sql
SELECT COUNT(*) AS NumberOfCountries
FROM country;

### 3. WHERE, AND, OR

The `WHERE` clause is used to filter records based on a condition.

For example, I selected countries with a population between 50 million and 100 million:

```sql
SELECT Name, Capital, Region, SurfaceArea, Population
FROM country
WHERE Population >= 50000000 AND Population <= 100000000;
```

The `AND` operator requires both conditions to be true.

The `OR` operator allows either condition to be true.

Example:

```sql
SELECT Name, Continent, Population
FROM country
WHERE Continent = 'Africa' OR Continent = 'Asia';
```

### 4. BETWEEN

The `BETWEEN` operator is used to search for values within a specific range. It includes both the starting and ending values.

Example:

```sql
SELECT Name, Capital, Region, SurfaceArea, Population
FROM country
WHERE Population BETWEEN 50000000 AND 100000000;
```

This query returns countries with a population from **50 million to 100 million**, including both limits.

### 5. LIKE and Wildcards

The `LIKE` operator is used to search for a specific pattern in text.

The `%` wildcard represents zero or more characters.

Example:

```sql
SELECT Name, Region
FROM country
WHERE Region LIKE "%Europe%";
```

This returns countries where the word `Europe` appears anywhere in the `Region` value.

The `_` wildcard represents exactly one character.

Example:

```sql

### 6. IN and NOT IN

The `IN` operator is used to match a value against a list of possible values.

Example:

```sql
SELECT Name, Continent
FROM country
WHERE Continent IN ('Africa', 'Asia');
```

This returns countries located in either Africa or Asia.

The `NOT IN` operator excludes the specified values.

### 7. NULL Values

`NULL` represents a missing or unknown value in a database.

To find records where a column contains `NULL`, use `IS NULL`.

Example:

```sql id="8r1t9k"
SELECT Name, Capital, Continent
FROM country
WHERE Capital IS NULL;
```

To find records where a column does not contain `NULL`, use `IS NOT NULL`.

Example:

```sql id="7v8k2m"
SELECT Name, Capital, Continent
FROM country
WHERE Capital IS NOT NULL;
```

`NULL` cannot be compared using `=` or `!=`. Use `IS NULL` or `IS NOT NULL` instead.

Example:

```sql
SELECT Name, Continent
FROM country
WHERE Continent NOT IN ('Africa', 'Asia');
```

This returns countries that are not located in Africa or Asia.
SELECT Name
FROM country
WHERE Name LIKE "Ke_ya";
```

This searches for names where the `_` represents one character.

### 8. SUM() and AS

`SUM()` is an aggregate function used to calculate the total of numeric values.

Example:

```sql
SELECT SUM(Population) AS "Europe Population Total"
FROM country
WHERE Region LIKE "%Europe%";
```

The `AS` keyword creates an alias, which gives the calculated column a more meaningful name.

For example, `"Europe Population Total"` is the alias for the `SUM(Population)` result.

### 9. Arithmetic Operators

SQL supports arithmetic operations such as addition (`+`), subtraction (`-`), multiplication (`*`), division (`/`), and modulus (`%`).

Example:

```sql id="1o1j4h"
SELECT Name, Population, SurfaceArea,
       Population / SurfaceArea AS PopulationDensity
FROM country;
```

This calculates the population density by dividing the population by the surface area.

The `%` operator returns the remainder after division.

Example:

```sql id="j3m6v2"
SELECT Population % 2 AS Remainder
FROM country;
```

### 10. LOWER()

`LOWER()` converts text to lowercase. It can be useful when performing searches without depending on the capitalization of the stored data.

Example:

```sql id="5s7d2p"
SELECT Name, Capital, Region
FROM country
WHERE LOWER(Region) LIKE "%central%";
```

This searches for regions containing `central` regardless of how the text is capitalized.

### 11. ORDER BY

`ORDER BY` is used to sort query results in ascending (`ASC`) or descending (`DESC`) order.

Example:

```sql
SELECT Name, Population
FROM country
ORDER BY Population DESC;
```

This displays countries from the highest population to the lowest population.

To sort from the lowest to the highest population:

```sql
SELECT Name, Population
FROM country
ORDER BY Population ASC;
```

`ASC` is the default sorting order if no direction is specified.

### 12. HAVING

`HAVING` is used to filter results after the `GROUP BY` operation.

Example:

```sql id="5w6j1n"
SELECT Continent, COUNT(*) AS NumberOfCountries
FROM country
GROUP BY Continent
HAVING COUNT(*) > 10;
```

This groups countries by continent and returns only continents that have more than 10 countries.

**Key difference:**

- `WHERE` filters individual records before grouping.
- `HAVING` filters grouped results after `GROUP BY`.

### 13. GROUP BY with SUM()

`GROUP BY` can be combined with aggregate functions such as `SUM()` to calculate totals for each group.

Example:

```sql id="j9k2lm"
SELECT Region, SUM(GNP) AS TotalGNP
FROM country
WHERE Continent = 'Africa'
GROUP BY Region;
```

This query calculates the total GNP for each region in Africa.

The query first filters the countries to Africa, then groups them by region, and finally calculates the total GNP for each region.

### 14. DISTINCT

`DISTINCT` is used to return only unique values from a column.

Example:

```sql id="d3r8kp"
SELECT DISTINCT Region
FROM country;
```

This returns each region only once, even if multiple countries belong to the same region.

`DISTINCT` is useful when exploring a database and identifying the different categories or values stored in a column.
