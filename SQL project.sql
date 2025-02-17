-- Create schema and use it
create schema  SQL_Project
use SQL_Project

-- Create Departments Table
CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Location VARCHAR(100)
);

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    Position VARCHAR(100),
    HireDate DATE,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Create Financials Table
CREATE TABLE Financials (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    TransactionDate DATE NOT NULL,
    Description VARCHAR(255),
    Amount DECIMAL(10, 2) NOT NULL,
    TransactionType ENUM('Income', 'Expense') NOT NULL
);

-- Create Inventory Table
CREATE TABLE Inventory (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    ItemName VARCHAR(100) NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    Supplier VARCHAR(100)
);

-- Create Sales Table
CREATE TABLE Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    SaleDate DATE NOT NULL,
    ItemID INT,
    QuantitySold INT NOT NULL,
    SalePrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ItemID) REFERENCES Inventory(ItemID)
);

INSERT INTO Departments (DepartmentName, Location) VALUES
('Finance', 'New York'),
('Human Resources', 'Los Angeles'),
('Sales', 'Chicago'),
('Marketing', 'Houston'),
('IT', 'Philadelphia'),
('Operations', 'San Antonio'),
('Customer Service', 'San Diego'),
('Research and Development', 'Dallas'),
('Legal', 'San Jose'),
('Admin', 'Austin'),
('Procurement', 'San Francisco'),
('Public Relations', 'Seattle'),
('Corporate Strategy', 'Boston'),
('Compliance', 'Denver'),
('Audit', 'Miami'),
('Investor Relations', 'Orlando'),
('Risk Management', 'Phoenix'),
('Training', 'Atlanta'),
('Innovation', 'Las Vegas'),
('Business Development', 'Detroit'),
('Data Analytics', 'Nashville'),
('Digital Transformation', 'Cincinnati'),
('Facilities Management', 'Baltimore'),
('Product Development', 'Minneapolis'),
('Environmental Health and Safety', 'Tampa'),
('Vendor Management', 'Charlotte'),
('Logistics', 'St. Louis'),
('Real Estate', 'Pittsburgh'),
('Governance', 'Salt Lake City'),
('Information Security', 'Cleveland'),
('Media Relations', 'Milwaukee'),
('Technology', 'Kansas City'),
('Finance Planning', 'Virginia Beach'),
('HR Support', 'Colorado Springs'),
('Network Operations', 'Long Beach'),
('Events Management', 'Raleigh'),
('Retail Operations', 'Sacramento'),
('Support', 'Atlanta'),
('International Affairs', 'Columbus'),
('Customer Insights', 'Indianapolis'),
('Creative Services', 'San Antonio'),
('Content Management', 'Portland'),
('Partnership Management', 'San Diego'),
('Security Services', 'Omaha'),
('Outreach', 'Memphis'),
('Advertising', 'Louisville'),
('Supply Chain', 'Jacksonville'),
('Legal Compliance', 'Albuquerque'),
('Corporate Affairs', 'Mesa'),
('Strategic Marketing', 'Fresno');

