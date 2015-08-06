class ChangeColumnName < ActiveRecord::Migration
  def change
    change_column :beach_accesses, :bench, :string
    change_column :beach_accesses, :shower, :string
    end
  end
