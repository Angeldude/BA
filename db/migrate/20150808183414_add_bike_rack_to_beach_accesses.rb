class AddBikeRackToBeachAccesses < ActiveRecord::Migration
  def change
    add_column :beach_accesses, :bike_rack, :string
  end
end
