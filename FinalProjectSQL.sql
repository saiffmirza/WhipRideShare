-- Our Database
--CREATE DATABASE WhipRideShare; 

-- Tables for Customers, Drivers and Trips
/*
CREATE TABLE Customers (
UserName VARCHAR(30) NOT NULL,
Email VARCHAR(30) NOT NULL,
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
HomeAddress VARCHAR(30) NOT NULL,
City VARCHAR(30) NOT NULL,
State VARCHAR(2) NOT NULL,
Zip INT NOT NULL,
CreditCard1 INT NOT NULL REFERENCES CardNumber (CardNo), --FK 
CreditCard2 INT REFERENCES CardNumber (CardNo), --FK
PhoneNumber VARCHAR(30) NOT NULL,
DateOfLastTrip DATETIME,
TripsThisYear INT,
CustomerRating INT REFERENCES Rating (RatingID), --FK
Active BIT NOT NULL,
PRIMARY KEY(UserName)
)
*/

/*
CREATE TABLE Trips (
TripID INT,
DriverName VARCHAR(30), --Driver UserName
CustomerName VARCHAR(30), --Customer UserName
PickUpTime DATETIME,
DropOffTime DATETIME,
Completed BIT,
PickUpAddress VARCHAR(30),
DropOffAddress VARCHAR(30),
NumberOfPeople INT,
NumberOfBags INT,
CustomerReview INT REFERENCES Rating (RatingID), --FK
DriverReview INT REFERENCES Rating (RatingID), --FK
CostPaid DECIMAL,
Tip DECIMAL,
CreditCard INT REFERENCES CardNumber (CardNo), --FK
City VARCHAR(30)
PRIMARY KEY (TripID)
)
*/

/*
CREATE TABLE Drivers (
UserName VARCHAR(30) NOT NULL,
Email VARCHAR(30) NOT NULL,
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
HomeAddress VARCHAR(30) NOT NULL,
City VARCHAR(30) NOT NULL,
State VARCHAR(2) NOT NULL,
Zip INT NOT NULL,
BankAccount INT REFERENCES Bank (AccountNo), --FK
PhoneNumber VARCHAR(30) NOT NULL,
DateOfLastTrip DATETIME,
TripsThisYear INT,
DriverRating INT REFERENCES Rating (RatingID), --FK
Active BIT NOT NULL,
SSN VARCHAR(30),
DriverLicense VARCHAR(30) REFERENCES License (LicenseNo), --FK
InsuranceID INT REFERENCES Insurance (InsuranceID), --FK
CarInfo VARCHAR(30) REFERENCES Car (PlateNo), --FK
PRIMARY KEY(UserName, SSN)
)
*/

-- Reference Tables
/*
CREATE TABLE Car (
PlateNo  VARCHAR(30) NOT NULL,
Model  VARCHAR(30) NOT NULL,
Make  VARCHAR(30) NOT NULL,
Color  VARCHAR(30) NOT NULL,
Year INT NOT NULL,
Class  VARCHAR(30) NOT NULL,
Capacity INT NOT NULL,
BagAllowance INT NOT NULL,
PRIMARY KEY(PlateNo)
)
*/
/*
CREATE TABLE License (
LicenseNo VARCHAR(30) NOT NULL,
State  VARCHAR(2) NOT NULL,
DateOfIssue DATE,
DateOfExpiry DATE,
PRIMARY KEY (LicenseNo)
)
*/

/*
CREATE TABLE Bank (
AccountNo INT NOT NULL,
BankName  VARCHAR(30) NOT NULL,
Name  VARCHAR(30) NOT NULL,
PRIMARY KEY (AccountNo)
)
*/

/*
CREATE TABLE Rating(
RatingID INT NOT NULL,
Driver  VARCHAR(30) NOT NULL,
Customer  VARCHAR(30) NOT NULL,
DriverRating  VARCHAR(30) NOT NULL,
CustomerRating  VARCHAR(30) NOT NULL,
DriverScore INT NOT NULL,
CustomerScore INT NOT NULL,
DateOfTrip DATE,
PRIMARY KEY (RatingID)
)
*/

/*
CREATE TABLE Insurance(
InsuranceID INT NOT NULL,
Company  VARCHAR(30) NOT NULL,
DateOfIssue DATE,
DateOfExpiry DATE,
PRIMARY KEY (InsuranceID)
)
*/
/*
CREATE TABLE CardNumber(
CardNo INT NOT NULL,
Bank  VARCHAR(30) NOT NULL,
PRIMARY KEY (CardNo)
)
*/


