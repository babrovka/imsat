class Product < ActiveRecord::Base
  attr_accessible :description, :name, :sn
  
  define_index do
    indexes name
    indexes description
  end
  

end
