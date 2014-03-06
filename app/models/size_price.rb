class SizePrice < ActiveRecord::Base
  attr_accessible :size, :price, :page_id, :color, :weight
  
  belongs_to :page
end
