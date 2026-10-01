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
