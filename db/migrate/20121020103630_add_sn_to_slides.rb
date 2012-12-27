class AddSnToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :sn, :decimal, precision: 2, scale: 0

  end
end
