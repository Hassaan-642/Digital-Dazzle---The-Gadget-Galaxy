create database E_Commerce_DataBase;
use E_Commerce_DataBase;
select * from OrderDetails;

create table TrackStatus(
warehouse varchar(50),
LocalStorage varchar(50),
deliever varchar(50)
);
INSERT INTO TrackStatus (warehouse, LocalStorage, deliever)
VALUES ('In Warehouse', 'On the Way to Local Storage', 'In Local Storage - Will deliver in 20 to 30 minutes');
ALTER TABLE TrackStatus
ALTER COLUMN deliever VARCHAR(100); 
select * from TrackStatus;


create table OrderDetails(
orderId INT IDENTITY(1,1) PRIMARY KEY,
email varchar(50),
password varchar(50),
productQuantity int,
address varchar(50),
ContactNumber varchar(50),
PaymentMethod varchar(50)
);


create table LogoOfWebsite(
logo varchar(50)
);

insert into LogoOfWebsite(logo)
values('/Logo.png');
select * from LogoOfWebsite;
create table FeedBack(
feedback varchar(50),
name varchar(50),
EMAIL varchar(50)
);



select * from FeedBack;
CREATE TABLE ProductListings (
    ProductId int NOT NULL,
    ProductName VARCHAR(255) NOT NULL,
    Description TEXT,
    PriceInUSD DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
	ImageURL VARCHAR(255)

);
select * from ProductListings;
update ProductListings
set ImageURL='/Iphone13.png'
where ProductName='Apple iPhone 13 Pro';
drop table ProductListings;
select * from UserAccount;
update UserAccount
set Role='User' where FirstName <> 'Hassaan';
update UserAccount
set Role='Admin' where FirstName = 'Hassaan';
CREATE TABLE Shopping (
    UserID INT,
    ProductID INT,
    Quantity INT
);

CREATE TABLE CheckOut (
    UserID INT,
    TotalAmount DECIMAL(10, 2),
    OrderDate DATE
);

CREATE TABLE OrderConfirmation (
    OrderID INT,
    ConfirmationNumber VARCHAR(20)
);

CREATE TABLE UserAccount (
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    Phone VARCHAR(20),
	Role varchar(50)
);
ALTER TABLE UserAccount
ADD ColorWarehouse VARCHAR(50),
    ColorLocalStorage VARCHAR(50),
    ColorDeliever VARCHAR(50);
	UPDATE UserAccount
SET ColorWarehouse = 'green';
UPDATE UserAccount
SET ColorDeliever = 'red';
	

ADD ColorWarehouse VARCHAR(50) DEFAULT 'green',
    ColorLocalStorage VARCHAR(50) DEFAULT 'red',
    ColorDeliever VARCHAR(50) DEFAULT 'red';


select * from UserAccount;
alter table UserAccount
add UserId INT IDENTITY(1,1) PRIMARY KEY;

select * from UserAccount;



INSERT INTO UserAccount (FirstName, LastName, Email, Password, Address, Phone, Role)
VALUES ('Hassaan', 'Ul Haq', 'hassaan@example.com', 'password123', '123 Admin St', '1234567890', 'Admin');

-- Inserting Taimur as a User
INSERT INTO UserAccount (FirstName, LastName, Email, Password, Address, Phone, Role)
VALUES ('Taimur', '', 'taimur@example.com', 'password456', '456 User St', '9876543210', 'User');
select * from UserAccount;



CREATE TABLE ContactUs (
    Name VARCHAR(100),
    Email VARCHAR(100),
    Inquiry TEXT,
    InquiryDate DATETIME
);

CREATE TABLE AboutUs (
    Content TEXT
);

CREATE TABLE BlogOrNews (
    Title VARCHAR(255),
    Content TEXT,
    PublishDate DATE
);

CREATE TABLE FAQ (
    Question VARCHAR(255),
    Answer TEXT
);

CREATE TABLE PrivacyPolicy (
    Content TEXT
);

CREATE TABLE StudentInformation (
    StudentName VARCHAR(100),
    StudentEmail VARCHAR(100)
);

CREATE TABLE AdminDashBoard (
    Username VARCHAR(50),
    Password VARCHAR(255)
);

