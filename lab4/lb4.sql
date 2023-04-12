SELECT UPPER(name) AS nameup FROM cities
ORDER BY name ASC
LIMIT 5 OFFSET 5;

SELECT name, LENGTH(name) AS namelen FROM cities
WHERE NOT LENGTH(name) BETWEEN 8 AND 10;

SELECT SUM(population) AS populreg FROM cities
WHERE region = 'C' OR region = 'S';

SELECT AVG(population) AS avg FROM cities
WHERE region = 'W';

SELECT COUNT(name) AS amount FROM cities
WHERE region = 'E'
