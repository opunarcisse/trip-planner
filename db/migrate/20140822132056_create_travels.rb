class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.date :date_of_travel
      t.time :time_of_travel
      t.string :travel_from
      t.string :travelling_to
      t.string :travel_code
      t.string :travel_mode
      t.integer :number_of_seats
      t.string :bus_details
      t.text :remarks_and_conditions
      t.string :travel_agency

      t.timestamps
    end
  end
end
