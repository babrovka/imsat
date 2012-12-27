class AddSnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :SN, :decimal, precision: 2, scale: 0
  end
end
