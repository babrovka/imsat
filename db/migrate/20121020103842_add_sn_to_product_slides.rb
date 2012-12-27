class AddSnToProductSlides < ActiveRecord::Migration
  def change
    add_column :product_slides, :sn, :decimal, precision: 2, scale: 0
  end
end
