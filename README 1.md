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
