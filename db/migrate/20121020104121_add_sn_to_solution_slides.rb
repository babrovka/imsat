class AddSnToSolutionSlides < ActiveRecord::Migration
  def change
    add_column :solution_slides, :sn, :decimal, precision: 2, scale: 0
  end
end
