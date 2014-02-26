class Order < ActiveRecord::Base
  attr_accessible :name, :phone, :content, :email, :company

  validates :name, presence: true
  validates :phone, presence: true
  validates :content, presence: true
  validates :email, presence: true
end
