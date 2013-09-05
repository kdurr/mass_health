# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.foreach('db/data/mass_chip_data.csv', headers: true) do |row|
  record = TownHealthRecord.where(city_name: row[0]).first
  hash = {}
    hash[:city_name] = row[0]
    hash[:population] = row[1]
    hash[:number_of_children] = row[2]
    hash[:number_of_seniors] = row[3]
    hash[:per_capita_income] = row[4]
    hash[:number_below_poverty] = row[5]
    hash[:percent_below_poverty] = row[6]
    hash[:percent_apc] = row[7]
    hash[:percent_c_sections] = row[8]
    hash[:number_of_infant_deaths] = row[9]
    hash[:infant_mr] = row[10]
    hash[:percent_low_birth_weight] = row[11]
    hash[:percent_multiple_births] = row[12]
    hash[:percent_pf_pnc] = row[13]
    hash[:percent_teen_births] = row[14]

  if record.nil?
    record = TownHealthRecord.new(hash)
  else
    record.attributes = hash
  end

  record.save!

end