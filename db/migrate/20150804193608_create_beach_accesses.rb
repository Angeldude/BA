class CreateBeachAccesses < ActiveRecord::Migration
  def change
    create_table :beach_accesses do |t|
      t.string :image
      t.string :location
      t.integer :unmetered
      t.integer :metered
      t.boolean :shower
      t.boolean :bench
      t.integer :bench_number

      t.timestamps null: false
    end
  end
end
