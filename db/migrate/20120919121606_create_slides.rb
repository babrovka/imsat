class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :title
      t.string :note
      t.string :link
      t.attachment :logo
      
      t.timestamps
    end
  end
end
