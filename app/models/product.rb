class Product < ActiveRecord::Base
  attr_accessible :description, :name, :sn, :published, :SN
  
  scope :published, where(:published => true)

end
