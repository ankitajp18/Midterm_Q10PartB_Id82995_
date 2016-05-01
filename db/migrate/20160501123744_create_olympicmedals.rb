class CreateOlympicmedals < ActiveRecord::Migration
  def change
    create_table :olympicmedals do |t|
      t.string :athlete_name
      t.string :event
      t.string :country
      t.string :medal_type
      t.date :eventdate

      t.timestamps null: false
    end
  end
end
