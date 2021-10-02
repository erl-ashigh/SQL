/* Investigate data*/
SELECT * FROM countries
LIMIT 10;

SELECT * FROM population_years
LIMIT 10; 

/* The number of  entries from Africa => 56 entries*/
SELECT COUNT(*)  AS num_Africa FROM countries
WHERE continent = 'Africa';

/* Total populatin of contienent of Oceania in 2005 => 32.664*/
SELECT c.continent, SUM(p.population) AS sum_pop FROM countries c
JOIN population_years p
ON c.id = p.country_id
WHERE c.continent = 'Oceania' AND p.year = 2005;


/* Average population of countires in South America in 2003 => 25.89*/
SELECT c.continent, AVG(p.population) AS avg_pop  FROM countries c
JOIN population_years p
ON c.id = p.country_id
WHERE c.continent = 'South America' AND p.year = '2003';


/* Smallest population in 2007 - Niue: 0.00216*/
SELECT c.name, p.population FROM countries c
JOIN population_years p
ON c.id = p.country_id
WHERE  p.population AND p.year = 2007
GROUP BY p.population
ORDER BY 2
LIMIT 1;


/* Average population of Poland for the dataset period 38.56*/
SELECT c.name, AVG(population)  AS Avg_pop_Poland FROM countries c
JOIN population_years p
ON c.id = p.country_id
WHERE c.name = 'Poland';


/* The number of countreis contain 'The' in the name*/
SELECT COUNT(name)  FROM countries 
WHERE name LIKE '%The%';

/*Total population of each continent in 2010*/
SELECT c.continent, SUM(p.population) AS 'total_pop_2010' FROM countries c
JOIN population_years p
ON c.id = p.country_id
WHERE p.year = 2010
GROUP by 1
ORDER by 2; 

