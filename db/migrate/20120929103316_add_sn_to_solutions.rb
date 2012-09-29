class AddSnToSolutions < ActiveRecord::Migration
  def change
    add_column :solutions, :sn, :decimal, precision: 2, scale: 0
  end
end
