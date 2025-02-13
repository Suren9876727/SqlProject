-- TO CREATE THE SYP FOODS DB
Create database SYP_Foods;

-- TO ACTIVATE THE SYP FOODS DB
use SYP_Foods;

-- TO CREATE A EMPLOYEES TABLE
Create table Employees (
RollID int not null,
First_name varchar(200),
Last_name varchar(200),
Age varchar(50),
unique(RollID));

-- TO MODIFY THE DATATYPE IN AGE COLUMN IN EMPLOYEE TABLE
Alter table employees modify column Age int;

-- TO RENAME THE COLUMN IN EMPLOYEE TABLE
Alter table employees rename column RollID to SNID;

-- TO DESCRIBE THE EMPLOYEES TABLE
Describe employees;

-- TO INSERT THE VALUES IN EMPLOYEES TABLE
INSERT INTO employees(SNID,First_name,Last_name,Age) Values (1, 'Rathna', 'Kumar', 28); 
INSERT INTO employees(SNID,First_name,Last_name,Age) Values (2, 'Senthamarai', 'Kannan', 27);
INSERT INTO employees(SNID,First_name,Last_name,Age) Values (3, 'Naren', 'Narayanan', 32);
INSERT INTO employees(SNID,First_name,Last_name,Age) Values (4, 'Sathya', 'Moorthy', 30);
INSERT INTO employees(SNID,First_name,Last_name,Age) Values (5, 'Alex', 'Devan', 32);
INSERT INTO employees(SNID,First_name,Last_name,Age) Values (6, 'Abi', 'Vidhya', 25);
INSERT INTO employees(SNID,First_name,Last_name,Age) Values (7, 'Selva', 'Rani', 33);
INSERT INTO employees(SNID,First_name,Last_name,Age) Values (8, 'Bhargavi', 'Banu', 36);
INSERT INTO employees(SNID,First_name,Last_name,Age) Values (9, 'Seenu', 'Ramasamy', 40);
INSERT INTO employees(SNID,First_name,Last_name,Age) Values (10, 'Prakash', 'kumar', 24);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TO CREATE THE DETAILS TABLE IN SYP FOODS DB
Create table Details (
D_no int not null,
Salary int,
JoiningDate date,
Qualification varchar(100),
EmailID varchar(100),
phone int,
SNId int,
-- TO LINK THE SNID COLUMN IN DETAILS TABLE FROM EMPLOYEES TABLE
constraint FK_SNId foreign key(SNId) references employees(SNId));

-- TO CHANGE THE DATA TYPE IN PHONE COLUMN
Alter table Details modify column Phone bit(40);

-- TO ADD PRIMARY KEY IN DETAILS TABLE
Alter table Details Add constraint pk_Details primary key (D_no);

-- TO DESCRIBE THE DETAILS TABLE
desc details;

-- TO INSERT THE VALUES IN DETAILS TABLE
Insert into Details values(100, 25000, '2025-03-12', 'BSC', 'syp324@gmail.com', 8876543219, 10);
Insert into Details values(101, 24500, '2024-12-09', 'MSc(Bio-Chemistry)', 'syp765@gmail.com', 9976543678, 8);
Insert into Details values(102, 24500, '2024-08-07', 'MBA(Human Resources)', 'syp457@gmail.com', 8876096655, 6);
Insert into Details values(103, 24000, '2025-02-14', 'BBA (Accountancy)', 'syp009@gmail.com', 7789454788, 4);
Insert into Details values(104, 24000, '2024-10-27', 'BSc (Bio-Chemistry', 'syp567@gmail.com', 9976586578, 2);
Insert into Details values(105, 23500, '2024-09-01', 'Bcom (Accounts and Finance)', 'syp880@gmail.com', 9876543210, 9);
Insert into Details values(106, 23500, '2023-12-12', 'B.Tech (Advance Chemistry)', 'syp456@gmail.com', 8976045321, 7);
Insert into Details values(107, 23500, '2024-01-28', 'MA (Tamil literature)', 'syp332@gmail.com', 8901325476, 5);
Insert into Details values(108, 23000, '2025-08-09', 'MSc (Maths)', 'syp065@gmail.com', 7790865342, 3);
Insert into Details values(109, 22500, '2023-06-01', 'Mcom (General)', 'syp908gmail.com', 9807654321,1);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TO CREATE THE RAW MATERIALS TABLE IN SYP FOODS DB
Create table Raw_materials(
St_No int primary key,
Product_name varchar(150),
Bottles varchar(50),
Capsules varchar(75),
Capacity bit(25));

-- TO ADD COLUMN IN RAW MATERIALS TABLE IN SYP FOODS DB
Alter table Raw_materials add column Old_Stock bit(30);

