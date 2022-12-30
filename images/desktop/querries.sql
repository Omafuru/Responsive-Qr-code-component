SELECT * 
FROM sales;

SELECT SaleDate,
	   Amount,
       Customers
FROM sales;

SELECT  SaleDate,
	    Amount,
        Boxes,
        Amount / boxes AS 'Amount per box'
FROM sales;

SELECT * 
FROM sales
WHERE amount > 10000
ORDER BY amount DESC;

SELECT *
FROM sales
WHERE geoid ='g1'
ORDER BY pid ,
		 amount DESC;
         
SELECT *
FROM sales
WHERE amount > 10000 and saledate >= '2022-01-01';

SELECT saledate,
	   amount
FROM sales
WHERE amount > 10000 and year(saledate) = 2022
ORDER BY amount DESC;

SELECT *
FROM sales 
WHERE boxes > 0 AND boxes <= 50
ORDER BY boxes DESC;

SELECT *
FROM sales 
WHERE boxes BETWEEN 0 AND 50
ORDER BY boxes;

SELECT saledate,
	   amount,
       boxes,
       weekday(saledate) AS 'Day of Week'
FROM sales 
WHERE weekday(saledate) = 4;

SELECT *
FROM people
WHERE team = 'delish' OR team = 'jucies';

SELECT *
FROM people
WHERE salesperson LIKE '%b%';

SELECT *
FROM people
WHERE team IN ('delish','jucies');



SELECT SaleDate, Amount,
CASE 
	WHEN amount < 1000 THEN 'Under 1k',
	WHEN amount < 5000 THEN 'Under 5k',
	WHEN amount < 10000 THEN 'Under 10k'
		ELSE '10k or more'
END AS 'Amount category'
FROM sales;

SELECT * 
FROM sales;


       