-- Customers Table
/*
--INSERT INTO Customers Values ('smirza', 'saif@email.com', 'Saif', 'Mirza', '521 Walnut Ave', 'Syracuse', 'NY', 13210, 54240001, 54240002, 315-001-0001, '2019/05/02 00:00:00', 3, 3,1);
--INSERT INTO Customers Values ('skhan', 'skhan@email.com', 'Soniza', 'Khan', '152 Comstock Ave', 'Syracuse', 'NY', 13210, 54240003, 54240004, '315-001-0002', '2018/10/26 00:00:00', 0, 5,1);
--INSERT INTO Customers Values ('hmirza', 'hmirza@email.com', 'Haiya', 'Mirza', '58 Sunrise Ave', 'Valley Stream', 'NY', 10035, 54240005, 54240025 , '917-001-0001', '2019/04/29 00:00:00', 10, 4,1);
--INSERT INTO Customers Values ('fmirza', 'an@email.com', 'Farhan', 'Mirza', ' 60 S Terace Place', 'Valley Stream', 'NY', 10035, 54240006, 54240007, '917-001-0002', '2019/01/24 00:00:00', 23, 2,1);
--INSERT INTO Customers Values ('slatif', 'slatif@email.com', 'Shazia', 'Latif', '1313 Ocean Ave', 'Los Angeles', 'CA', 11210, 54240008, 54240035, '456-001-0001',Null,0,5,1);
--INSERT INTO Customers Values ('slatif21', 'slatif21@email.com', 'Shahid', 'Latif', '1 Beverly Hills', 'Los Angeles', 'CA', 11210, 54240009, 00000010, '456-001-0002', Null, 0, 1,0);
--INSERT INTO Customers Values ('mshehi', 'mshehi@email.com', 'Megi', 'Shehi', '662 Vegas Strip', 'Las Vegas', 'NV', 60606, 54240010,54240045, '678-001-0001', '2019/01/24 00:00:00', 3, 1,1);
--INSERT INTO Customers Values ('hq213', 'ar@email.com', 'Diana', 'Zheng', '666 Caesars Palace', 'Las Vegas', 'NV', 11320, 54240011, 54240012, '678-001-0002', '2019/04/30  00:00:00', 300, 5,1);
--INSERT INTO Customers Values ('minsla', 'minsla@email.com', 'Hamza', 'Jacobs', 'Trump Tower', 'Las Vegas', 'NV', 11320, 54240013, 54240055, '678-001-0003', '2012/04/21 00:00:00', 0, 5,0);
*/


-- Trips Table
--INSERT INTO Trips Values (1, 'Kira', 'Saif', '2018/04/21 14:20:46', '2018/04/21 15:10:00', 1, '1313 Ocean Ave', '1 Beverly Hills', 3, 0, 4, 5, 22.00, 4.00, 54240001, 'Los Angeles');
--INSERT INTO Trips Values (2, 'Kyle', 'Soniza', '2018/10/31 23:40:46', '2018/11/01 00:02:00', 1, '1 Beverly Hills', '1313 Ocean Ave', 2, 2, 5, 5, 12.00, 4, 54240003, 'Los Angeles');
--INSERT INTO Trips Values (3, 'Yousaf', 'Haiya', '2019/05/06 08:40:46', '2019/05/06 09:15:20', 1, '521 Walnut Ave', '152 Comstock Ave', 2, 2, 5, 5, 31, 3, 54240005, 'Syracuse');
--INSERT INTO Trips Values (4, 'Wiz', 'Farhan', '2018/11/29 23:50:46', '2018/11/30 00:02:00', 1, '60 S Terace Place', 'Times Square', 1, 0, 4, 5, 40, 2, 54240006, 'Syracuse');
--INSERT INTO Trips Values (5, 'Bob', 'Soniza', '2019/02/20 11:00:46', '2019/02/20 12:15:00', 1, '1313 Ocean Ave', '1 Beverly Hills', 5, 3, 5, 5, 90, 6, 54240003, 'Los Angeles');
--INSERT INTO Trips Values (6, 'Robert', 'Saif', '2019/01/24 08:00:46', '2019/01/24 08:32:00', 1, '666 Caesars Palace', 'Trump Tower', 1, 0, 3, 5, 50, 5, 54240001, 'Las Vegas');
--INSERT INTO Trips Values (7, 'Kyle', 'Shazia', '2019/01/25 07:20:40', '2019/01/25 08:00:00', 1, 'Marshall Street', '521 Walnut Ave', 1, 0, 5, 5, 65, 4, 54240008, 'Syracuse');
--INSERT INTO Trips Values (8, 'Saif', 'Diana', '2018/01/24 18:00:46', '2018/01/24 18:36:00', 1, '666 Caesars Palace', 'Trump Tower', 3, 0, 2, 3, 10, 0, 54240011, 'Las Vegas');
--INSERT INTO Trips Values (9, 'Yang', 'Megi', '2019/03/24 11:00:00', '2019/03/24 12:36:00', 1, '58 Sunrise Ave', '60 S Terace Place', 1, 1, 4, 5, 40, 4, 54240010, 'Valley Stream');
--INSERT INTO Trips Values (10, 'Saif', 'Soniza', '2017/04/30 11:00:00', Null, 0, '666 Caesars Palace','', 1, 1, 1, 1, 0, 0, 54240003, 'Las Vegas');


