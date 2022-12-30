SELECT *
FROM sales;

SELECT * 
FROM people;

SELECT s.saledate, s.amount, p.salesperson, s.spid, p.spid
FROM sales s
LEFT JOIN people p ON 
	p.spid = s.spid;
    
SELECT s.saledate, s.amount, pr.product
FROM sales s
LEFT JOIN products pr ON pr.pid = s.pid;

SELECT s.saledate, s.amount, p.salesperson, pr.product, p.team
FROM sales s
LEFT JOIN people p ON 
	p.spid = s.spid
LEFT JOIN products pr ON pr.pid = s.pid;

SELECT s.saledate, s.amount, p.salesperson, pr.product, p.team
FROM sales s
LEFT JOIN people p ON 
	p.spid = s.spid
LEFT JOIN products pr ON pr.pid = s.pid
WHERE s.amount < 500
AND p.team = 'delish'
ORDER BY s.amount DESC;

SELECT s.saledate, s.amount, p.salesperson, pr.product, p.team
FROM sales s
LEFT JOIN people p ON 
	p.spid = s.spid
LEFT JOIN products pr ON pr.pid = s.pid
WHERE s.amount < 500
AND p.team = ''
ORDER BY s.amount DESC;

SELECT s.saledate, s.amount, p.salesperson, pr.product, p.team
FROM sales s
LEFT JOIN people p ON 
	p.spid = s.spid
LEFT JOIN products pr ON pr.pid = s.pid
LEFT JOIN geo g ON g.geoid = s.geoid
WHERE s.amount < 500
AND p.team = ''
OR p.team IS NULL
AND g.geo IN ('new zealand', 'india')
ORDER BY s.amount DESC;
