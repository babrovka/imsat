class Aid < ActiveRecord::Base  
	scope :published, -> { where published: true }
end