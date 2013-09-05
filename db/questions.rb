#What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order('number_of_seniors DESC').limit(3).pluck(:city_name)
#What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order('number_of_children DESC').limit(3).pluck(:city_name)
#What 5 towns have the lowest per capita income?
TownHealthRecord.order('per_capita_income').limit(5).pluck(:city_name)
#Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.order('percent_teen_births DESC').where.not(city_name: ["Boston", "Becket", "Beverly"]).limit(1).pluck(:city_name)
#Omitting Boston, what town has the highest number of infant mortalities?