/*
		--Car Table 
INSERT INTO Car Values ('ny001', 'Camry', 'Toyota', 'Black', 2012, 'Regular', 4, 2 );
INSERT INTO Car Values ('ny002', '428i', 'BMW', 'White', 2013, 'Luxury', 4, 2 );
INSERT INTO Car Values ('ny003', 'Sentra', 'Nissan', 'Black', 2016, 'Regular', 4, 2);
INSERT INTO Car Values ('ny004', 'S550', 'Mercedes','White', 2012, 'Luxury', 4, 2 );
INSERT INTO Car Values ('ca001', 'CRV', 'Honda', 'Red', 2014, 'SUV', 6, 6 );
INSERT INTO Car Values ('ca002', 'Accord', 'Honda', 'White', 2016, 'SUV', 6, 6 );
INSERT INTO Car Values ('nv001', 'C300', 'Mercedes', 'Black', 2016, 'Regular', 4, 2 );
INSERT INTO Car Values ('nv002', 'E450', 'Mercedes', 'Black', 2016, 'Luxury', 4, 2 );
*/


		-- Rating Table
--INSERT INTO Rating Values(1, 'Kira', 'Saif', 'Great!', 'made me laugh', 4,5, '2018/08/21 14:20:46');
--INSERT INTO Rating Values(2, 'Kyle', 'Soniza', 'funny', 'Great', 5,5, '2018/12/31 23:40:46');
--INSERT INTO Rating Values(3, 'Yousaf', 'Haiya', 'friendly', 'Nice car', 5,5, '2019/05/02 08:40:46');
--INSERT INTO Rating Values(4, 'Wiz', 'Farhan', 'friendly', '', 4,5, '2017/12/31 23:50:46');
--INSERT INTO Rating Values(5, 'Bob', 'Soniza', 'good', 'great', 5,5, '2019/02/20 11:00:46');
--INSERT INTO Rating Values(6, 'Robert', 'Saif', '', 'rude', 3,5, '2019/01/24 08:00:46');
--INSERT INTO Rating Values(7, 'Kyle', 'Shazia', 'nice', 'on phone', 3,5, '2019/01/25 07:20:40');
--INSERT INTO Rating Values(8, 'Saif', 'Diana', 'late', '', 2,3, '2018/01/24 18:00:46');
--INSERT INTO Rating Values(9, 'Yang', 'Megi', '', 'good talker', 4,5, '2019/03/24 11:00:00');
--INSERT INTO Rating Values(10, 'Saif', 'Soniza', '', '', 1,0, '2017/04/30 11:00:00');
--*/

/*
		--Insurance Table
INSERT INTO Insurance Values (1, 'Geico', '2010/04/12', '2020/04/11');
INSERT INTO Insurance Values (2, 'Progressive', '2009/09/01', '2019/08/31');-- (view)check less than 6 month validity
INSERT INTO Insurance Values (3, 'Geico', '2015/01/10', '2025/01/09');
INSERT INTO Insurance Values (4, 'Progressive', '2009/06/20', '2019/06/19');-- (view)check less than 6 month validity
INSERT INTO Insurance Values (5, 'StateFarm', '2018/09/23', '2028/09/22');
INSERT INTO Insurance Values (6, 'StateFarm', '2007/08/20', '2017/08/19');--expired insurance 
INSERT INTO Insurance Values (7, 'Geico', '2012/04/12', '2022/04/11');
INSERT INTO Insurance Values (8, 'Geico', '2012/04/12', '2022/04/11');
*/