-- TO CHANGE COLUMN IN RAW MATERIALS TABLE
Alter table Raw_materials change column Capacity Capacity_kg bit(30);

-- TO DESCRIBE THE RAW MATERIALS TABLE
desc Raw_materials;

-- TO INSERT THE VALUES IN RAW MATERIALS TABLE
Insert into Raw_materials values(3301, 'Adimaduram', 'Twenty-Five(one-litre)', 'Thirty-Two(Half gram)', 25.000, 30.000);
Insert into Raw_materials values(3302, 'Karisilangani', 'Fourty-Four(one-litre)', 'Twenty-Three(Half gram)', 45.000, 24.000);
Insert into Raw_materials values(3303, 'Vetiver', 'Thirty-Seven(one-litre)', 'Fifty-Five(Half gram)', 30.000, 34.000);
Insert into Raw_materials values(3304, 'Kandanthippili', 'Twelve(one-litre)', 'Ninteen(Half gram)', 17.500, 23.450);
Insert into Raw_materials values(3305, 'Vallarai', 'Sixty-Eight(one-litre)', 'Fifty-Eight(Half gram)', 34.500, 28.750);
Insert into Raw_materials values(3306, 'Curry-Leaves', 'Eighty-Eight(one-litre)', 'Sixty-six(Half gram)', 23.000, 33.000);
Insert into Raw_materials values(3307, 'Lemon Grass', 'Seventy-Five(one-litre)', 'Fifty-six(Half gram)', 34.550, 56.780);
Insert into Raw_materials values(3308, 'Lavangam', 'Twenty-Four(one-litre)', 'Thirty-six(Half gram)', 45.800, 34.670);
Insert into Raw_materials values(3309, 'Neem Powder', 'Fourty-Four(one-litre)', 'Twenty-Three(Half gram)', 36.500, 45.500);
Insert into Raw_materials values(3310, 'Mountain Garlic', 'Sixty-Six(one-litre)', 'Twenty-three(Half gram)', 45.500, 54.500);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TO CREATE A MEDICINE STOCKS TABLE IN SYP FOODS DB
Create table Medicine_stocks(
Ms_no int not null,
St_No int,
-- TO ADD FOREIGN KEY IN MEDICINE STOCKS TABLE FROM RAW MATERIALS TABLE
constraint FK_St_No foreign key(St_NO) references Raw_materials(St_no));

-- TO ADD COLUMNS IN MEDICINE STOCKS TABLE
Alter table Medicine_stocks Add column Syrup_onelitre varchar(100);
Alter table Medicine_stocks Add column Capsules_Halfgram varchar(100);

-- TO DESCRIBE THE MEDICINE STOCKS TABLE
desc Medicine_stocks;

-- TO INSERT THE VALUES INTO MEDICINE STOCKS TABLE
Insert into Medicine_stocks values(2231, 3301, 'Twenty-Five', 'Fifty-Four');
Insert into Medicine_stocks values(2232, 3302, 'Thirty-Four', 'Fourty-Five');
Insert into Medicine_stocks values(2233, 3303, 'Fourty-Six', 'Thirty-Three');
Insert into Medicine_stocks values(2234, 3304, 'Twelve', 'Twenty-Three');
Insert into Medicine_stocks values(2235, 3305, 'Fifty-Four', 'Sixty-Six');
Insert into Medicine_stocks values(2236, 3306, 'Eighty-Eight', 'Seventy-Five');
Insert into Medicine_stocks values(2237, 3307, 'Thirty-Six', 'Fourty-Three');
Insert into Medicine_stocks values(2238, 3308, 'Twenty-Seven', 'Seventeen');
Insert into Medicine_stocks values(2239, 3309, 'Fifty-Two', 'Thirty-three');
Insert into Medicine_stocks values(2240, 3310, 'Fourty-One', 'Twenty-Five');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TO CREATE A DEPARTMENT WISE TABLE IN SYP FOODS TABLE
Create table Department_wise(
DW_No int,
Department_name varchar(100),
D_no int,
-- TO ADD FOREIGN KEY IN DEPARTMENT WISE TABLE FROM DETAILS TABLE
constraint fk_D_no foreign key(D_no) references details(D_no));

-- TO ADD A COLUMN IN DEPARTMENT WISE TABLE
Alter table Department_wise Add column Head_Name varchar(100);

-- TO DESCRIBE THE DEPARTMENT WISE TABLE
desc Department_wise;										

