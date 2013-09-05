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
    hash[:population] = row[1].gsub(/[$,]/,'')
    hash[:number_of_children] = row[2].gsub(/[$,]/,'')
    hash[:number_of_seniors] = row[3].gsub(/[$,]/,'')
    hash[:per_capita_income] = row[4].gsub(/[$,]/,'')
    hash[:number_below_poverty] = row[5].gsub(/[$,]/,'')
    hash[:percent_below_poverty] = row[6].gsub(/[$,]/,'')
    hash[:percent_apc] = row[7].gsub(/[$,]/,'')
    hash[:percent_c_sections] = row[8].gsub(/[$,]/,'')
    hash[:number_of_infant_deaths] = row[9].gsub(/[$,]/,'')
    hash[:infant_mr] = row[10].gsub(/[$,]/,'')
    hash[:percent_low_birth_weight] = row[11].gsub(/[$,]/,'')
    hash[:percent_multiple_births] = row[12].gsub(/[$,]/,'')
    hash[:percent_pf_pnc] = row[13].gsub(/[$,]/,'')
    hash[:percent_teen_births] = row[14].gsub(/[$,]/,'')

  if record.nil?
    record = TownHealthRecord.new(hash)
  else
    record.assign_attributes(hash)
  end

  record.save!

end