/*
		-- Drivers Table
INSERT INTO Drivers Values ('kmshaw', 'kmshaw@email.com', 'Kira', 'Shaw' , '21 Lynbrook St', 'Valley Stream', 'NY', 10035, 0001, '917-502-0001', '2019/05/02 00:00:00', 3,4,1, '000-000-001','ln001',7,'ny001')
INSERT INTO Drivers Values ('kmernie', 'kmernie@email.com', 'Kyle', 'Ernie' , '425 Sunrise Ave', 'Valley Stream', 'NY', 10035, 0002, '917-502-0002', '2019/01/12 00:00:00', 5,4,1, '000-000-002', 'ln002',6, 'ny002')
INSERT INTO Drivers Values ('bhaven', 'bhaven@email.com', 'Bob', 'Haven' , '408 Euclid Ave', 'Syracuse', 'NY', 13210, 0003, '315-502-0002', '2019/02/10 00:00:00',5,4,1, '000-000-003', 'ln003',2, 'ny003')
INSERT INTO Drivers Values ('yosaf', 'yosaf@email.com', 'Yousaf', 'Shahid', '505 Walnut Ave', 'Syracuse', 'NY', 13210, 0004, '315-502-0001', '2019/03/03 00:00:00',5,4,1, '000-000-004', 'ln004', 5, 'ny004' )
INSERT INTO Drivers Values ('smire', 'smire@email.com', 'Saif', 'Myres', '123 Hollywood Rd', 'Los Angeles', 'CA', 11210, 0005, '456-502-0001', '2018/12/02 00:00:00',5,4,0, '000-000-005', 'ln005', 4, 'ca001')
INSERT INTO Drivers Values ('yewire', 'yewire@email.com', 'Yang', 'Xhu', '256 Hollywood Rd', 'Los Angeles', 'CA', 11210, 0006, '456-502-0002', '2018/12/25 00:00:00',5,4,1, '000-000-006', 'ln006', 3, 'ca002')
INSERT INTO Drivers Values ('yewire', 'y23re@email.com', 'Robert', 'Khan', '21 Chupa Rd', 'Las Vegas', 'NV', 11320, 0007, '678-502-0002', '2019/1/25 00:00:00',5,4,1, '000-000-007', 'ln007', 8, 'nv001')
INSERT INTO Drivers Values ('wq13e', 'wq13e@email.com', 'Wiz', 'Khalifa', '208 Sundown Rd', 'Las Vegas', 'NV', 11320, 0008, '678-502-0001',' 2019/1/28 00:00:00',5,4,1, '000-000-008', 'ln008', 1, 'nv002')
*/

/*
		-- Bank Table 
INSERT INTO Bank Values (0001, 'Chase', 'Kira Shaw')
INSERT INTO Bank Values (0002, 'Bank Of America', 'Kyle Ernie')
INSERT INTO Bank Values (0003, 'M&T Bank',  'Bob Haven')
INSERT INTO Bank Values (0004, 'M&T Bank', 'Yousaf Shahid')
INSERT INTO Bank Values (0005, 'Chase', 'Saif Myres')
INSERT INTO Bank Values (0006, 'Bank Of America', 'Yang Xhu')
INSERT INTO Bank Values (0007, 'M&T Bank', 'Robert Khan')
INSERT INTO Bank Values (0008, 'Bank Of America', 'Wiz Khalifa')
*/

/*
		-- License Table
INSERT INTO License Values('ln001', 'NY', '2010-01-01', '2020-01-01')
INSERT INTO License Values('ln002', 'NY', '2015-01-01', '2025-01-01')
INSERT INTO License Values('ln003', 'NY', '2019-01-01', '2029-01-01')
INSERT INTO License Values('ln004', 'NY', '2010-02-01', '2020-02-01')
INSERT INTO License Values('ln005', 'CA', '2018-05-01', '2028-05-01')
INSERT INTO License Values('ln006', 'CA', '2016-01-01', '2026-01-01')
INSERT INTO License Values('ln007', 'NV', '2019-04-01', '2029-04-01')
INSERT INTO License Values('ln008', 'NV', '2013-01-01', '2023-01-01')
*/

