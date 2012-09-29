class AddSnToAids < ActiveRecord::Migration
  def change
    add_column :aids, :sn, :decimal, precision: 2, scale: 0
  end
end
