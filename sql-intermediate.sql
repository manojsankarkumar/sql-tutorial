--COUNT
SELECT COUNT(*)
  FROM tutorial.aapl_historical_stock_price

SELECT COUNT(HIGH) FROM tutorial.aapl_historical_stock_price

SELECT COUNT(date)
  FROM tutorial.aapl_historical_stock_price

SELECT COUNT(date) AS count_of_date
  FROM tutorial.aapl_historical_stock_price

SELECT COUNT(date) AS "Count Of Date"
  FROM tutorial.aapl_historical_stock_price

--SUM
SELECT SUM(volume)
  FROM tutorial.aapl_historical_stock_price

SELECT sum(high)/count(high) as average_opening_price
  FROM tutorial.aapl_historical_stock_price

--MIN/MAX
SELECT MIN(volume) AS min_volume,
       MAX(volume) AS max_volume
  FROM tutorial.aapl_historical_stock_price

SELECT MIN(low)
  FROM tutorial.aapl_historical_stock_price

SELECT MAX(close - open)
  FROM tutorial.aapl_historical_stock_price

--AVG
SELECT AVG(high)
  FROM tutorial.
  
--GROUP BY
SELECT year,
       COUNT(*) AS count
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year

SELECT year,
       month,
       COUNT(*) AS count
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year, month

SELECT  YEAR,
       MONTH,
       SUM(VOLUME) as volume_sum
  FROM tutorial.aapl_historical_stock_price
  GROUP BY year,month
  ORDER BY year,month

SELECT year, AVG(close - open) AS avg_daily_change
  FROM tutorial.aapl_historical_stock_price
GROUP BY 1
ORDER BY 1

SELECT year, month, MIN(low) as low_price, MAX(high) as high_price
  FROM tutorial.aapl_historical_stock_price
GROUP BY 1, 2
ORDER BY 1, 2

--HAVING
SELECT player_name,
       year,
       CASE WHEN year = 'SR' THEN 'yes'
            ELSE NULL END AS is_a_senior
  FROM benn.college_football_players

SELECT player_name,
       year,
       CASE WHEN year = 'SR' THEN 'yes'
            ELSE 'no' END AS is_a_senior
  FROM benn.college_football_players

SELECT player_name,
       state,
       CASE WHEN state = 'CA' THEN 'yes'
            ELSE NULL END AS from_california
  FROM benn.college_football_players
  ORDER BY 3

SELECT player_name,
       weight,
       CASE WHEN weight > 250 THEN 'over 250'
            WHEN weight > 200 THEN '201-250'
            WHEN weight > 175 THEN '176-200'
            ELSE '175 or under' END AS weight_group
  FROM benn.college_football_players

SELECT player_name,
       weight,
       CASE WHEN weight > 250 THEN 'over 250'
            WHEN weight > 200 AND weight <= 250 THEN '201-250'
            WHEN weight > 175 AND weight <= 200 THEN '176-200'
            ELSE '175 or under' END AS weight_group
  FROM benn.college_football_players

SELECT player_name,
       height,
       CASE WHEN height > 74 THEN 'over 74'
            WHEN height > 72 AND height <= 74 THEN '73-74'
            WHEN height > 70 AND height <= 72 THEN '71-72'
            ELSE 'under 70' END AS height_group
  FROM benn.college_football_players