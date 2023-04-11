SELECT name FROM cities
WHERE name LIKE '%ськ';

SELECT name FROM cities
WHERE name LIKE '%донец%';

SELECT name FROM cities
WHERE population > 100000
ORDER BY name;

SELECT name, population, 100*population/40000000 AS percent FROM cities
ORDER BY population DESC
LIMIT 50;

SELECT name, 100*population/40000000 AS percent FROM cities
WHERE 100*population/40000000 > 0.1
ORDER BY percent DESC;
