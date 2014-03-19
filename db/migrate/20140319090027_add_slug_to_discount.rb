class AddSlugToDiscount < ActiveRecord::Migration
  def change
  	add_column :discounts, :stand_slug, :string
  end
end
