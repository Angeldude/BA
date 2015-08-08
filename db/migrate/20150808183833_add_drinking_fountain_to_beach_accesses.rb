class AddDrinkingFountainToBeachAccesses < ActiveRecord::Migration
  def change
    add_column :beach_accesses, :drinking_fountain, :string
  end
end