/*
		-- CardNumber Table
--INSERT INTO CardNumber Values(54240001, 'Chase')
--INSERT INTO CardNumber Values(54240002, 'Bank Of America')
--INSERT INTO CardNumber Values(54240003, 'M&T Bank')
--INSERT INTO CardNumber Values(54240004, 'Chase')
--INSERT INTO CardNumber Values(54240005, 'M&T Bank')
--INSERT INTO CardNumber Values(54240006, 'Bank Of America')
--INSERT INTO CardNumber Values(54240007, 'M&T Bank')
--INSERT INTO CardNumber Values(54240008, 'Chase')
--INSERT INTO CardNumber Values(54240009, 'M&T Bank')
--INSERT INTO CardNumber Values(54240010, 'Chase')
--INSERT INTO CardNumber Values(54240011, 'Bank Of America')
--INSERT INTO CardNumber Values(54240012, 'Chase')
INSERT INTO CardNumber Values(54240013, 'M&T Bank')
INSERT INTO CardNumber Values(54240025, 'M&T Bank')
INSERT INTO CardNumber Values(54240035, 'M&T Bank')
INSERT INTO CardNumber Values(54240045, 'M&T Bank')
INSERT INTO CardNumber Values(54240055, 'M&T Bank')
INSERT INTO CardNumber Values(00000010, 'M&T Bank')

*/






		--!! FIND RIDE SP !!-- 
/*
USE WhipRideShare;
GO 
CREATE PROC findRide
	@Location VARCHAR(30) = NULL,
	@Bags INT = 0,
	@NumberofPpl INT = 0
AS 
BEGIN
SELECT FirstName + ' ' + LastName AS FullName, Make + ' ' + Model AS CarName, PlateNo, Class 
FROM Drivers JOIN Car ON Drivers.CarInfo = Car.PlateNo
WHERE City = @Location AND BagAllowance >= @Bags AND Capacity >= @NumberofPpl
END;


EXEC findRide 'Syracuse', '2', '2';

*/





		--!! AVG RATING SP !!--
/*
USE WhipRideShare;
GO 
CREATE PROC AverageRatingOfDriver
	@Name VARCHAR(30) = '%'
AS 
BEGIN
SELECT AVG(DriverReview)
FROM Trips
WHERE DriverName = @Name
END;



EXEC AverageRatingOfDriver 'Kyle'

*/







		--!! MaxTrips Function !!--

/*
USE WhipRideShare;
GO
CREATE FUNCTION MaxTrips()
RETURNS INT
BEGIN
	RETURN
	(SELECT MAX(TripsThisYear)
	FROM Drivers)
END;



SELECT dbo.MaxTrips() AS NoOfTrips
*/

		--!! total sum function !!--

/*
CREATE FUNCTION TotalSumInYear(@Name VARCHAR(30))
RETURNS TABLE

	RETURN 
	(SELECT DISTINCT FirstName + ' ' + LastName AS FullName, CostPaid + Tip AS Total
	FROM Trips JOIN Drivers ON Trips.DriverName = Drivers.FirstName
	WHERE FirstName + ' ' + LastName = @Name);

SELECT * FROM dbo.TotalSumInYear('Kira Shaw')  
*/

/*
CREATE VIEW IsActive
AS 
SELECT FirstName + ' ' + LastName AS FullName, 'Is Active' AS State
FROM Drivers
WHERE Active = 1
 

 SELECT * FROM IsActive
 */

/*
CREATE VIEW IsNotActive
AS 
SELECT FirstName + ' ' + LastName AS FullName, 'Is Not Active' AS State
FROM Drivers
WHERE Active = 0
 

SELECT * FROM IsNotActive
*/

/*
CREATE VIEW LocationWise
AS
SELECT FirstName + ' ' + LastName AS FullName, Make + ' ' + Model AS CarType, PlateNo, City
FROM Drivers JOIN Car ON Drivers.CarInfo = Car.PlateNo


SELECT * FROM LocationWise
WHERE City = 'Syracuse' 
*/

/*
CREATE VIEW GoodDrivers
AS 
SELECT DriverName , Avg(DriverReview) AS Rating
FROM Trips 
GROUP BY (DriverName)
HAVING AVG(DriverReview) > 4

SELECT * FROM GoodDrivers

*/

/*
CREATE TRIGGER Bonus
ON Trips
AFTER INSERT, UPDATE
AS
	UPDATE Trips
	SET Tip += Tip*2
	WHERE DriverReview = 5
	



SELECT * FROM Trips

INSERT INTO Trips Values (11, 'Kira', 'Saif', '2019/04/21 14:20:46', '2019/04/21 15:10:00', 1, '1313 Ocean Ave', '1 Beverly Hills', 3, 0, 4, 5, 22.00, 4.00, 54240001, 'Los Angeles');

--After new entry, tip is increased by tip multiplied by 2
SELECT * FROM Trips
*/