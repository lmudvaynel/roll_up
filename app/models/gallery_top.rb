class GalleryTop < ActiveRecord::Base
  attr_accessible :image, :alt, :title

  belongs_to :pages
  
  has_attached_file :image,
										:styles => {
  										:thumb => "300x300>",
  										:original => {
  										:processors => [:watermark],},
  										:medium => "600x600>",
                      :gallery => "187x187#" 
                    }

  validates_attachment_presence :image
  validates_attachment_content_type :image,:content_type => ['image/jpeg', 'image/jpg', 'image/png']
  validates_attachment_size :image,:less_than => 5.megabytes
end