INSERT INTO Employees (FirstName, LastName, DepartmentID, Position, HireDate, Salary) VALUES
('John', 'Doe', 1, 'Accountant', '2020-01-15', 60000.00),
('Jane', 'Smith', 2, 'HR Manager', '2019-07-23', 75000.00),
('Emily', 'Johnson', 3, 'Sales Representative', '2021-03-12', 55000.00),
('Michael', 'Williams', 4, 'Marketing Specialist', '2018-09-05', 70000.00),
('Anna', 'Brown', 5, 'IT Support', '2022-05-30', 62000.00),
('Chris', 'Davis', 6, 'Operations Manager', '2020-11-25', 80000.00),
('Katie', 'Miller', 7, 'Customer Service Agent', '2021-06-14', 50000.00),
('David', 'Wilson', 8, 'R&D Engineer', '2019-12-02', 72000.00),
('Sophia', 'Moore', 9, 'Legal Advisor', '2018-08-18', 85000.00),
('James', 'Taylor', 10, 'Administrative Assistant', '2022-01-10', 45000.00),
('Laura', 'Anderson', 11, 'Procurement Officer', '2021-02-01', 67000.00),
('Paul', 'Harris', 12, 'PR Coordinator', '2018-03-19', 73000.00),
('Rebecca', 'Clark', 13, 'Strategy Consultant', '2020-06-22', 90000.00),
('Robert', 'Walker', 14, 'Compliance Specialist', '2017-04-30', 78000.00),
('Lisa', 'Young', 15, 'Internal Auditor', '2019-11-11', 68000.00),
('William', 'King', 16, 'Investment Analyst', '2021-08-21', 81000.00),
('Linda', 'Scott', 17, 'Risk Analyst', '2019-09-30', 65000.00),
('Charles', 'Martinez', 18, 'Training Coordinator', '2020-04-18', 64000.00),
('Barbara', 'Hill', 19, 'Innovation Officer', '2018-02-10', 95000.00),
('Matthew', 'Green', 20, 'Business Development Executive', '2021-07-07', 58000.00),
('Jessica', 'Adams', 21, 'Data Analyst', '2020-12-01', 73000.00),
('Andrew', 'Nelson', 22, 'Digital Transformation Lead', '2019-05-24', 82000.00),
('Amanda', 'Baker', 23, 'Facilities Manager', '2017-08-16', 62000.00),
('Joshua', 'Carter', 24, 'Product Manager', '2022-03-20', 70000.00),
('Angela', 'Mitchell', 25, 'EHS Specialist', '2020-09-15', 55000.00),
('Kevin', 'Perez', 26, 'Vendor Manager', '2019-06-29', 68000.00),
('Nancy', 'Roberts', 27, 'Logistics Coordinator', '2018-01-04', 54000.00),
('Jason', 'Turner', 28, 'Real Estate Manager', '2021-11-23', 66000.00),
('Sarah', 'Phillips', 29, 'Governance Analyst', '2022-04-02', 72000.00),
('Daniel', 'Campbell', 30, 'Information Security Officer', '2020-10-27', 89000.00),
('Betty', 'Parker', 31, 'Media Relations Specialist', '2019-03-17', 58000.00),
('Mark', 'Evans', 32, 'Technology Consultant', '2021-09-01', 99000.00),
('Ashley', 'Edwards', 33, 'Finance Planner', '2018-07-08', 56000.00),
('Larry', 'Collins', 34, 'HR Support Specialist', '2019-02-14', 70000.00),
('Karen', 'Stewart', 35, 'Network Operations Lead', '2021-01-19', 74000.00),
('Steven', 'Sanchez', 36, 'Events Manager', '2020-05-05', 69000.00),
('Donna', 'Morris', 37, 'Retail Operations Manager', '2018-06-25', 60000.00),
('Anthony', 'Rogers', 38, 'Support Specialist', '2021-04-15', 61000.00),
('Michelle', 'Reed', 39, 'International Affairs Officer', '2019-12-29', 80000.00),
('Eric', 'Cook', 40, 'Customer Insights Analyst', '2022-08-08', 76000.00),
('Sandra', 'Morgan', 41, 'Creative Director', '2017-10-12', 87000.00),
('Scott', 'Bell', 42, 'Content Manager', '2018-05-26', 78000.00),
('Kimberly', 'Murphy', 43, 'Partnership Manager', '2020-07-13', 65000.00),
('Brian', 'Bailey', 44, 'Security Services Officer', '2019-11-01', 70000.00),
('Deborah', 'Rivera', 45, 'Outreach Coordinator', '2021-03-05', 52000.00),
('Frank', 'Cooper', 46, 'Advertising Specialist', '2022-02-14', 75000.00),
('Carol', 'Richardson', 47, 'Supply Chain Manager', '2020-12-17', 85000.00),
('Joshua', 'Howard', 48, 'Legal Compliance Officer', '2018-11-09', 94000.00),
('Helen', 'Ward', 49, 'Corporate Affairs Director', '2019-01-28', 100000.00),
('George', 'Cox', 50, 'Strategic Marketing Executive', '2022-06-15', 105000.00);

