class Solution < ActiveRecord::Base
  attr_accessible :description, :name, :sn, :published
  
  scope :published, where(:published => true)
  
  define_index do
    indexes name
    indexes description
  end

end
