-- @BLOCK
/*Part I a*/
CREATE TABLE Donors(
    donorID varchar(255), 
    firstName varchar(255), 
    lastName varchar(255), 
    middleInitial varchar(255), 
    dateOfBirth DATE, 
    address varchar(255), 
    city varchar(255),
    postalCode varchar(255), 
    province varchar(255), 
    gender varchar(255), 
    SSN INT
);

-- @BLOCK
CREATE TABLE Donations(
    dID varchar(255), 
    donorID varchar(255), 
    date DATE, 
    type varchar(255), 
    amount FLOAT
);

-- @BLOCK
CREATE TABLE Products(
    pID varchar(255), 
    description varchar(255), 
    date DATE, 
    price FLOAT
);

-- @BLOCK
CREATE TABLE Sales(
    sID varchar(255), 
    date DATE, 
    amount FLOAT
);

-- @BLOCK
/*Part I b*/
ALTER TABLE Donors
DROP middleInitial;

-- @BLOCK
/*Part I c*/
ALTER TABLE Donors
ADD Email varchar(255),
ADD phone varchar(255);



-- @BLOCK
/*Part I d*/
INSERT INTO Donors VALUES 
('4265', 'Donald', 'Biden', '1970-01-01', 'Av. Acqerton', 'Yorksville', 'HK2873', 'Angerland', 'Male', 54123687, 'dunce@gmail.com','4989797'),
('53', 'Frank', 'Harris', '1970-03-01', 'Av. Leonpold Town', 'Ashton', 'HK2573', 'Dessesk', 'Male', 5421323,'forkrest@gmail.com','987462'),
('24345', 'George', 'Lincoln', '1970-02-01', 'Av. WaterfallEnd', 'Dambridge', 'HC2873', 'Firthland', 'Male', 523112,'frity43@gmail.com','1654');


-- @BLOCK
/*Part I e*/
DELETE FROM Donors;

-- @BLOCK
/*Part I f*/
DROP TABLE Donors, donations, products, sales;