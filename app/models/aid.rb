class Aid < ActiveRecord::Base
  attr_accessible :description, :name, :sn, :published
  
  scope :published, where(:published => true)

end
