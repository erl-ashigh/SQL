/*Identify yeaers that are covered by the dataset*/
SELECT DISTINCT year from population_years;

/*Largest population size for Gabon*/
SELECT MAX(population) FROM population_years
WHERE country = 'Gabon';

/*10 Loweset populatation countries in 2005*/
SELECT  country, population FROM population_years
WHERE year = 2005
ORDER BY population 
LIMIT 10;   

/*Distinct countries with a popylation of over 100million in 2010*/
SELECT DISTINCT country, population FROM population_years
WHERE population > 100 AND year = 2010
ORDER BY population DESC;
 
 /* Popuplation difference bewteen 2000 and 2010 in Indonesia */
 /* pop in Indonesia in 2000 -> 214.67*/
SELECT country, population FROM population_years
WHERE country = "Indonesia" AND year = '2000' ;

 /* pop in Indonesia in 2010 => 242.96*/
SELECT country, population FROM population_years
WHERE country = "Indonesia" AND year = '2010' ;

/*diff 2000 and 2010 => 28.29*/
SELECT 242.96 - 214.67
