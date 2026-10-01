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
