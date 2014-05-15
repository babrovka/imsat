class AddPublished < ActiveRecord::Migration
  def change
    add_column :products, :published, :boolean, :default => false
    add_column :solutions, :published, :boolean, :default => false
    add_column :aids, :published, :boolean, :default => false
  end
end
