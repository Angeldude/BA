class AddHandicapParkingSpacesToBeachAccesses < ActiveRecord::Migration
  def change
    add_column :beach_accesses, :handicap_parking_spaces, :string
  end
end
