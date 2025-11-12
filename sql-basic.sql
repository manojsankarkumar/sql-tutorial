--USE OF * 
SELECT * FROM tutorial.us_housing_units;

--LIMIT
SELECT * FROM tutorial.us_housing_units LIMIT 100;

--WHERE
SELECT * FROM tutorial.us_housing_units WHERE month = 1;

--COMPARISON OPERATORS
SELECT * FROM tutorial.us_housing_units WHERE west > 30;

SELECT * FROM tutorial.us_housing_units WHERE month_name != 'January';

SELECT * FROM tutorial.us_housing_units WHERE month_name > 'January';

SELECT * FROM tutorial.us_housing_units WHERE month_name > 'J';

--ARITHMETIC IN SQL
SELECT year,
       month,
       west,
       south,
       west + south AS south_plus_west
  FROM tutorial.us_housing_units;

SELECT year,
       month,
       west,
       south,
       west + south - 4 * year AS nonsense_column
  FROM tutorial.us_housing_units;

SELECT year,
       month,
       west,
       south,
       (west + south)/2 AS south_west_avg
  FROM tutorial.us_housing_units;

--LIKE
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group_name" LIKE 'Snoop%'

SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group_name" ILIKE 'snoop%'

SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE artist ILIKE 'dr_ke'

--SQL IN
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year_rank IN (1, 2, 3)

SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE artist IN ('Taylor Swift', 'Usher', 'Ludacris')

--SQL BETWEEN
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year_rank BETWEEN 5 AND 10

SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year_rank >= 5 AND year_rank <= 10

--IS NULL
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE artist IS NULL

--SQL AND
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2012 AND year_rank <= 10

SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2012
   AND year_rank <= 10
   AND "group_name" ILIKE '%feat%'

--SQL OR
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year_rank = 5 OR artist = 'Gotye'

SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2013
   AND ("group_name" ILIKE '%macklemore%' OR "group_name" ILIKE '%timberlake%')

--SQL NOT
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2013
   AND year_rank NOT BETWEEN 2 AND 3
  
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2013
   AND "group_name" NOT ILIKE '%macklemore%'

--ORDER BY
SELECT *
  FROM tutorial.billboard_top_100_year_end
 ORDER BY artist

SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2013
 ORDER BY year_rank

SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2013
 ORDER BY year_rank DESC