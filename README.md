# Company Database Design & SQL Queries (SQL Server)

A hands-on SQL Server project where I designed a company database and wrote T-SQL queries to retrieve and analyze its data, using **SQL Server Management Studio (SSMS)**.

## Overview

This project covers two main parts:

1. **Database design**: creating a company database, its tables, and the relationships between them.
2. **Data querying**: writing 9 queries that answer common business questions about employees, departments, and projects.

## Database Structure

The database contains three core tables:

| Table | Description | Key Columns |
|---|---|---|
| `Employee` | Company employees | `SNN` (PK), `Fname`, `Lname`, `Salary`, `Sex`, `DNO` (FK) |
| `Department` | Company departments | `Dnumber` (PK), `Dname`, `MGRSNN` |
| `Project` | Projects run by departments | `Pnumber` (PK), `Pname`, `Plocation`, `Dnum` (FK) |

### Relationships

| Relationship | Type | Linked By |
|---|---|---|
| Department → Employees | One-to-Many | `Employee.DNO` → `Department.Dnumber` |
| Department → Projects | One-to-Many | `Project.Dnum` → `Department.Dnumber` |
| Department → Manager | One-to-One | `Department.MGRSNN` → `Employee.SNN` |

> **Primary Keys** make each record unique. **Foreign Keys** connect the tables and keep the data consistent.

<!-- Add your database diagram here -->
<!-- ![Database Diagram](images/db_diagram.png) -->

## Queries

All queries are in [`sql/02_queries.sql`](sql/02_queries.sql).

| # | Business Question | Skills Used |
|---|---|---|
| 1 | Show all employee data | `SELECT *` |
| 2 | Show each employee's first name, last name, salary, and department number | `SELECT` specific columns |
| 3 | Show each project's name, location, and its department name | `INNER JOIN`, table aliases |
| 4 | Show each employee's full name and 10% of their annual salary | String concatenation, calculated column, column alias |
| 5 | Show salaries greater than 1000 | `WHERE` |
| 6 | Show SSN, name, and annual salary for employees earning more than 10,000 per year | `WHERE` with calculation |
| 7 | Show the full name and salary of female employees | `WHERE` with text condition |
| 8 | Show each department's name and its manager's SSN | `SELECT` from `Department` |
| 9 | Show name, location, and number of projects in department 2 | `WHERE` filter |

### Example: Joining Two Tables

```sql
SELECT Pname, Plocation, Dname
FROM Project p
INNER JOIN Department d
    ON p.Dnum = d.Dnumber;
```

This query connects each project to its department and returns the project name, its location, and the department name.

### Example: Calculated Column

```sql
SELECT Fname + ' ' + Lname AS [full name],
       Salary * 12          AS [Annual_Salary]
FROM Employee;
```

## Skills Demonstrated

- T-SQL and Microsoft SQL Server
- Database design and relational modeling
- Primary Keys, Foreign Keys, and table relationships
- `SELECT`, `WHERE`, and `INNER JOIN`
- Column and table aliases
- Calculated columns and string concatenation
- Turning business requirements into SQL queries

## Repository Structure

```
sql-company-db/
├── README.md
├── sql/
│   ├── 01_create_database.sql
│   └── 02_queries.sql
├── docs/
│   └── Lab01_DB_Creation.pdf
└── images/
    ├── db_diagram.png
    └── query_results.png
```

## How to Run

1. Open **SQL Server Management Studio (SSMS)** and connect to your server.
2. Open `sql/01_create_database.sql` and run it to create the database, tables, and sample data.
3. Open `sql/02_queries.sql` and run the queries one by one.

## Key Takeaway

A well-designed database with properly linked tables is the foundation of reliable data analysis, BI reports, and ERP systems.



## Author

**Ziad ElSayed**
Business Information Systems graduate | Data Analysis, BI & ERP

- LinkedIn: [www.linkedin.com/in/ziad-khalil-dev]
- GitHub: [https://github.com/ziadkhalil04-jpg]
-LiveDemo :[https://drive.google.com/file/d/16UOCsRocWZu-e-2h8rO-PnR4l_qBfPaI/view?usp=sharing]
