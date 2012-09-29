class CreateAids < ActiveRecord::Migration
  def change
    create_table :aids do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