INSERT INTO Financials (TransactionDate, Description, Amount, TransactionType) VALUES
('2024-08-01', 'Office Supplies Purchase', -1500.00, 'Expense'),
('2024-08-02', 'Client Payment', 20000.00, 'Income'),
('2024-08-03', 'Utility Bill Payment', -800.00, 'Expense'),
('2024-08-04', 'Consulting Services', -3000.00, 'Expense'),
('2024-08-05', 'Product Sale', 12000.00, 'Income'),
('2024-08-06', 'Employee Salaries', -50000.00, 'Expense'),
('2024-08-07', 'Investment Income', 7000.00, 'Income'),
('2024-08-08', 'Rent Payment', -4000.00, 'Expense'),
('2024-08-09', 'Product Sale', 15000.00, 'Income'),
('2024-08-10', 'Marketing Campaign', -2500.00, 'Expense'),
('2024-08-11', 'New Office Furniture', -8000.00, 'Expense'),
('2024-08-12', 'Client Payment', 18000.00, 'Income'),
('2024-08-13', 'Software Subscription', -1200.00, 'Expense'),
('2024-08-14', 'Travel Reimbursement', -350.00, 'Expense'),
('2024-08-15', 'Equipment Maintenance', -500.00, 'Expense'),
('2024-08-16', 'Interest Income', 500.00, 'Income'),
('2024-08-17', 'Product Sale', 13000.00, 'Income'),
('2024-08-18', 'Office Renovation', -10000.00, 'Expense'),
('2024-08-19', 'Customer Refund', -2500.00, 'Expense'),
('2024-08-20', 'Web Hosting Fee', -100.00, 'Expense'),
('2024-08-21', 'Freelance Payment', -800.00, 'Expense'),
('2024-08-22', 'Investment Income', 4000.00, 'Income'),
('2024-08-23', 'Client Payment', 25000.00, 'Income'),
('2024-08-24', 'Vehicle Expense', -1000.00, 'Expense'),
('2024-08-25', 'Employee Bonuses', -15000.00, 'Expense'),
('2024-08-26', 'Office Supplies Purchase', -1200.00, 'Expense'),
('2024-08-27', 'Client Payment', 17000.00, 'Income'),
('2024-08-28', 'Utility Bill Payment', -950.00, 'Expense'),
('2024-08-29', 'Insurance Payment', -3000.00, 'Expense'),
('2024-08-30', 'Consulting Services', -2500.00, 'Expense'),
('2024-08-31', 'Product Sale', 16000.00, 'Income'),
('2024-09-01', 'Client Payment', 23000.00, 'Income'),
('2024-09-02', 'Travel Expense', -700.00, 'Expense'),
('2024-09-03', 'Software Update Fee', -150.00, 'Expense'),
('2024-09-04', 'Client Refund', -2000.00, 'Expense'),
('2024-09-05', 'Equipment Purchase', -3000.00, 'Expense'),
('2024-09-06', 'Office Rent Payment', -4500.00, 'Expense'),
('2024-09-07', 'Investment Income', 2500.00, 'Income'),
('2024-09-08', 'Product Sale', 14000.00, 'Income'),
('2024-09-09', 'Marketing Campaign', -2200.00, 'Expense'),
('2024-09-10', 'Client Payment', 26000.00, 'Income'),
('2024-09-11', 'Employee Training', -1800.00, 'Expense'),
('2024-09-12', 'Website Redesign', -4000.00, 'Expense'),
('2024-09-13', 'Interest Income', 600.00, 'Income'),
('2024-09-14', 'New Product Launch', -10000.00, 'Expense'),
('2024-09-15', 'Client Payment', 30000.00, 'Income'),
('2024-09-16', 'IT Support Services', -3500.00, 'Expense'),
('2024-09-17', 'Office Cleaning Services', -500.00, 'Expense'),
('2024-09-18', 'Client Refund', -1500.00, 'Expense'),
('2024-09-19', 'Product Sale', 20000.00, 'Income');