-- TO INSERT THE VALUES IN DEPARTMENT WISE TABLE
Insert into Department_wise values(121, 'Production(Syrup)', 101, 'Gananamuthy');
Insert into Department_wise values(122, 'Production(Capsules)', 102, 'Kaviya');
Insert into Department_wise values(123, 'Accountancy(Syrup)', 103, 'Mukundan');
Insert into Department_wise values(124, 'Accountancy(Capsules)', 105, 'Sandhya');
Insert into Department_wise values(122, 'Production(Capsules)', 106, 'Kaviya');
Insert into Department_wise values(121, 'Production(Syrup)', 100, 'Gananamurthy');
Insert into Department_wise values(121, 'Production(Syrup)', 104, 'Gananamurthy');
Insert into Department_wise values(124, 'Accountancy(Capsules)', 109, 'Sandhya');
Insert into Department_wise values(123, 'Accountancy(Syrup)', 108, 'Mukundan');
Insert into Department_wise values(124, 'Accountancy(Capsules)', 107, 'Sandhya');

-- TO INSERT ROWS IN DETAILS TABLE
Insert into details values(107, 23000, '2023-09-10', 'BSc(Maths)', 'syp789@gmail.com', 8876543210, 5);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TO CREATE A VIEW IN DEPARTMENT NUMBER IN DEPARTMENT_WISE TABLE
Create view DepNO_123 as Select * from department_wise where DW_No = 123;

-- TO CREATE A VIEW IN QUALIFICATION IN DETAILS TABLE
Create view Detail_Maths as Select * from details where Qualification = 'MSc(Maths)';

-- TO CREATE A VIEW IN FIRST NAME IN EMPLOYEES TABLE
Create view FN_Rathna as Select * from employees where first_name = 'Rathna';

-- TO CREATE A VIEW IN MEDICINE NUMBER IN MEDICINE STOCKS TABLE
Create view M2_236 as Select * from medicine_stocks where Ms_No = 2236;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter $$
Create procedure SYP_tab()
begin
-- TO SELECT ALL VALUES IN EMPLOYEES TABLE
Select * from employees;
-- TO SELECT ALL VALUES IN DETAILS TABLE
Select * from details;
-- TO SELECT ALL VALUES IN RAW MATERIALS TABLE
Select * from raw_materials;
-- TO SELECT ALL VALUES IN MEDICINE STOCKS TABLE
Select * from medicine_stocks;
-- TO SELECT ALL VALUES IN DEPARTMENT WISE TABLE
Select * from department_wise;
end $$
delimiter ;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter //
Create Procedure DW_Inf()
begin
-- TO SELECT DISTINCT HEAD NAME IN DEPARTMENT WISE
Select distinct Head_name from department_wise;
-- TO SELECT DETAILS NUMBER IN DEPARTMENT WISE TABLE
Select D_no from Department_wise;
END //
Delimiter ;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter $$
Create procedure Emp_Tab()
begin
-- TO SELECT FIRST NAME FROM EMPLOYEES TABLE
Select First_name from employees;
-- TO SELECT DISTINCT AGE FROM EMPLOYEES TABLE
Select distinct age from employees;
-- TO SELECT AGE FROM EMPLOYEES TABLE WHERE AGE IS MORE THAN 33
Select * from employees where age > 33;
end $$
delimiter ;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter //
Create procedure Det_Inf()
begin
-- TO SELECT D_NO COLUMN IN DETAILS TABLE WHERE RANGE BETWEEN 24500 AND 23000
Select D_no from details where salary between 24500 and 23000;
-- TO SELECT QUALIFICATIONS FROM DETAILS TABLE WHERE START WITH 'B'
Select*from details where Qualification like 'B%';
-- TO SELECT EMAILID FROM DETAILS TABLE WHERE QUALIFICATION IN MCOM(GENERAL) AND MSC(MATHS)
Select * from details where Qualification IN ('MCOM(General)','MSC(Maths)');
end //
delimiter ;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter $$
Create procedure MS_Inf()
begin
-- TO SELECT SYRUP(ONE LITRE) IN MEDICINE STOCKS TABLE WHERE MS_NO IS 2233
Select Syrup_onelitre from medicine_stocks where St_No = all(Select St_No from medicine_stocks where Ms_no = 2233);
-- TO SELECT MS_NO IN MEDICINE STOCKS TABLE
Select * from Medicine_stocks where Ms_no = 2233 and St_no = 3303;
end $$
delimiter ;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter //
Create procedure RM_inf()
begin
Select concat(First_name,Last_name) as 'FullName' from employees;
Select max(salary) as highest from details;
Select min(salary) as lowest from details;
Select sum(salary) as total from details;
end //
delimiter ;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter $$
Create procedure OP_RMinf()
begin
Select * from Raw_materials where Product_name like'%m';
Select * from Raw_materials where Product_name like "%g%";
Select * from Raw_materials where Capacity_kg = 45.500 and Old_stock = 54.500;
Select Bottles from Raw_materials;
end $$
delimiter ;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Call Syp_tab();
Call Det_Inf();
Call DW_Inf();
Call Emp_TAb();
Call OP_RMinf();
Call RM_inf();
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



