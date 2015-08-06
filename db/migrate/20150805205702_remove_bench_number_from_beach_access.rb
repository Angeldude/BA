class RemoveBenchNumberFromBeachAccess < ActiveRecord::Migration
  def change
    remove_column :beach_accesses, :bench_number, :integer
  end
end
