class Solution < ActiveRecord::Base
  attr_accessible :description, :name, :sn
  
  searchable do
    text :name, :boost => 5
    text :description
  end

end
