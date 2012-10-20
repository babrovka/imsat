class AddSnToSupportSlides < ActiveRecord::Migration
  def change
    add_column :support_slides, :sn, :decimal, precision: 2, scale: 0
  end
end
