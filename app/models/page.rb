class Page < ActiveRecord::Base
  attr_accessible :slug, :seo_id, :content, :seo_attributes, 
                  :position, :name,
                  :size_prices_attributes, 
                  :gallery_tops_attributes, :gallery_bots_attributes

  belongs_to :seo
  has_many :size_prices
  has_many :gallery_tops
  has_many :gallery_bots
  acts_as_list

  accepts_nested_attributes_for :seo, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :size_prices, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :gallery_tops, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :gallery_bots, :allow_destroy => true, :reject_if => :all_blank

  validates :slug, presence: true, uniqueness: true
  validates :name, presence: true
  validates :content, html: true

  extend FriendlyId
  friendly_id :slug

  default_scope order('position')
  scope :visible, -> { where(hidden: false) }
  scope :invisible, -> { where(hidden: true) }
  scope :without, (lambda do |field, values|
    raise "Unknown field :#{field} in Page model" unless field.to_s.in? attribute_names
    values = [values] unless values.is_a? Array
    where("#{field} NOT IN (?)", values)
  end)

end
