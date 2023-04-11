SELECT name, region, population FROM cities
WHERE region = 'E' or region = 'W'
ORDER BY population DESC;

SELECT name, region, population FROM cities
WHERE population > 50000 and region IN ('S', 'C', 'N');

SELECT name, region, population FROM cities
WHERE population > 150000 and population < 350000 and region IN ('E', 'W', 'N')
ORDER BY name
LIMIT 20;

SELECT name, region, population FROM cities
WHERE NOT region ='E' AND NOT region ='W'
LIMIT 10 OFFSET 10;

SELECT name FROM cities
WHERE population > 1000000
