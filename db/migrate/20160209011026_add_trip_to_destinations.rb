class AddTripToDestinations < ActiveRecord::Migration[5.0]
  def change
    add_reference :destinations, :trip, index: true, foreign_key: true
  end
end
