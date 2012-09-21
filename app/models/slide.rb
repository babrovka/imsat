class Slide < ActiveRecord::Base
  attr_accessible :title, :logo, :note, :link
  
  has_attached_file :logo, :styles => { :medium => "940x339>" }
  
  validates_attachment_size :logo, :less_than => 5.megabytes
  validates_attachment_content_type :logo, :content_type => ['image/jpeg', 'image/png']

end
