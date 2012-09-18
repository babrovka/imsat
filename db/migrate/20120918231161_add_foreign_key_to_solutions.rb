class AddForeignKeyToSolutions < ActiveRecord::Migration
  def up
    add_column :solutions, :category_id, :integer
  end
  
  def down
    remove_column :solutions, :category_id, :integer
  end
end