INSERT INTO Inventory (ItemName, Quantity, UnitPrice, Supplier) VALUES
('Laptop', 50, 1200.00, 'TechSupply Inc.'),
('Printer', 30, 300.00, 'PrintWorks Ltd.'),
('Office Chair', 100, 150.00, 'ComfortSeating Co.'),
('Desk', 40, 250.00, 'FurnitureMakers'),
('Monitor', 60, 400.00, 'ViewTech'),
('Keyboard', 200, 50.00, 'KeyType'),
('Mouse', 150, 30.00, 'MouseWorks'),
('Phone', 25, 600.00, 'ElectroWorld'),
('Router', 20, 100.00, 'NetGear'),
('Headphones', 70, 80.00, 'SoundWave'),
('Projector', 15, 500.00, 'VisionTech'),
('Scanner', 25, 200.00, 'ScanQuick'),
('Whiteboard', 35, 100.00, 'OfficeBasics'),
('Tablet', 40, 350.00, 'MobileGadgets'),
('External Hard Drive', 80, 120.00, 'DataStorage Co.'),
('Webcam', 90, 70.00, 'VisionPro'),
('Smartwatch', 30, 200.00, 'TimeTech'),
('Wireless Charger', 120, 40.00, 'ChargeUp'),
('Speakers', 50, 150.00, 'SoundMax'),
('VR Headset', 10, 800.00, 'VirtualWorld'),
('Conference Phone', 20, 400.00, 'CommNet'),
('Desk Lamp', 100, 30.00, 'BrightLight'),
('Office Sofa', 10, 1000.00, 'RelaxFurniture'),
('Coffee Machine', 15, 150.00, 'BrewMaster'),
('Air Purifier', 25, 250.00, 'CleanAir'),
('File Cabinet', 40, 200.00, 'StorageSolutions'),
('Wireless Mouse', 180, 25.00, 'MouseWorks'),
('Graphic Tablet', 15, 300.00, 'ArtDraw'),
('Mobile Stand', 200, 15.00, 'SupportTech'),
('Smart Pen', 50, 80.00, 'WriteSmart'),
('Desk Organizer', 150, 20.00, 'OfficeEssentials'),
('Surge Protector', 100, 35.00, 'SafePower'),
('3D Printer', 5, 1500.00, 'Print3D'),
('HDMI Cable', 200, 10.00, 'ConnectWare'),
('Office Plant', 100, 15.00, 'GreenOffice'),
('Standing Desk', 25, 500.00, 'ErgoDesk'),
('Air Conditioner', 10, 800.00, 'CoolBreeze'),
('Laser Pointer', 60, 20.00, 'PointMaster'),
('Smart Thermostat', 15, 250.00, 'EcoControl'),
('Bluetooth Headset', 70, 90.00, 'ClearSound'),
('Label Printer', 30, 150.00, 'LabelEase'),
('Document Shredder', 20, 300.00, 'SecureDocs'),
('Laptop Stand', 200, 35.00, 'SupportPlus'),
('Mouse Pad', 150, 10.00, 'PadPro'),
('Wireless Keyboard', 120, 60.00, 'TypeFast'),
('Power Bank', 80, 50.00, 'ChargeNow'),
('USB Hub', 100, 25.00, 'ConnectPlus'),
('Smart Plug', 90, 30.00, 'ControlSmart'),
('Digital Clock', 50, 40.00, 'TimeWise'),
('Laptop Bag', 60, 70.00, 'CarrySafe');

INSERT INTO Sales (SaleDate, ItemID, QuantitySold, SalePrice) VALUES
('2024-08-01', 1, 10, 1300.00),
('2024-08-02', 2, 5, 350.00),
('2024-08-03', 3, 15, 180.00),
('2024-08-04', 4, 7, 275.00),
('2024-08-05', 5, 12, 450.00),
('2024-08-06', 6, 30, 60.00),
('2024-08-07', 7, 25, 40.00),
('2024-08-08', 8, 3, 700.00),
('2024-08-09', 9, 5, 120.00),
('2024-08-10', 10, 10, 100.00),
('2024-08-11', 11, 4, 600.00),
('2024-08-12', 12, 6, 250.00),
('2024-08-13', 13, 10, 120.00),
('2024-08-14', 14, 8, 380.00),
('2024-08-15', 15, 20, 150.00),
('2024-08-16', 16, 12, 85.00),
('2024-08-17', 17, 5, 250.00),
('2024-08-18', 18, 15, 50.00),
('2024-08-19', 19, 10, 180.00),
('2024-08-20', 20, 2, 1000.00),
('2024-08-21', 21, 3, 450.00),
('2024-08-22', 22, 10, 35.00),
('2024-08-23', 23, 5, 1100.00),
('2024-08-24', 24, 4, 180.00),
('2024-08-25', 25, 6, 280.00),
('2024-08-26', 26, 8, 220.00),
('2024-08-27', 27, 15, 40.00),
('2024-08-28', 28, 5, 400.00),
('2024-08-29', 29, 20, 20.00),
('2024-08-30', 30, 10, 100.00),
('2024-08-31', 31, 7, 25.00),
('2024-09-01', 32, 1, 2000.00),
('2024-09-02', 33, 5, 15.00),
('2024-09-03', 34, 10, 12.00),
('2024-09-04', 35, 3, 450.00),
('2024-09-05', 36, 2, 900.00),
('2024-09-06', 37, 8, 25.00),
('2024-09-07', 38, 4, 10.00),
('2024-09-08', 39, 7, 600.00),
('2024-09-09', 40, 5, 30.00),
('2024-09-10', 41, 2, 300.00),
('2024-09-11', 42, 6, 90.00),
('2024-09-12', 43, 4, 100.00),
('2024-09-13', 44, 1, 1500.00),
('2024-09-14', 45, 5, 10.00),
('2024-09-15', 46, 12, 90.00),
('2024-09-16', 47, 3, 40.00),
('2024-09-17', 48, 4, 150.00),
('2024-09-18', 49, 7, 35.00),
('2024-09-19', 50, 6, 80.00);

