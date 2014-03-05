class Stand < ActiveRecord::Base
  attr_accessible :content

  has_one :page
end
