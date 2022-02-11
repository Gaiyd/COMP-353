-- @BLOCK
/*Part II a*/
SELECT donorID, firstName, lastName, dateOfbirth, phone, email, gender, SSN FROM Donors
WHERE City= 'Laval';

--@BLOCK
/*Part II b*/
SELECT SUM(Donations.amount) FROM Donors, Donations
WHERE Donors.donorID = Donations.donorID 
      AND Donors.gender= 'female' 
      AND Donations.date >= '2021-01-01'
      AND Donations.date < '2022-01-01'
ORDER BY Donations.amount DESC;

-- @BLOCK
/*Part II c*/
SELECT Donations.amount, Donations.type, Donations.date FROM Donors, Donations
WHERE Donors.donorID = Donations.donorID 
      AND Donors.firstName ='Nancy'
      AND Donors.lastName = 'Robertson';


-- @BLOCK
/*Part II d*/
SELECT amount FROM Sales 
      WHERE date >= '2021-01-01'
      AND date < '2022-01-01'
      AND amount IS NOT NULL
GROUP BY DATEADD(MONTH, DATEDIFF(MONTH, 0, date), 0);

--@block
/*Part II e*/
SELECT Products.pID, Products.description, Products.date, Sales.amount FROM Products, Sales, Donations 
      WHERE Donations.date > DATE_SUB(NOW(),INTERVAL 1 YEAR)
      AND Sales.sID = Products.pID
      AND Sales.sID = Donations.dID;