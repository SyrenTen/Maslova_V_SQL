SELECT cities.name, regions.name
FROM cities
INNER JOIN regions ON cities.region = regions.uuid
WHERE cities.population >= 350000;

SELECT cities.name, regions.name
FROM cities
INNER JOIN regions ON cities.region = regions.uuid
WHERE regions.name = 'Nord';

SELECT stations.id,stations.name, stations.branch_id,
           stations.branch_id,
        transition.station_to_id
FROM stations
INNER JOIN transition ON stations.id = transition.station_from_id;