-- Retrieve all data from Employees
SELECT * FROM Employees;

-- Retrieve all data from Departments
SELECT * FROM Departments;

-- Retrieve all data from Financials
SELECT * FROM Financials;

-- Retrieve all data from Inventory
SELECT * FROM Inventory;

-- Retrieve all data from Sales
SELECT * FROM Sales;

-- Retrieve Departments and the Number of Employees in Each
SELECT d.DepartmentName, COUNT(e.EmployeeID) AS NumberOfEmployees
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;

-- Retrieve Total Expenses and Income
SELECT TransactionType, SUM(Amount) AS TotalAmount
FROM Financials
GROUP BY TransactionType;

-- Find the Most Expensive Item in Inventory
SELECT ItemName, UnitPrice
FROM Inventory
ORDER BY UnitPrice DESC
LIMIT 1;

-- Stored Procedures
-- Retrieve All Employees
DELIMITER //
CREATE PROCEDURE GetAllEmployees()
BEGIN
    SELECT * FROM Employees;
END //
DELIMITER ;

-- Call the procedure
CALL GetAllEmployees();

-- Retrieve Employees by Department
DELIMITER //
CREATE PROCEDURE GetEmployeesByDepartment(IN deptName VARCHAR(100))
BEGIN
    SELECT e.FirstName, e.LastName, e.Position, e.Salary
    FROM Employees e
    JOIN Departments d ON e.DepartmentID = d.DepartmentID
    WHERE d.DepartmentName = deptName;
END //
DELIMITER ;

-- Call the procedure for a specific department, e.g., 'IT'
CALL GetEmployeesByDepartment('IT');

-- Update Employee Salary
DELIMITER //
CREATE PROCEDURE UpdateEmployeeSalary(IN empID INT, IN newSalary DECIMAL(10, 2))
BEGIN
    UPDATE Employees
    SET Salary = newSalary
    WHERE EmployeeID = empID;
END //
DELIMITER ;

-- Call the procedure to update salary for an employee with ID 1
CALL UpdateEmployeeSalary(1, 65000.00);


-- Insert a New Department
DELIMITER //
CREATE PROCEDURE AddDepartment(IN deptName VARCHAR(100), IN location VARCHAR(100))
BEGIN
    INSERT INTO Departments (DepartmentName, Location)
    VALUES (deptName, location);
END //
DELIMITER ;

-- Call the procedure to add a new department
CALL AddDepartment('Product Management', 'Seattle');

-- Insert a New Sale
DELIMITER //
CREATE PROCEDURE AddSale(IN saleDate DATE, IN itemID INT, IN quantitySold INT, IN salePrice DECIMAL(10, 2))
BEGIN
    INSERT INTO Sales (SaleDate, ItemID, QuantitySold, SalePrice)
    VALUES (saleDate, itemID, quantitySold, salePrice);
END //
DELIMITER ;

-- Call the procedure to add a new sale
CALL AddSale('2024-09-20', 1, 3, 1200.00);

SELECT * FROM Sales
WHERE MONTH(SaleDate) = MONTH(CURDATE()) AND YEAR(SaleDate) = YEAR(CURDATE());
