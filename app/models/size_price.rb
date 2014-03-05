class SizePrice < ActiveRecord::Base
  attr_accessible :size, :price, :page_id

  belongs_to :page
end
