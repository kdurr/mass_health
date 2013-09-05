class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :city_name
      t.integer :population
      t.integer :number_of_children
      t.integer :number_of_seniors
      t.integer :per_capita_income
      t.integer :number_below_poverty
      t.decimal :percent_below_poverty
      t.decimal :percent_apc
      t.decimal :percent_c_sections
      t.integer :number_of_infant_deaths
      t.decimal :infant_mr
      t.decimal :percent_low_birth_weight
      t.decimal :percent_multiple_births
      t.decimal :percent_pf_pnc
      t.decimal :percent_teen_births
      t.timestamps
    end
  end
end
