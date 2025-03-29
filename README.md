# SQL Project

## Overview
This project demonstrates a well-structured SQL database schema for managing employees, departments, inventory, and sales records. It includes table creation, data insertion, queries, stored procedures, and performance optimizations.

## Database Schema
The database consists of the following tables:

1. **Departments** - Stores department details.
2. **Employees** - Contains employee records linked to departments.
3. **Inventory** - Tracks stock items.
4. **Sales** - Records sales transactions.

## Features
- **Table Creation**: Defines primary and foreign keys.
- **Data Insertion**: Preloaded sample data.
- **Stored Procedures**:
  - `GetEmployeesByDepartment` - Retrieves employees from a given department.
  - `UpdateEmployeeSalary` - Updates an employee's salary with validation.
  - `AddSale` - Records a sale while checking inventory stock.
- **Queries**:
  - Retrieve sales from the current month.
  - Find the best-selling product.
  - Identify the department with the highest total salary.
- **Indexing & Optimization**: Indexes on frequently queried columns.

## Installation & Setup
1. Import the SQL script into MySQL or any compatible database.
2. Execute the script to create tables and insert sample data.
3. Run the queries and procedures as needed.

## Usage
Execute SQL commands via a database management tool like MySQL Workbench or the command line:

```sql
CALL GetEmployeesByDepartment('HR');
CALL UpdateEmployeeSalary(1, 5000);
CALL AddSale('2025-03-29', 2, 5, 100.00);
```

## Enhancements
- Add triggers for automatic stock updates.
- Implement `CHECK` constraints for better data integrity.
- Improve performance with additional indexing.

## License
This project is open-source and free to use for educational purposes.

