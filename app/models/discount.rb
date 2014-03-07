class Discount < ActiveRecord::Base
  attr_accessible :image
  
  has_attached_file :image,
 					:styles => { :medium => "600x600>", :thumb => "100x100>" }

  validates_attachment_presence :image
  validates_attachment_content_type :image,:content_type => ['image/jpeg', 'image/jpg', 'image/png']
  validates_attachment_size :image,:less_than => 5.megabytes

end
