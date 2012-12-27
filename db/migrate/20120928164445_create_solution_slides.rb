class CreateSolutionSlides < ActiveRecord::Migration
  def change
    create_table :solution_slides do |t|
      t.string :title
      t.attachment :logo
      t.string :note
      t.string :link

      t.timestamps
    end
  end
end
