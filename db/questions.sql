-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT city_name FROM town_health_records ORDER BY number_of_seniors DESC LIMIT 3 OFFSET 1
-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT city_name FROM town_health_records ORDER BY number_of_children DESC LIMIT 3 OFFSET 1
-- What 5 towns have the lowest per capita income?
SELECT city_name FROM town_health_records ORDER BY per_capita_income LIMIT 5
-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT city_name FROM town_health_records WHERE city_name NOT IN ("Boston", "Becket", "Beverly") ORDER BY percent_teen_births DESC LIMIT 1
-- Omitting Boston, what town has the highest number of infant mortalities?