create table OrderDetails(
email varchar(50),
password varchar(50),
productQuantity int,
address varchar(50),
ContactNumber int,
PaymentMethod varchar(50)
);

select * from OrderDetails;


update ProductListings
set ImageURL='/AppleIphone.png' 
where ProductName='Apple iPhone 13 Pro';
select * from ProductListings;
drop table ProductListings;
INSERT INTO ProductListings ( ProductId ,ProductName, Description, PriceInUSD, StockQuantity, ImageURL) VALUES
    (666 ,'Apple iPhone 13 Pro', 'The latest iPhone with a stunning Super Retina XDR display and A15 Bionic chip.', 999.99, 50, '/AppleIphone.png'),
    (667 ,'Samsung Galaxy S22 Ultra', 'A powerful Android smartphone with a massive AMOLED display and Snapdragon 8 Gen 2.', 1099.99, 40, '/SamsungGalaxyS22Ultra.png'),
    (668 ,'Sony 65-inch 4K OLED TV', 'Experience incredible picture quality with deep blacks and vibrant colors.', 1499.99, 25, '/SonyTv.png'),
    (669,'Dell XPS 13 Laptop', 'A compact and powerful laptop with an Intel Core i7 processor and InfinityEdge display.', 1299.99, 30, '/Dell.png'),
    (670 ,'Sony PlayStation 5', 'The next-gen gaming console with ultra-fast SSD and haptic feedback controllers.', 499.99, 60, '/PS5.png'),
    (671 ,'Canon EOS 5D Mark IV', 'A professional-grade DSLR camera with 30.4MP sensor and 4K video recording.', 2499.99, 15, '/Canon.png'),
    (672 ,'Bose QuietComfort 45 Headphones', 'Top-notch noise-canceling headphones for an immersive audio experience.', 349.99, 20, '/HeadPhones.png'),
    (673 ,'Amazon Kindle Paperwhite', 'A waterproof e-reader with a high-resolution display and long battery life.', 149.99, 100, '/AmazonKindle.png'),
    (674 ,'Apple AirPods Pro', 'Wireless earbuds with active noise cancellation and adaptive EQ for immersive sound.', 199.99, 70, '/AppleAirPodsPro.png'),
    (675 ,'Microsoft Surface Laptop 4', 'A sleek and powerful laptop with a high-resolution PixelSense touchscreen.', 1099.99, 35, '/MicrosoftSurfaceLaptop.png'),
    (676 ,'Nintendo Switch OLED Model', 'Upgrade to a Switch with a vibrant OLED screen for enhanced gaming.', 349.99, 45, '/NinentdoSwitchOledModel.png'),
    (677 ,'GoPro Hero 10 Black', 'Capture stunning 5.3K video and 23MP photos with this action camera.', 399.99, 55, '/GoProHero10Black.png'),
    (678 ,'Fitbit Versa 3 Smartwatch', 'A health and fitness-focused smartwatch with built-in GPS and heart rate monitoring.', 229.99, 40, '/FitBitVersa3SmartWatch.png'),
    (679 ,'Samsung 32-inch QLED Monitor', 'A high-quality QLED monitor for crisp and vibrant visuals.', 349.99, 20, '/Samsung32InchQledMonitor.png');

	select * from ProductListings;

go
	CREATE PROCEDURE InsertUser
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Email VARCHAR(100),
    @Password VARCHAR(255),
    @Address VARCHAR(255),
    @Phone VARCHAR(20),
    @Role VARCHAR(50)
AS
BEGIN
    INSERT INTO UserAccount (FirstName, LastName, Email, Password, Address, Phone, Role)
    VALUES (@FirstName, @LastName, @Email, @Password, @Address, @Phone, @Role);
END

go
CREATE PROCEDURE AuthenticateUser
    @Email VARCHAR(100),
    @Password VARCHAR(255),
    @FirstName VARCHAR(50) OUTPUT,
    @Role VARCHAR(50) OUTPUT
AS
BEGIN
    SELECT @FirstName = FirstName, @Role = Role
    FROM UserAccount
    WHERE Email = @Email AND Password = @Password;
END
go
