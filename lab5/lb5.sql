SELECT region, SUM(population) AS population FROM cities
GROUP BY region;

SELECT region, SUM(population) AS population FROM cities
GROUP BY region
HAVING COUNT(*) >=10;

SELECT name, population FROM cities
WHERE region IN (SELECT uuid FROM regions WHERE area_quantity>=5)
ORDER BY population DESC
LIMIT 10,5;

SELECT cities.name, population, region FROM cities
JOIN regions ON region = uuid
WHERE region IN (SELECT uuid FROM regions WHERE area_quantity<=5)
AND population NOT BETWEEN 150000 AND 500000
ORDER BY population DESC;

SELECT name, population FROM cities
WHERE 150000 <population and population< 500000 AND region IN (SELECT uuid FROM regions 
WHERE area_quantity<5);
