class AddTripToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :trip, index: true, foreign_key: true
  end
end
