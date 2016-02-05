class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :state
      t.date :arrival_date
      t.date :departure_date

      t.timestamps
    end
  end
end
