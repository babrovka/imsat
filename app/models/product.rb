class Product < ActiveRecord::Base
  attr_accessible :description, :name
  
  searchable do
    text :name, :boost => 5
    text :description
    end
end
