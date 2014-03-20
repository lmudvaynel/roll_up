class Discount < ActiveRecord::Base
  attr_accessible :image, :position, :stand_slug
  
  has_attached_file :image,
										:styles => {
										  :thumb => "300x300>",
										  :original => {
										    :processors => [:watermark],},
											:medium => "600x600>" }

  validates_attachment_presence :image
  validates_attachment_content_type :image,:content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']
  validates_attachment_size :image,:less_than => 5.megabytes

	acts_as_list
end